unit MInOut;

interface

uses
  Windows, Classes, Forms, Controls, StdCtrls, ExtCtrls, SysUtils, ADODB,
  DB, DBAccess, MemDS, Mask, Dialogs, ImgList, Graphics,
//  Messages, Variants,
// BusinessSkinForm_1042
  BusinessSkinForm, bsSkinCtrls, bsRibbon,
// Raize, kcRaize
  RzPanel, RzEdit, bsMessages, RzCmboBx, RzDBCmbo, RzSplit, RzDBNav, RzDBEdit,
  RzLstBox, kcRaizeCtrl, VCL_Helper,
// EhLib
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh,
// User Unit
  MBasic, DBClient;

type
  TfmInOut = class(TfmBasic)
    RzPanel6: TRzPanel;
    rgType: TbsSkinRadioGroup;
    gdMain: TDBGridEh;
    RzPanel1: TRzPanel;
    RzPanel8: TRzPanel;
    bsSkinLabel45: TbsSkinLabel;
    RzPanel2: TRzPanel;
    cbCheckAll: TbsSkinCheckRadioBox;
    MoMsg: TRzMemo;
    btnOK: TbsSkinSpeedButton;
    btnNo: TbsSkinSpeedButton;
    btnAllOK: TbsSkinSpeedButton;
    btnAllNo: TbsSkinSpeedButton;
    cbMsg: TkcRzComboBox;
    bsSkinLabel1: TbsSkinLabel;
    edAmt: TRzEdit;
    edRqstAmt: TkcRzDBEdit;
    bsSkinLabel2: TbsSkinLabel;
    ed: TkcRzDBEdit;
    edUserNm: TkcRzDBEdit;
    bsRibbonDivider1: TbsRibbonDivider;
    bsSkinLabel3: TbsSkinLabel;
    edAcnt: TkcRzDBEdit;
    edAcntUserNm: TkcRzDBEdit;
    bsSkinLabel5: TbsSkinLabel;
    edOfficeNm: TkcRzDBEdit;
    bsSkinLabel6: TbsSkinLabel;
    btnPl: TbsSkinSpeedButton;
    edUser: TRzEdit;
    RzEdit1: TRzEdit;
    ADOSP: TADOStoredProc;
    cdsMain: TClientDataSet;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rgTypeClick(Sender: TObject);
    procedure edRqstAmtChange(Sender: TObject);
    procedure edAmtEnter(Sender: TObject);
    procedure edAmtExit(Sender: TObject);
    procedure edAmtKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edFindKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbMsgChange(Sender: TObject);
    procedure cbCheckAllClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnAllOKClick(Sender: TObject);
    procedure btnNoClick(Sender: TObject);
    procedure btnAllNoClick(Sender: TObject);
    procedure gdMainDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure gdMainTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure cdsMainAfterScroll(DataSet: TDataSet);
    procedure gdMainTitleClick(Column: TColumnEh);
    procedure cdsMainAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    function InOutProcCall(sRsltTp : String; sRebuffMsg : String = ''): Integer;
    procedure InOutProcAll(sRsltTp : String; sRebuffMsg : String = '');
    procedure SingleInOutProc(sRsltTp : String; sRebuffMsg : String = '');
  public
    { Public declarations }
    procedure MainTableOpen; override;
    procedure CheckAll(TF: boolean);
    procedure InOutSendNM001(sMsg : String);
  end;

var
  fmInOut: TfmInOut;

implementation

uses StdUtils, PacketStruct, MMastDB, MDelay;

{$R *.dfm}

{ TfmSample }
const
  _Approve  = '1';
  _Rebuff   = '2';

var
  _PageOpenTF : boolean=False;
  _CurrPage : integer = 0;
  _TotCnt : integer = 0;

procedure TfmInOut.btnOKClick(Sender: TObject);
begin
  inherited;
  if cdsMain.FieldByName('USER_ID').AsString = '' then Exit;

  SingleInOutProc(_Approve);
end;

procedure TfmInOut.btnAllNoClick(Sender: TObject);
begin
  inherited;
  if gdMain.SelectedRows.Count = 0 then Exit;
  //if dbMain.FieldByName('CHECK_TF').AsInteger = 0 then Exit;

  if bsMsgYesNo('선택된 모든 입출금자료가 일괄 거부처리됩니다. 일괄거부 하시겠습니까?', '일괄거부') then begin
    InOutProcAll(_Rebuff, MoMsg.Text);
  end;
end;

procedure TfmInOut.btnAllOKClick(Sender: TObject);
begin
  inherited;
  if gdMain.SelectedRows.Count = 0 then Exit;
  //if dbMain.FieldByName('CHECK_TF').AsInteger = 0 then Exit;

  if bsMsgYesNo('선택된 모든 입출금자료가 일괄 승인처리됩니다. 일괄승인 하시겠습니까?', '일괄승인') then begin
    InOutProcAll(_Approve);
  end;
end;

procedure TfmInOut.btnFilterClick(Sender: TObject);
begin
  _sMainWhere := '';
  rgType.ItemIndex := 0;

  cbCheckAll.Checked := False;
  
  _CurrPage := 0;
  _TotCnt := 0;
  MainTableOpen;
end;

procedure TfmInOut.btnInsertClick(Sender: TObject);
begin
  inherited;
//  edUserID.SetFocus;
end;

procedure TfmInOut.btnNoClick(Sender: TObject);
var
  sMsg : String;
begin
  inherited;
  if cdsMain.FieldByName('USER_ID').AsString = '' then Exit;

  sMsg := MoMsg.Text;
  SingleInOutProc(_Rebuff, sMsg);
end;

procedure TfmInOut.cbMsgChange(Sender: TObject);
begin
  inherited;
  MoMsg.Text := cbMsg.Text;
end;

procedure TfmInOut.cdsMainAfterOpen(DataSet: TDataSet);
begin
  inherited;
  with DataSet do begin
    TFloatField(FieldByName('RQST_AMT')).DisplayFormat := FORMAT_AMT;
    TFloatField(FieldByName('RSLT_AMT')).DisplayFormat := FORMAT_AMT;
  end;
end;

procedure TfmInOut.cdsMainAfterScroll(DataSet: TDataSet);
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

procedure TfmInOut.rgTypeClick(Sender: TObject);
begin
  inherited;
  if rgType.Tag = 0 then begin
    if rgType.ItemIndex = 0 then
      _sMainWhere := ''
    else
      _sMainWhere := 'IO_TP = ' + QuotedStr(rgType.Values[rgType.ItemIndex]);

    _CurrPage := 0;
    _TotCnt := 0;
    MainTableOpen;
  end;
end;

procedure TfmInOut.cbCheckAllClick(Sender: TObject);
begin
  CheckAll(cbCheckAll.Checked);
end;

procedure TfmInOut.CheckAll(TF: boolean);
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

procedure TfmInOut.edAmtEnter(Sender: TObject);
begin
  inherited;
  TRzEdit(Sender).Text := StrReplace(TRzEdit(Sender).Text, ',', '');
end;

procedure TfmInOut.edAmtExit(Sender: TObject);
begin
  inherited;
   TRzEdit(Sender).Text := FormatFloat(FORMAT_AMT, StrToFloatDef(TRzEdit(Sender).Text, 0));
end;

procedure TfmInOut.edAmtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 13 then btnOK.ButtonClick;
end;

procedure TfmInOut.edFindKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 13 then btnFilter.ButtonClick;
end;

procedure TfmInOut.edRqstAmtChange(Sender: TObject);
begin
  inherited;
  edAmt.Text := FormatFloat(FORMAT_AMT, TextToFloat(edRqstAmt.Text));
end;

procedure TfmInOut.FormCreate(Sender: TObject);
begin
  inherited;
  SetADOConn(fmInOut);
end;

procedure TfmInOut.FormShow(Sender: TObject);
begin
  inherited;
  PartTableOpen(rgType, CodeFormat('IO_TP', 'AND CODE_DISP = ''Y'' ORDER BY CODE_VALUE'), '[전체]', '0');
  PartTableOpen(TComponent(gdMain.Columns[1]), CodeFormat('IO_TP', 'ORDER BY CODE_VALUE'));
  PartTableOpen(TComponent(gdMain.Columns[10]), CodeFormat('ACNT_TP', 'ORDER BY CODE_VALUE'));

  _sMainWhere := '';

  with rgType do begin
    Tag := 1;
    ItemIndex := 0;
    Tag := 0;
  end;
end;

procedure TfmInOut.gdMainDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  inherited;
  with TDBGridEh(Sender), TDBGridEh(Sender).DataSource.DataSet do begin
    if FieldByName('IO_TP').AsString = '1' then
      Canvas.Font.Color := clRed
    else
      Canvas.Font.Color := clBlue;

    if DataCol = 1 then DefaultDrawColumnCell(Rect, DataCol, Column, TGridDrawState(State));
  end;
end;

procedure TfmInOut.gdMainTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  inherited;
  SortData2(gdMain, cdsMain, ACol);
end;

procedure TfmInOut.gdMainTitleClick(Column: TColumnEh);
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

procedure TfmInOut.SingleInOutProc(sRsltTp: String; sRebuffMsg : String = '');
var
  iRslt : Integer;
  sMsg, sIoTp  : String;
begin
  with cdsMain do begin
    sIoTp := FieldByName('IO_TP').AsString;

    if sIoTp = '1' then sMsg := '입금요청';
    if sIoTp = '2' then sMsg := '출금요청';

    if sRsltTp = '1' then begin
      if bsMsgYesNo('[ ' + FieldByName('USER_NM').AsString + ' ]' + '님 ' + '[ ' + FormatFloat(FORMAT_AMT, TextToFloat(edAmt.Text)) + '원 ]' + ' ' + sMsg + '을 승인하시겠습니까?', sMsg) then begin
        Edit;

        iRslt := InOutProcCall(sRsltTp);

        if iRslt = 0 then
          bsMsgInfo('처리 완료!')
        else
          bsMsgInfo('처리 실패!');

        Post;
        MainTableOpen;
      end;
    end;

    if sRsltTp = '2' then begin
      if bsMsgYesNo(FieldByName('USER_NM').AsString + '님 ' + sMsg + '을 거부하시겠습니까?', sMsg) then begin
        Edit;

        iRslt := InOutProcCall(sRsltTp, sRebuffMsg);

        if iRslt = 0 then bsMsgInfo('처리 완료!')
                     else bsMsgInfo('처리 실패!');

        Post;
        MainTableOpen;
      end;
    end;
  end;
end;

procedure TfmInOut.InOutProcAll(sRsltTp: String; sRebuffMsg : String = '');
var
  iCnt, iRlst : Integer;
  i, loc, iTCnt : Integer;
  DS: TDataSet;
  Bookmark: TBookmark;
begin
  iCnt := 0;

  iTCnt := gdMain.SelectedRows.Count;
  if iTCnt = 0 then Exit;

  DS := cdsMain;
  Bookmark := DS.GetBookmark;
  DS.DisableControls;
  try
    for i:=0 to gdMain.SelectedRows.Count-1 do begin
      DS.GoToBookmark(TBookmark(gdMain.SelectedRows[i]));
      //loc := DS.FieldByName('ROW_NUM').AsInteger;
      iRlst := InOutProcCall(sRsltTp, sRebuffMsg);
      if iRlst = 0 then Inc(iCnt);
    end;
  finally
    DS.EnableControls;
  end;
  bsMsgInfo('총 ' + intTostr(iTCnt) + '건' + ' / ' + intTostr(iCnt) + '건 처리완료');
  MainTableOpen;
end;

function TfmInOut.InOutProcCall(sRsltTp : String; sRebuffMsg : String = ''): Integer;
var
//  db : TUniQuery;
//  sSql, sRslt,
  sMsg, sIoTp, sIoNm, sRlstNm : String;
begin
  sIoTp := cdsMain.FieldByName('IO_TP').AsString;

  if sIoTp = '1' then sIoNm := '입금요청';
  if sIoTp = '2' then sIoNm := '출금요청';

  if sRsltTp = '1' then sRlstNm := '승인';
  if sRsltTp = '2' then sRlstNm := '거부';

//  sSql := Format('PT_INOUT_PROC %s,%s,%s,%g,%s,%s',
//                 [QuotedStr(dbMain.FieldByName('USER_ID').AsString)
//                 ,QuotedStr(dbMain.FieldByName('RQST_TM').AsString)
//                 ,QuotedStr(sRsltTp)
//                 ,TextToFloat(edAmt.Text)
//                 ,QuotedStr(_Login_ID)
//                 ,QuotedStr(sRebuffMsg)]);
//
//  try
//    db := TUniQuery.Create(nil);
//    db.Connection := MastDB.UniConnection;
//
//    sRslt := Uni_Open(db, sSql);
//
//    if sRslt <> '' then
//    begin
//      GT_Log(Format('ERROR : [%s][%s]', [sRslt,sSql]), 'E');
//      exit;
//    end;
//  finally
//    FreeAndNil(db);
//  end;

//  with MastDB.ADOSP do begin
  with ADOSP do begin
    if Active then Active := False;

    ProcedureName := 'PT_INOUT_PROC';
    Prepared := True;
    Parameters.ParamByName('I_USER_ID').Value  := cdsMain.FieldByName('USER_ID').AsString;
    Parameters.ParamByName('I_TM').Value       := cdsMain.FieldByName('RQST_TM').AsString;
    Parameters.ParamByName('I_RSLT_TP').Value  := sRsltTp;
    Parameters.ParamByName('I_RSLT_AMT').Value := TextToFloat(edAmt.Text);
    Parameters.ParamByName('I_MNG_ID').Value   := _Login_ID;
    Parameters.ParamByName('I_RJCT_MSG').Value := sRebuffMsg;

{    PrepareSQL;
    ParamByName('I_USER_ID').AsString  := dbMain.FieldByName('USER_ID').AsString;
    ParamByName('I_TM').AsString       := dbMain.FieldByName('RQST_TM').AsString;
    ParamByName('I_RSLT_TP').AsString  := sRsltTp;
    ParamByName('I_RSLT_AMT').AsFloat  := TextToFloat(edAmt.Text);
    ParamByName('I_MNG_ID').AsString   := _Login_ID;
    ParamByName('I_RJCT_MSG').AsString := sRebuffMsg;}

    try
      ExecProc; // Output 파라미터가 없거나 Output 파라미터만 있는 경우 사용
    Except
      on E:Exception do begin
        Active := False;
        Prepared := False;
        Set_Log(E.Message,'E');
      end;
    end;

    //Result := Parameters.ParamByName('RETURN_VALUE').AsInteger;
    Result := Parameters.ParamByName('RETURN_VALUE').Value;

    if Result = 0 then begin
      sMsg := Format('[ %s ]원 %s이 %s되었습니다.', [FormatFloat(FORMAT_AMT, TextToFloat(edAmt.Text)), sIoNm, sRlstNm]);
      InOutSendNM001(sMsg);
    end;
  end;
end;

procedure TfmInOut.InOutSendNM001(sMsg : String);
var
  NM001  : TNM001;
  sValue : String;
begin
  FillChar(NM001, SizeOf(NM001), ' ');
  StrToArr(NumToStr(SizeOf(NM001)),                            NM001.GT_HEADER.LENGTH);
  StrToArr('NM001',                                            NM001.GT_HEADER.PACKET_CD);
  StrToArr(UpperCase(cdsMain.FieldByName('USER_ID').AsString),  NM001.GT_HEADER.USER_ID);
  StrToArr(cdsMain.FieldByName('ACNT_TP').AsString,             NM001.GT_HEADER.ACNT_TP);
  StrToArr('0000',                                             NM001.GT_HEADER.ERR_CODE);
  StrToArr(NowMSecTime,                                        NM001.GT_HEADER.TM);
  StrToArr(sMsg,                                               NM001.NOTI_MSG);
  StrToArr('Y',                                                NM001.REFRESH_YN);

  sValue := RecordToStr(NM001, SizeOf(NM001));
  MastDB.iwNotiClient.DataToSend := sValue + _EOL;
end;

procedure TfmInOut.MainTableOpen;
var
  iCnt : Integer;
  sSQL : string;
  sSEL, sTB, sOD : string;
begin
  _PageOpenTF := False;
//  OffsetS := (_CurrPage * _PAGE_QTY) + 1;
//  OffsetE := (_CurrPage + 1) * _PAGE_QTY;

  sSEL :=
    'SELECT USER_ID           ' +
    '      ,RQST_TM           ' +
    '      ,IO_TP             ' +
    '      ,ACNT_TP           ' +
    '      ,ACNT_NO           ' +
    '      ,USER_NM           ' +
    '      ,RQST_AMT          ' +
    '      ,RSLT_TP           ' +
    '      ,RSLT_AMT          ' +
    '      ,RSLT_MNG_ID       ' +
    '      ,RQST_TRADE_DT     ' +
    '      ,RQST_SYS_DT       ' +
    '      ,RSLT_TRADE_DT     ' +
    '      ,RSLT_SYS_DT       ' +
    '      ,RSLT_TM           ' +
    '      ,RJCT_MSG          ' +
    '      ,USER_BANK         ' +
    '      ,USER_BANK_ACNT    ' +
    '      ,USER_BANK_ACNT_NM ' +
    '      ,MNG_YN            ';

  sTB := Format(
    '  FROM INOUT A      ' +
    ' WHERE RSLT_TP = %s ',
    [QuotedStr('0') ]);

  if _sMainWhere <> '' then
    sTB := sTB + ' AND ' + _sMainWhere;

  sOD := 'RQST_TRADE_DT, RQST_TM DESC ';

  sSQL := fnPageSQL2(_CurrPage+1, _PAGE_QTY, sSEL, sTB, sOD);

//  sSQL := fnPageSQL(sSQL, OffsetS, OffsetE);
  try
    Delay_Show;
//    fnSqlDataAdd(_CurrPage, dbMain, cdsMain, sSQL);
    fnSqlDataAdd(_CurrPage, dbMain, cdsMain, sSQL);
    _TotCnt := _TotCnt + dbMain.RecordCount;
  finally
    Delay_Hide;
  end;
  _PageOpenTF := True;
end;

end.
