unit MNegoCmsn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsMessages, BusinessSkinForm, StdCtrls, Mask, RzEdit, kcRaizeCtrl,
  bsSkinCtrls, DB, MemDS, DBAccess, Uni, RzCmboBx, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh,
  RzDBEdit, ImgList, ExtCtrls;

type
  TfmNegoCmsn = class(TForm)
    bsBusinessSkinForm: TbsBusinessSkinForm;
    bsSkinMessage: TbsSkinMessage;
    bsSkinLabel25: TbsSkinLabel;
    bsSkinLabel1: TbsSkinLabel;
    bsSkinLabel2: TbsSkinLabel;
    bsSkinLabel3: TbsSkinLabel;
    bsSkinLabel5: TbsSkinLabel;
    edAcntNo: TkcRzEdit;
    edUserId: TkcRzEdit;
    gdMain: TDBGridEh;
    dbMain: TUniQuery;
    dsMain: TDataSource;
    bsSkinLabel4: TbsSkinLabel;
    edUserNm: TkcRzEdit;
    edArtcCd: TkcRzDBEdit;
    edBsTp: TkcRzDBEdit;
    btnDelete: TbsSkinSpeedButton;
    btnSave: TbsSkinSpeedButton;
    imgBtn: TImageList;
    btnClose: TbsSkinSpeedButton;
    edNego: TkcRzEdit;
    edAll_Cmsn: TkcRzEdit;
    bsSkinLabel6: TbsSkinLabel;
    Bevel1: TBevel;
    bsSkinSpeedButton1: TbsSkinSpeedButton;
    bsSkinSpeedButton2: TbsSkinSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure gdMainCellClick(Column: TColumnEh);
    procedure edNegoClick(Sender: TObject);
    procedure edNegoKeyPress(Sender: TObject; var Key: Char);
    procedure edNegoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnDeleteClick(Sender: TObject);
    procedure bsSkinSpeedButton1Click(Sender: TObject);
    procedure bsSkinSpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MainTableOpen;
    function RowCntCheck:Boolean;
  end;

var
  fmNegoCmsn: TfmNegoCmsn;
  function fmNegoCmsn_Run(sUserID, sUserNM, sAcntNo, sAcntTp : String):BOOLEAN;

implementation

uses
  stdUtils, MMastDB, MDelay;
{$R *.dfm}
var
  _UserID, _UserNM, _AcntNO : String;
  _Result : BOOLEAN=FALSE;

function fmNegoCmsn_Run(sUserID, sUserNM, sAcntNo, sAcntTp : String):BOOLEAN;
begin
  fmNegoCmsn := TfmNegoCmsn.Create(Application);

  with fmNegoCmsn do
  try
    _UserID := sUserID;
    _UserNM := sUserNM;
    _AcntNO := sAcntNo;
    ShowModal;
  finally
    RESULT := _Result;
    Free;
  end;

end;

procedure TfmNegoCmsn.bsSkinSpeedButton1Click(Sender: TObject);
var
	sSQL, sUserID, sAcntNo: String;
  dCmsn: Double;
begin
  with dbMain do
  begin
  	sUserID := edUserId.Text;
    sAcntNo := edAcntNo.Text;
    dCmsn   := StrToFloatDef(edAll_Cmsn.Text, 0);

    if bsSkinMessage.MessageDlg2(Format('(%s)원으로 해외선물 일괄수수료 적용하시겠습니까?', [FormatFloat('#,##0', dCmsn)]), '확인', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    begin
     	Exit;
    end;

    sSQL := Format('EXEC PT_NEGO_CMSN_ALL %s, %s, %g',
                    [QuotedStr(sAcntNo),
                     QuotedStr(sUserID),
                     dCmsn
                    ]
                  );
  end;

	with MastDB.dbSQL do
  begin
		SQL.Text := sSQL;
    ExecSQL;
  end;

  MainTableOpen;

  bsSkinMessage.MessageDlg2('적용 완료!!', '확인', mtInformation, [mbOK], 0);
end;

procedure TfmNegoCmsn.bsSkinSpeedButton2Click(Sender: TObject);
var
  sSql, sRslt : String;
begin
  sSql := Format('DELETE FROM NEGO_CMSN WHERE ACNT_NO = %s AND ACNT_TP = %s ',
                 [QuotedStr(_AcntNO),
                  QuotedStr('2')]);

  sRslt := Uni_Open(MastDB.dbSQL, sSql);
  if sRslt = '' then
  begin
    bsSkinMessage.MessageDlg2('해외선물 일괄 미적용 완료!!', '확인', mtInformation, [mbOK], 0);
  end;
  MainTableOpen;
end;

procedure TfmNegoCmsn.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmNegoCmsn.btnDeleteClick(Sender: TObject);
var
  sSql, sRslt : String;
begin
  sSql := Format('DELETE FROM NEGO_CMSN WHERE ACNT_NO = %s AND ARTC_CD = %s AND BS_TP = %s',
                 [QuotedStr(_AcntNO),
                  QuotedStr(dbMain.FieldByName('ARTC_CD').AsString),
                  QuotedStr(dbMain.FieldByName('BS_TP').AsString)]);

  sRslt := Uni_Open(MastDB.dbSQL, sSql);
  if sRslt = '' then
  begin
    bsSkinMessage.MessageDlg2('미적용 완료!!', '확인', mtInformation, [mbOK], 0);
  end;
  MainTableOpen;
end;

procedure TfmNegoCmsn.btnSaveClick(Sender: TObject);
var
  sSql, sRslt, sArtcCD, sAcntTP : String;
begin
  if RowCntCheck then
  begin
  	sArtcCD := Trim(dbMain.FieldByName('ARTC_CD').AsString);
  	sAcntTP := '2';
    if (sArtcCD = '101') or (sArtcCD = '201') or (sArtcCD = '301') then sAcntTP := '1';
    
    sSql := Format(' INSERT INTO NEGO_CMSN  ' +
                   ' (ACNT_NO			          ' +
                   ' ,ARTC_CD               ' +
                   ' ,BS_TP                 ' +
                   ' ,USER_ID               ' +
                   ' ,ACNT_TP               ' +
                   ' ,NEGO_AMTRT)           ' +
                   ' VALUES                 ' +
                   ' (%s,%s,%s,%s,%s,%g)',
                   [QuotedStr(edAcntNo.Text),
                    QuotedStr(dbMain.FieldByName('ARTC_CD').AsString),
                    QuotedStr(dbMain.FieldByName('BS_TP').AsString),
                    QuotedStr(edUserId.Text),
                    QuotedStr(sAcntTP),
                    strToFloat(edNego.Text)]);

    sRslt := Uni_Open(MastDB.dbExec, sSql);
    if sRslt = '' then
    begin
      _Result := TRUE;
      bsSkinMessage.MessageDlg2('등록완료!', '확인', mtInformation, [mbOK], 0);
    end;
  end
  else
  begin
    sSql := Format('UPDATE NEGO_CMSN SET NEGO_AMTRT = %g WHERE ACNT_NO = %s AND ARTC_CD = %s AND BS_TP = %s',
                   [strToFloat(edNego.Text),
                    QuotedStr(edAcntNo.Text),
                    QuotedStr(dbMain.FieldByName('ARTC_CD').AsString),
                    QuotedStr(dbMain.FieldByName('BS_TP').AsString)]);

    sRslt := Uni_Open(MastDB.dbExec, sSql);
    if sRslt = '' then
    begin
      _Result := TRUE;
      bsSkinMessage.MessageDlg2('수정완료!', '확인', mtInformation, [mbOK], 0);
    end;
  end;
  MainTableOpen;
end;

procedure TfmNegoCmsn.edNegoClick(Sender: TObject);
begin
  edNego.Text := '';
end;

procedure TfmNegoCmsn.edNegoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then btnSave.ButtonClick;
end;

procedure TfmNegoCmsn.edNegoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9',#25,#08,#13,'.'] then
  else Key := #0;
end;

procedure TfmNegoCmsn.FormShow(Sender: TObject);
begin
  edAcntNo.Text := _AcntNO;
  edUserId.Text := _UserID;
  edUserNm.Text := _UserNM;

  fmNegoCmsn.Caption := '협의수수료';
  MainTableOpen;

  edNego.Text   := dbMain.FieldByName('NEGO').AsString;

  PartComp_Open(TComponent(gdMain.Columns[0]), '@|ARTC_NM, ARTC_CD|ARTC_MST|');
  PartComp_Open(TComponent(gdMain.Columns[1]), Format('@|CODE_VALUE_NM, CODE_VALUE|CODE_MST|WHERE CODE_ID = %s', [QuotedStr('BS_TP')]));
  PartComp_Open(TComponent(gdMain.Columns[2]), Format('@|CODE_VALUE_NM, CODE_VALUE|CODE_MST|WHERE CODE_ID = %s', [QuotedStr('CMSN_TP')]));
end;

procedure TfmNegoCmsn.gdMainCellClick(Column: TColumnEh);
begin
  edNego.Text   := dbMain.FieldByName('NEGO').AsString;
end;

procedure TfmNegoCmsn.MainTableOpen;
begin
  with dbMain do
  begin
      Close;
      SQL.Text := Format( 'SELECT                                                       ' +
                          '		ARTC_CD,                                                  ' +
                          '   ARTC_NM,                                                  ' +
                          '		BS_TP,                                                    ' +
                          '   CASE WHEN A.BS_TP = %s THEN %s                            ' +
                          '        WHEN A.BS_TP = %s THEN %s                            ' +
                          '        ELSE %s                                              ' +
                          '        END BSTP,                                            ' +
                          '		CMSN_TP,                                                  ' +
                          '		CMSN_AMTRT,                                               ' +
                          '   CASE WHEN (SELECT COUNT(*) AS CNT                         ' +
                          '					 FROM NEGO_CMSN                                     ' +
                          '					 WHERE ACNT_NO = %s                                 ' +
                          '					 AND ARTC_CD = A.ARTC_CD                            ' +
                          '					 AND BS_TP = A.BS_TP) > 0 THEN                      ' +
                          '     				(SELECT REPLACE(STR(B.NEGO_AMTRT,10,5),%s,%s)   ' +
                          '     				 FROM NEGO_CMSN B                               ' +
                          '     				 WHERE B.ARTC_CD = A.ARTC_CD                    ' +
                          '     				 AND B.BS_TP = A.BS_TP                          ' +
                          '     				 AND B.ACNT_NO = %s)  ELSE %s END NEGO          ' +
                          'FROM ARTC_MST A                                              '
                          , [QuotedStr('S'),
                             QuotedStr('매도'),
                             QuotedStr('B'),
                             QuotedStr('매수'),
                             QuotedStr('전체'),
                             QuotedStr(_AcntNO),
                             QuotedStr(' '),
                             QuotedStr(''),
                             QuotedStr(_AcntNO),
                             QuotedStr('미적용')]);

      Open;
  end;
end;

function TfmNegoCmsn.RowCntCheck:Boolean;
var
  sSql, sQuery, sRslt : String;
begin
  sQuery := 'SELECT COUNT(*) AS CNT FROM NEGO_CMSN WHERE ACNT_NO = %s AND ARTC_CD = %s AND BS_TP = %s';
  sSql   := Format(sQuery,[QuotedStr(edAcntNo.Text),QuotedStr(dbMain.FieldByName('ARTC_CD').AsString),QuotedStr(dbMain.FieldByName('BS_TP').AsString)]);

  Uni_Open(MastDB.dbSQL, sSql);

  if MastDB.dbSQL.FieldByName('CNT').AsInteger > 0 then Result := False;
  
end;

end.
