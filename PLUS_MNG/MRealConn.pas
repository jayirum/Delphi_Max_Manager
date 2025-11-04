unit MRealConn;

interface

uses
  Windows, Classes, Forms, Controls, StdCtrls, ExtCtrls, SysUtils, ADODB,
  DB, DBAccess, MemDS, Mask, Dialogs, ImgList, Grids, DBGrids, DBClient, Provider,
//  Messages, Variants, Graphics,
// BusinessSkinForm_1042
  BusinessSkinForm, bsRibbon, bsMessages, bsSkinCtrls,
// Raize, kcRaize
  RzPanel, RzEdit, RzDBEdit, RzCmboBx, RzDBCmbo, RzSplit, RzDBNav, RzLstBox,
  kcRaizeCtrl, VCL_Helper,
// EhLib
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh,
// User Unit
  MBasic;

type
  TfmRealConn = class(TfmBasic)
    pnFilter: TbsSkinPanel;
    bsSkinLabel1: TbsSkinLabel;
    edFind: TRzEdit;
    pnLeft: TRzSizePanel;
    RzPanel5: TRzPanel;
    RzPanel1: TRzPanel;
    RzPanel6: TRzPanel;
    rgType: TbsSkinRadioGroup;
    RzPanel4: TRzPanel;
    pnUser: TRzPanel;
    bsSkinLabel4: TbsSkinLabel;
    gdMain: TDBGridEh;
    lbxPart: TRzListBox;
    RzPanel2: TRzPanel;
    cbCheckAll: TbsSkinCheckRadioBox;
    edUserID: TkcRzDBEdit;
    MoMsg: TRzMemo;
    btnLogOut: TbsSkinSpeedButton;
    bsSkinLabel3: TbsSkinLabel;
    edtitle: TRzEdit;
    btnRefresh: TbsSkinSpeedButton;
    cdsMain: TClientDataSet;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lbxPartClick(Sender: TObject);
    procedure rgTypeClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure edFindKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnExcelClick(Sender: TObject);
    procedure edUserIDChange(Sender: TObject);
    procedure gdMainTitleClick(Column: TColumnEh);
    procedure cbCheckAllClick(Sender: TObject);
    procedure btnLogOutClick(Sender: TObject);
    procedure gdMainTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure btnRefreshClick(Sender: TObject);
    procedure cdsMainAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    procedure LogOutProc(sTitle : String; sMsg : String);
    procedure HtsRefresh;
    function fnCheckSelectedUser: Boolean;
  public
    { Public declarations }
    procedure MainTableOpen; override;
    procedure CheckAll(TF: boolean);
  end;

var
  fmRealConn: TfmRealConn;

implementation

uses StdUtils, MMastDB, MDelay, PacketStruct;

{$R *.dfm}

{ TfmSample }

var
  _sFind : String='';
  _PageOpenTF : boolean=False;
  _CurrPage : integer = 0;
  _TotCnt : integer = 0;


procedure TfmRealConn.btnExcelClick(Sender: TObject);
begin
  inherited;
  Export_Excel(gdMain);
end;

procedure TfmRealConn.btnFilterClick(Sender: TObject);
begin
  if edFind.Text = '' then _sMainWhere := ''
                      else _sMainWhere := StrReplace(_Find_UserNm, '<X>', edFind.Text);

  rgType.ItemIndex := 0;
  edFind.Clear;

  cbCheckAll.Checked := False;

  _CurrPage := 0;
  _TotCnt := 0;
  MainTableOpen;
end;

function TfmRealConn.fnCheckSelectedUser: Boolean;
begin
  Result := False;

  if gdMain.SelectedRows.Count = 0 then begin
    bsMsgError('선택한 회원이 없습니다.');
    Exit;
  end;

  Result := True;
end;

procedure TfmRealConn.btnLogOutClick(Sender: TObject);
var
  i, loc, iTCnt : Integer;
  DS: TDataSet;
  Bookmark: TBookmark;
begin
  if not fnCheckSelectedUser then Exit;

  if bsMsgYesNo('선택한 회원을 강제종료 시키겠습니까?', '강제종료') then begin
    iTCnt := gdMain.SelectedRows.Count;
    if iTCnt = 0 then Exit;

    DS := cdsMain;
    Bookmark := DS.GetBookmark;
    DS.DisableControls;
    try
      for i:=0 to gdMain.SelectedRows.Count-1 do begin
        DS.GoToBookmark(TBookmark(gdMain.SelectedRows[i]));
        //loc := DS.FieldByName('ROW_NUM').AsInteger;
        LogOutProc(edtitle.Text ,MoMsg.Text);
      end;
    finally
      DS.EnableControls;
    end;
      
    bsMsgInfo(' ' + IntToStr(iTCnt) + ' 명 로그아웃 되었습니다.');
    _CurrPage := 0;
    _TotCnt := 0;
    MainTableOpen;
  end;
end;

procedure TfmRealConn.btnRefreshClick(Sender: TObject);
var
  i, loc, iTCnt : Integer;
  DS: TDataSet;
  Bookmark: TBookmark;
begin
  if not fnCheckSelectedUser then Exit;

  if bsMsgYesNo('선택한 회원의 HTS를 갱신하겠습니까?', 'HTS 갱신') then begin
    iTCnt := gdMain.SelectedRows.Count;
    if iTCnt = 0 then Exit;

    DS := cdsMain;
    Bookmark := DS.GetBookmark;
    DS.DisableControls;
    try
      for i:=0 to gdMain.SelectedRows.Count-1 do begin
        DS.GoToBookmark(TBookmark(gdMain.SelectedRows[i]));
        //loc := DS.FieldByName('ROW_NUM').AsInteger;
        HtsRefresh; // 갱신 프로세스
      end;
    finally
      DS.EnableControls;
    end;

    bsMsgInfo(' ' + intTostr(iTCnt) + ' 명 갱신 되었습니다.');
    _CurrPage := 0;
    _TotCnt := 0;
    MainTableOpen;
  end;
end;

procedure TfmRealConn.gdMainTitleClick(Column: TColumnEh);
var
  bBool : boolean;
  iValue: Integer;
begin
  inherited;
  if Column = gdMain.Columns[0] then begin
    cbCheckAll.Checked := not cbCheckAll.Checked;
    CheckAll(cbCheckAll.Checked);
  end;
end;

procedure TfmRealConn.cdsMainAfterScroll(DataSet: TDataSet);
var
  i : integer;
begin
  inherited;
  if DataSet.Eof then begin
    if (_TotCnt = DataSet.RecNo) then begin
      _CurrPage := _CurrPage + 1;
      MainTableOpen;
    end;
  end;
end;

procedure TfmRealConn.cbCheckAllClick(Sender: TObject);
begin
  CheckAll(cbCheckAll.Checked);
end;

procedure TfmRealConn.CheckAll(TF: boolean);
var
  i, iCnt : integer;
  iPos, Bookmark: TBookmark;
  DS: TDataSet;
begin
  DS := cdsMain;// dbMain.DataSource.DataSet;

  if Assigned(DS) and DS.Active then begin
    Bookmark := DS.GetBookmark;
    DS.DisableControls;

    try
      iCnt := DS.RecordCount;
      DS.First;
      for i:=0 to iCnt-1 do begin
        gdMain.SelectedRows.CurrentRowSelected := cbCheckAll.Checked;
        if i <> (iCnt-1) then // 마지막 Row에서 cdsMainAfterScroll 이벤트 발생 안되게 하기위해
          DS.Next;
      end;
    finally
      DS.GotoBookmark(Bookmark);
      DS.FreeBookmark(Bookmark);
      DS.EnableControls;
    end;
  end;
end;

procedure TfmRealConn.edFindKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 13 then btnFilter.ButtonClick;
end;

procedure TfmRealConn.edUserIDChange(Sender: TObject);
begin
  inherited;
  if edUserID.Text = '' then Exit;

  pnUser.Caption := Format('회원명 [%s]', [cdsMain.FieldByName('USER_NM').AsString]);
end;

procedure TfmRealConn.FormCreate(Sender: TObject);
begin
  inherited;
  SetADOConn(fmRealConn);
//  DBGrid1.sele
end;

procedure TfmRealConn.FormShow(Sender: TObject);
begin
//  inherited;
  if _Supervisor then PartTableOpen(rgType, CodeFormat('USER_GRADE', 'AND CODE_VALUE < 9 ORDER BY CODE_VALUE'), '[전체]', '0')
                 else PartTableOpen(rgType, CodeFormat('USER_GRADE', 'AND CODE_VALUE < 7 ORDER BY CODE_VALUE'), '[전체]', '0');

//  PartTableOpen(rgType, CodeFormat('USER_GRADE', 'AND CODE_VALUE < 6 ORDER BY CODE_VALUE'), '[전체]', '0');
  PartTableOpen(lbxPart, '@|SERVER_NM, SERVER_IP|SERVER_MST|ORDER BY SERVER_SEQ', '[전체]', '0');
  PartTableOpen(TComponent(gdMain.Columns[4]), '회원분류');
  PartTableOpen(TComponent(gdMain.Columns[3]), CodeFormat('USER_GRADE', 'ORDER BY CODE_VALUE'));
  PartTableOpen(TComponent(gdMain.Columns[5]), CodeFormat('ACNT_TP'));

  rgType.ItemIndex := 0;
end;

procedure TfmRealConn.gdMainTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  inherited;
  SortData2(gdMain, cdsMain, ACol);
end;

procedure TfmRealConn.lbxPartClick(Sender: TObject);
begin
  inherited;
  if lbxPart.ItemIndex = 0 then _sFind := ''
                           else _sFind := Format(' AND B.SERVER_IP = %s', [QuotedStr(lbxPart.Values[lbxPart.ItemIndex])]);

  _CurrPage := 0;
  _TotCnt := 0;
  MainTableOpen;
end;

procedure TfmRealConn.LogOutProc(sTitle : String; sMsg : String);
var
  sValue, sTmp, sSql : String;
  NM002 : TNM002;
begin
  with cdsMain do begin
    sTmp := StrReplace(sMsg, #13#10, '\n');

    FillChar(NM002, SizeOf(NM002), ' ');
    StrToArr(NumToStr(SizeOf(NM002)),         NM002.GT_HEADER.LENGTH);
    StrToArr('NM002',                         NM002.GT_HEADER.PACKET_CD);
    StrToArr(FieldByName('USER_ID').AsString, NM002.GT_HEADER.USER_ID);
    StrToArr(FieldByName('ACNT_TP').AsString, NM002.GT_HEADER.ACNT_TP);
    StrToArr('0000',                          NM002.GT_HEADER.ERR_CODE);
    StrToArr(NowMSecTime,                     NM002.GT_HEADER.TM);
    StrToArr('99',                            NM002.NOTI_TP);
    StrToArr(sTitle,                          NM002.NOTI_TITEL);
    StrToArr(sTmp,                            NM002.NOTI_DATA);

    sValue := RecordToStr(NM002, SizeOf(NM002));
    MastDB.iwNotiClient.DataToSend := sValue + _EOL;

    sSql := Format(
      'UPDATE ACNT_MST SET CONN_YN = %s WHERE USER_ID = %s AND ACNT_TP = %s',
      [QuotedStr('N'),
       QuotedStr(FieldByName('USER_ID').AsString),
       QuotedStr(FieldByName('ACNT_TP').AsString)]);
    fnSqlOpen(dbPower, sSql);
  end;
end;

procedure TfmRealConn.MainTableOpen;
var
  iCnt : Integer;
  sSQL, sWhere, sGrade : String;
  sSEL, sTB, sOD : string;
begin
  _PageOpenTF := False;
//  OffsetS := (_CurrPage * _PAGE_QTY) + 1;
//  OffsetE := (_CurrPage + 1) * _PAGE_QTY;

  if Not _Supervisor then sGrade := ' AND B.USER_GRADE <> 7 ';

  if _sMainWhere <> '' then sWhere := ' AND ' + _sMainWhere
                       else sWhere := '';
  sSEL :=
    'SELECT A.ACNT_NO     ' +
    '      ,A.ACNT_TP     ' +
    '      ,A.USER_ID     ' +
    '      ,A.USER_NM     ' +
    '      ,A.ACNT_STATE  ' +
    '      ,A.NEGO_DUP_YN ' +
    '      ,A.LOGIN_DT    ' +
    '      ,A.LOGIN_TM    ' +
    '      ,A.LOGIN_IP    ' +
    '      ,A.LOGIN_MAC   ' +
    '      ,B.USER_GRADE  ' +
    '      ,B.PART_CD     ' +
    '      ,B.SERVER_IP   ' +
    '      ,(SELECT MAX(HTS_VER) FROM LOGIN_HIS WHERE USER_ID = A.USER_ID) AS HTS_VER ' ;

  sTB := Format(
    '  FROM (SELECT DISTINCT A1.*, B1.LOGIN_MAC      ' +
    '          FROM ACNT_MST A1, LOGIN_HIS B1        ' +
    '         WHERE B1.LOGIN_DT >= dbo.FP_TRADE_DT() ' +
    '           AND B1.LOGIN_TP = %s ' +
    '           AND B1.APP_TP = %s   ' +
    '           AND LOGIN_MAC <> %s  ' +
    '           AND A1.USER_ID = B1.USER_ID) A, ' +
    '       USER_MST B            ' +
    ' WHERE A.USER_ID = B.USER_ID ' +
    '   AND A.CONN_YN = %s        ' +
    _sFind +
    '%s'+
    sGrade,
    [QuotedStr('I'),
     QuotedStr('C'),
     QuotedStr('RECONNECT'),
     QuotedStr('Y'),
     sWhere] );

  sOD := 'A.USER_ID ';

  sSQL := fnPageSQL2(_CurrPage+1, _PAGE_QTY, sSEL, sTB, sOD);

//  sSQL := fnPageSQL(sSQL, OffsetS, OffsetE);
  try
    Delay_Show;
    fnSqlDataAdd(_CurrPage, dbMain, cdsMain, sSQL);
    _TotCnt := _TotCnt + dbMain.RecordCount;
  finally
    Delay_Hide;
  end;
  _PageOpenTF := True;
end;

procedure TfmRealConn.HtsRefresh;
var
  sValue : String;
  NR001  : TNR001;
begin
  with cdsMain do begin
    FillChar(NR001, SizeOf(NR001), ' ');
    StrToArr(NumToStr(SizeOf(NR001)),         NR001.GT_HEADER.LENGTH);
    StrToArr('NR001',                         NR001.GT_HEADER.PACKET_CD);
    StrToArr(FieldByName('USER_ID').AsString, NR001.GT_HEADER.USER_ID);
    StrToArr(FieldByName('ACNT_TP').AsString, NR001.GT_HEADER.ACNT_TP);
    StrToArr('0000',                          NR001.GT_HEADER.ERR_CODE);
    StrToArr(NowMSecTime,                     NR001.GT_HEADER.TM);

    sValue := RecordToStr(NR001, SizeOf(NR001));
    MastDB.iwNotiClient.DataToSend := sValue + _EOL;
  end;
end;

procedure TfmRealConn.rgTypeClick(Sender: TObject);
begin
  inherited;
//  if dbMain.IsEmpty then Exit;
  if rgType.ItemIndex = 0 then _sFind := ''
                          else _sFind := ' AND B.USER_GRADE = ' + QuotedStr(rgType.Values[rgType.ItemIndex]);

  _CurrPage := 0;
  _TotCnt := 0;
  MainTableOpen;
end;

end.
