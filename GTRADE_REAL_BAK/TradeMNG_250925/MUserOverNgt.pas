unit MUserOverNgt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzLstBox, bsSkinCtrls, VCL_Helper, MBasic, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh,
  RzDBEdit, kcRaizeCtrl, StdCtrls, RzCmboBx, RzDBCmbo, RzSplit, Mask, RzEdit,
  bsMessages, DB, MemDS, DBAccess, Uni, ImgList, BusinessSkinForm, RzDBNav,
  bsribbon, ExtCtrls, RzPanel, UniDAC_Helper;

type
  TfmUserOverNgt = class(TfmBasic)
    pnLeft: TRzSizePanel;
    RzPanel5: TRzPanel;
    RzPanel6: TRzPanel;
    gdMain: TDBGridEh;
    gdUser: TDBGridEh;
    dsPart: TDataSource;
    edFind: TRzEdit;
    btnFind: TbsSkinSpeedButton;
    dsUser: TDataSource;
    dbUser: TUniQuery;
    edUserID: TkcRzDBEdit;
    dbMainUSER_ID: TStringField;
    dbMainARTC_CD: TStringField;
    dbMainOVERNGT_YN: TStringField;
    dbMainACNT_AMT: TFloatField;
    dbMainUSER_NM: TStringField;
    dbUserUSER_ID: TStringField;
    dbUserUSER_NM: TStringField;
    btnOK: TbsSkinSpeedButton;
    dbMainACNT_NO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure btnFindClick(Sender: TObject);
    procedure edFindKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edUserIDChange(Sender: TObject);
    procedure gdUserTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure gdUserDblClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MainTableOpen(sWhere : String='');
    procedure UserTableOpen(sWhere : String='');
    procedure MainWher(sData : String);

    procedure Send_NM003(sMsg: String);
  end;

var
  fmUserOverNgt: TfmUserOverNgt;

implementation

uses StdUtils, MMastDB, MDelay, MNegoCmsn, PacketStruct;

{$R *.dfm}

{ TfmSample }

procedure TfmUserOverNgt.btnFindClick(Sender: TObject);
var
  sWhere : String;
begin
  inherited;
//  sWhere := Format(' AND A.USER_NM LIKE %s', [QuotedStr('%' + edFind.Text + '%')]);
  sWhere := ' AND ' + StrReplace(Get_INIFile(__Find_FileName, 'FINDSQL', 'USER_A'), '<X>', edFind.Text);

  UserTableOpen(sWhere);

end;

procedure TfmUserOverNgt.btnOKClick(Sender: TObject);
var
	sSQL, sMsg, sUserID, sUserNM, sArtcCD: String;
begin
  with dbMain do
  begin
  	sUserID := FieldByName('USER_ID').AsString;
    sUserNM := FieldByName('USER_NM').AsString;
    sArtcCD := FieldByName('ARTC_CD').AsString;

    if sUserID = '' then
    begin
      bsMsgError('회원을 먼저 선택하세요.');
      Exit;
    end;

    if bsMsgYesNo(Format('%s (%s) - %s 오버나잇을 취소하시겠습니까?', [sUserID, sUserNM, sArtcCD])) = False then
    begin
     	Exit;
    end;

    sSQL := Format('EXEC PT_RSLT_OVERNGT %s, %s, %s, %s, %s, %s',
                    [QuotedStr(sUserID),
                     QuotedStr(__Trade_DT),
                     QuotedStr('N'),
                     QuotedStr(FieldByName('ACNT_NO').AsString),
                     QuotedStr(sArtcCD),
                     QuotedStr(__Login_ID)
                    ]
                  );

    sMsg := Format('[ %s ]종목 오버나잇 취소되었습니다.', [FieldByName('ARTC_CD').AsString]);
  end;

	with MastDB.dbSQL do
  begin
		SQL.Text := sSQL;
    ExecSQL;
  end;

  Send_NM003(sMsg);

  MainTableOpen;
end;

procedure TfmUserOverNgt.btnExcelClick(Sender: TObject);
begin
  inherited;
  Export_Excel(gdMain);
end;

procedure TfmUserOverNgt.gdUserDblClick(Sender: TObject);
begin
  inherited;
  MainTableOpen;
end;

procedure TfmUserOverNgt.gdUserTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  inherited;
  with dbUser do
  begin
    if IndexFieldNames = Column.FieldName then IndexFieldNames := Column.FieldName + ' Desc'
    else IndexFieldNames := Column.FieldName
  end;
end;

procedure TfmUserOverNgt.btnFilterClick(Sender: TObject);
begin
  inherited;
  MainTableOpen;
end;

procedure TfmUserOverNgt.edFindKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 13 then btnFind.ButtonClick;
end;

procedure TfmUserOverNgt.edUserIDChange(Sender: TObject);
begin
  inherited;
//  MainWher(dbUser.FieldByName('USERID').AsString);
end;

procedure TfmUserOverNgt.FormShow(Sender: TObject);
begin
  inherited;

//  MainTableOpen;
//  UserTableOpen;

//  PartTableOpen(TComponent(gdMain.Columns[1]), Format('@|CODE_VALUE_NM, CODE_VALUE|CODE_MST|WHERE CODE_ID = %s', [QuotedStr('ACNT_TP')]));

  end;

procedure TfmUserOverNgt.MainTableOpen(sWhere : String='');
var
  sSql, sQuery : String;
begin
	sSQL := Format('SELECT B.USER_ID, ' +
                        'A.USER_NM, ' +
                        'B.ARTC_CD, ' +
                        'B.OVERNGT_YN, ' +
                        'A.ACNT_NO, ' +
                        'A.ACNT_AMT + A.CLR_PL - A.CMSN AS ACNT_AMT ' +
                   'FROM ACNT_MST A, OVERNGT B ' +
                  'WHERE A.ACNT_NO = B.ACNT_NO ' +
                    'AND B.ARTC_CD <> %s ' +
                    'AND A.USER_ID = %s ', [QuotedStr(''),
                                            QuotedStr(dbUser.FieldByName('USER_ID').AsString)]);



  try
    Delay_Show();
    Uni_Open(dbMain, sSql);
  finally
    Delay_Hide;
  end;
end;

procedure TfmUserOverNgt.MainWher(sData : String);
var
  sSql : String;
begin
  inherited;
  sSql := Format(' AND A.USER_ID = %s',[QuotedStr(sData)]);
  MainTableOpen(sSql);

end;

procedure TfmUserOverNgt.UserTableOpen(sWhere : String='');
var
  sSql : String;
begin
	sSQL := 'SELECT A.USER_ID, ' +
                 'A.USER_NM ' +
            'FROM ACNT_MST A, OVERNGT B ' +
           'WHERE A.ACNT_NO = B.ACNT_NO ' +
                  sWhere +
       ' GROUP BY A.USER_ID, A.USER_NM ';

  try
    Delay_Show();
    Uni_Open(dbUser, sSql);
  finally
    Delay_Hide;
  end;
end;

procedure TfmUserOverNgt.Send_NM003(sMsg: String);
var
  NM003  : TNM003;
  sValue : String;
begin
  FillChar(NM003, SizeOf(NM003), ' ');
  StrToArr(NumToStr(SizeOf(NM003)),                            NM003.GT_HEADER.LENGTH);
  StrToArr('NM003',                                            NM003.GT_HEADER.PACKET_CD);
  StrToArr(UpperCase(dbMain.FieldByName('USER_ID').AsString),  NM003.GT_HEADER.USER_ID);
  StrToArr('0',                                                NM003.GT_HEADER.ACNT_TP);
  StrToArr('0000',                                             NM003.GT_HEADER.ERR_CODE);
  StrToArr(NowMSecTime,                                        NM003.GT_HEADER.TM);
  StrToArr(sMsg,                                               NM003.NOTI_MSG);
  StrToArr('N',                                                NM003.REFRESH_YN);

  sValue := RecordToStr(NM003, SizeOf(NM003));
  MastDB.iwNotiClient.DataToSend := sValue + __EOL;
end;

end.
