unit MNoCntrOrd;

interface

uses
  Windows, Classes, Forms, Controls, StdCtrls, ExtCtrls, SysUtils, ADODB,
  DB, DBAccess, MemDS, Dialogs, ImgList, Graphics,
//  Mask, math, Messages, Variants,
// BusinessSkinForm_1042
  BusinessSkinForm, bsSkinCtrls, bsMessages, bsribbon,
// Raize, kcRaize
  RzPanel, RzDBEdit, RzCmboBx, RzDBCmbo, RzSplit, RzEdit, RzLstBox, RzDBNav,
  kcRaizeCtrl, VCL_Helper,
// EhLib
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh,
// User Unit
  MBasic;

type
  TfmNoCntrOrd = class(TfmBasic)
    gdMain: TDBGridEh;
    pnNoCntrOrd: TRzPanel;
    chUserTp: TbsSkinCheckRadioBox;
    btnOrdCancel: TbsSkinSpeedButton;
    btnOrdCancelAll: TbsSkinSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure chUserTpClick(Sender: TObject);
    procedure dbMainCalcFields(DataSet: TDataSet);
    procedure gdMainDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure gdMainTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure btnOrdCancelClick(Sender: TObject);
    procedure btnOrdCancelAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MainTableOpen; override;
    procedure Send_TC001;
    procedure Send_TC002(sStkCD, sBSTP, sOrdTP, sCondTP: String);
  end;

var
  fmNoCntrOrd: TfmNoCntrOrd;

implementation

uses StdUtils, MMastDB, MDelay, PacketStruct;

{$R *.dfm}

{ TfmSample }

procedure TfmNoCntrOrd.btnOrdCancelAllClick(Sender: TObject);
var
  sUser : String;
	sMsg, sSQL: String;
begin
{  inherited;
  with dbMain do begin
    if RecordCount = 0 then Exit;
    sUser := FieldByName('USER_ID').AsString;
  end;

  sSQL := Format('UPDATE ORD SET CNCL_QTY = ORD_QTY, REMN_QTY = 0 WHERE USER_ID = %s; ', [QuotedStr(sUser)]);
  fnSqlOpen(MastDB.dbExec, sSQL);
}
	with dbMain do
  begin
  	if (Bof) and (Eof) then Exit;

		sMsg := Format('%s ( %s ) - 전종목 주문을 취소하시겠습니까?  ',
                  [FieldByName('USER_NM').AsString,
                   FieldByName('USER_ID').AsString
                   ]);

  	if Not bsMsgYesNo(sMsg) then Exit;

    Send_TC002('@ALL', 'A', '08', '0');
    Sleep(100);
    Send_TC002('@ALL', 'A', '08', '1');

	  Sleep(1000);

    sSQL := Format('UPDATE ORD SET REMN_QTY = 0 WHERE USER_ID = %s AND REMN_QTY > 0 ', [QuotedStr(FieldByName('USER_ID').AsString)]);
    fnSqlOpen(MastDB.dbExec, sSQL);
    //Uni_Open(MastDB.dbSQL, sSql);

	  Sleep(100);
  end;

  btnFilter.ButtonClick;
end;

procedure TfmNoCntrOrd.btnOrdCancelClick(Sender: TObject);
var
  sOrdNo : String;
	sMsg, sSQL: String;
begin
{  inherited;
  with dbMain do begin
    if RecordCount = 0 then Exit;
    sOrdNo := dbMain.FieldByName('ORD_NO').AsString;
  end;

  sSQL := Format('UPDATE ORD SET CNCL_QTY = ORD_QTY, REMN_QTY = 0 WHERE ORD_NO = %s; ', [sOrdNo]);
  fnSqlOpen(MastDB.dbExec, sSQL);
}
	with dbMain do
  begin
  	if (Bof) and (Eof) then Exit;

		sMsg := Format('%s ( %s ) - 종목 ( %s ) 주문번호 ( %d )를 취소하시겠습니까?  ',
                  [FieldByName('USER_NM').AsString,
                   FieldByName('USER_ID').AsString,
                   FieldByName('STK_CD').AsString,
                   FieldByName('ORD_NO').AsInteger
                   ]);

  	if Not bsMsgYesNo(sMsg) then Exit;

    Send_TC001;

	  Sleep(1000);

    sSQL := Format('UPDATE ORD SET REMN_QTY = 0 WHERE ORD_NO = %d', [FieldByName('ORD_NO').AsInteger]);
    fnSqlOpen(MastDB.dbExec, sSql);
//    Uni_Open(MastDB.dbSQL, sSql);

	  Sleep(100);
  end;

  btnFilter.ButtonClick;
end;

procedure TfmNoCntrOrd.btnExcelClick(Sender: TObject);
begin
  inherited;
  Export_Excel(gdMain);
end;

procedure TfmNoCntrOrd.chUserTpClick(Sender: TObject);
begin
  inherited;
  btnFilter.ButtonClick;
end;

procedure TfmNoCntrOrd.dbMainCalcFields(DataSet: TDataSet);
var
  iCnt : Integer;
begin
  inherited;
  with DataSet do begin
    iCnt := FieldByName('DOT_CNT').AsInteger;
    FieldByName('ORDPRC').AsString := FormatFloat(FormatDotCnt(iCnt), FieldByName('ORD_PRC').AsFloat);
  end;
end;

procedure TfmNoCntrOrd.FormCreate(Sender: TObject);
begin
  inherited;
  SetADOConn(fmNoCntrOrd);
end;

procedure TfmNoCntrOrd.FormShow(Sender: TObject);
begin
  inherited;

  PartTableOpen(TComponent(gdMain.Columns[6]), CodeFormat('BS_TP'));
  PartTableOpen(TComponent(gdMain.Columns[4]), CodeFormat('ACNT_TP'));
  PartTableOpen(TComponent(gdMain.Columns[7]), CodeFormat('ORD_TP'));
  PartTableOpen(TComponent(gdMain.Columns[8]), CodeFormat('COND_TP'));
  PartTableOpen(TComponent(gdMain.Columns[9]), CodeFormat('ACPT_TP'));

//  MainTableOpen;
end;

procedure TfmNoCntrOrd.gdMainDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  inherited;
    with TDBGridEh(Sender), TDBGridEh(Sender).DataSource.DataSet do begin
      if FieldByName('BS_TP').AsString = 'B' then Canvas.Font.Color := clRed
                                             else Canvas.Font.Color := clBlue;

      if DataCol = 6 then DefaultDrawColumnCell(Rect, DataCol, Column, TGridDrawState(State));
    end;
end;

procedure TfmNoCntrOrd.gdMainTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  inherited;
  SortData(gdMain, dbMain, ACol);
end;

procedure TfmNoCntrOrd.MainTableOpen;
var
  sSql, sUserTp, sResult : String;
begin
  try
    Delay_Show();

    if chUserTp.Checked then sUserTp := ' AND B.USER_GRADE = 2 '
    else sUserTp := '';

    sSql := Format( 'SELECT  B.USER_NM           AS USER_NM        , '+
                    '        A.ORD_NO            AS ORD_NO         , '+
                    '        A.API_SEQ           AS API_SEQ        , '+
                    '        A.ORG_ORD_NO        AS ORG_ORD_NO     , '+
                    '        A.API_ORD_NO        AS API_ORD_NO     , '+
                    '        A.API_ORG_ORD_NO    AS API_ORG_ORD_NO , '+
                    '        A.ACNT_TP           AS ACNT_TP        , '+
                    '        A.ACNT_NO           AS ACNT_NO        , '+
                    '        A.USER_ID           AS USER_ID        , '+
                    '        A.STK_CD            AS STK_CD         , '+
                    '        A.ARTC_CD           AS ARTC_CD        , '+
                    '        A.BS_TP             AS BS_TP          , '+
                    '        A.ORD_TP            AS ORD_TP         , '+
                    '        A.COND_TP           AS COND_TP        , '+
                    '        A.ACPT_TP           AS ACPT_TP        , '+
                    '        A.ORD_PRC           AS ORD_PRC        , '+
                    '        A.SL_TP             AS SL_TP          , '+
                    '        A.ORD_QTY           AS ORD_QTY        , '+
                    '        A.RJCT_QTY          AS RJCT_QTY       , '+
                    '        A.MDFY_QTY          AS MDFY_QTY       , '+
                    '        A.CNCL_QTY          AS CNCL_QTY       , '+
                    '        A.CNTR_QTY          AS CNTR_QTY       , '+
                    '        A.REMN_QTY          AS REMN_QTY       , '+
                    '        A.API_RJCT_CD       AS API_RJCT_CD    , '+
                    '        A.API_RJCT_MSG      AS API_RJCT_MSG   , '+
                    '        A.TRADE_DT          AS TRADE_DT       , '+
                    '        A.ORD_TM            AS ORD_TM         , '+
                    '        A.CNFM_TM           AS CNFM_TM        , '+
                    '        A.API_TM            AS API_TM         , '+
                    '        A.SYS_DT            AS SYS_DT         , '+
                    '        A.CLIENT_IP         AS CLIENT_IP      , '+
                    '        A.API_TP            AS API_TP         , '+
                    '        A.MNG_ID            AS MNG_ID         , '+
                    '        COUNT(1) OVER()     AS TOTCNT         , '+
                    '        A.USER_ID AS USER_ID, '  +
                    '        (SELECT TOP(1) DOT_CNT FROM ARTC_MST WHERE ARTC_CD = A.ARTC_CD) AS DOT_CNT '+
                    'FROM ORD A,                                     '+
                    '     USER_MST B                                 '+
                    'WHERE A.REMN_QTY > 0                            '+
                    'AND A.ACPT_TP <> %s                             '+
                    'AND A.USER_ID = B.USER_ID %s                    ',
                    [QuotedStr('X'),sUserTp]);
    sResult := fnSqlOpen(dbMain, sSql);

//    if dbMain.RecordCount > 0 then pnNoCntrOrd.Caption := dbMain.FieldByName('TOTCNT').AsString + ' 건'
//                              else pnNoCntrOrd.Caption := '0 건';
    if sResult = '' then pnNoCntrOrd.Caption := dbMain.FieldByName('TOTCNT').AsString + ' 건'
                    else pnNoCntrOrd.Caption := '0 건';
  finally
    Delay_Hide;
  end;
end;

procedure TfmNoCntrOrd.Send_TC001;
var
  TC001: TTC001;
  sData: String;
begin
  FillChar(TC001, SizeOf(TC001), ' ');

  with dbMain do
  begin
    // Header --------------------------------------------------------------------
    StrToArr(NumToStr(SizeOf(TC001)),          TC001.TRHeader.LENGTH);                    // Header + Data Length
    StrToArr('TC001',                          TC001.TRHeader.PACKET_CD);                 // 패킷코드
    StrToArr(FieldByName('USER_ID').AsString,  TC001.TRHeader.USER_ID);                   // 사용자ID
    IntToArr(0,                                TC001.TRHeader.ACNT_TP);                   // 1:국내파생, 2:해외파생, 3:국내현물
    StrToArr('0000',                           TC001.TRHeader.ERR_CODE);                  // 성공:0000
    StrToArr(NowMSecTime,                      TC001.TRHeader.TM);                        // Send Time HHNNSSZZZ

    // Data ----------------------------------------------------------------------
    StrToArr(FieldByName('STK_CD').AsString,   TC001.STK_CD);                              // 종목코드
    StrToArr(FieldByName('ACNT_NO').AsString,  TC001.ACNT_NO);                             // 계좌번호
    StrToArr('1111',                           TC001.ACNT_PWD);                            // 계좌 비밀번호
    StrToArr('',                               TC001.ORD_NO);                              // 주문번호
    StrToArr(FieldByName('BS_TP').AsString,    TC001.BS_TP);                               // 매도매수구분  S:매도 B:매수
    StrToArr('04',                             TC001.ORD_TP);                              // 주문유형 (CODE_MST 참조)
    StrToArr(FieldByName('COND_TP').AsString,  TC001.COND_TP);                             // 0:default, 1:MIT설정 2:MIT발동 3:SL발동
    DblToArr(FieldByName('ORD_PRC').AsFloat,   TC001.ORD_PRC);                             // 주문가격
    IntToArr(FieldByName('ORD_QTY').AsInteger, TC001.ORD_QTY);                             // 주문수량
    DblToArr(0,                                TC001.MIT_PRC);                             // MIT설정가격
    DblToArr(0,                                TC001.SL_PRC);                              // SL설정가격
    StrToArr('',                               TC001.SL_TP);                               // S:손절 P:익절
    IntToArr(FieldByName('ORD_NO').AsInteger,  TC001.ORG_ORD_NO);                          // 원주문번호
    DblToArr(FieldByName('ORD_PRC').AsFloat,   TC001.ORG_ORD_PRC);                         // 원주문금액
    StrToArr(_Login_ID,                        TC001.MNG_ID);                              // CLIENT/LOSSCUT/BATCH/MNG_ID(강제취소/청산)
    StrToArr(_Local_IP,                        TC001.CLIENT_IP);                           // Client IP
    StrToArr('',                               TC001.API_SEQ);                             // 1~199
    StrToArr('',                               TC001.API_ORG_NO);                          // API원주문번호
    IntToArr(0,                                TC001.HOGA_NO);                             // 주문시호가 -1:반대1호가범위 0:1호가사이범위, 1~5:호가 6:5호가이상범위
    StrToArr('N',                              TC001.SAME_HOGA_YN);                        // 동시호가주문여부
    DblToArr(0,                                TC001.NOW_PRC);                             // 주문시 현재가
    IntToArr(0,                                TC001.MIT_TICKS);                           // MIT틱

    sData := RecordToStr(TC001, SizeOf(TC001));
  end;

  MastDB.iwNotiClient.DataToSend := sData + _EOL;
end;

procedure TfmNoCntrOrd.Send_TC002(sStkCD, sBSTP, sOrdTP, sCondTP: String);
var
	TC002: TTC002;
  sData: String;
begin
  FillChar(TC002, SizeOf(TC002), ' ');

  with dbMain do
  begin
    // Header --------------------------------------------------------------------
    StrToArr(NumToStr(SizeOf(TC002)),         TC002.GT_HEADER.LENGTH);                    // Header + Data Length
    StrToArr('TC002',                         TC002.GT_HEADER.PACKET_CD);                 // 패킷코드
    StrToArr(FieldByName('USER_ID').AsString, TC002.GT_HEADER.USER_ID);                   // 사용자ID
    IntToArr(0,                               TC002.GT_HEADER.ACNT_TP);                   // 1:국내파생, 2:해외파생, 3:국내현물
    StrToArr('0000',                          TC002.GT_HEADER.ERR_CODE);                  // 성공:0000
    StrToArr(NowMSecTime,                     TC002.GT_HEADER.TM);                        // Send Time HHNNSSZZZ

    // Data ----------------------------------------------------------------------
    StrToArr(sStkCd,                          TC002.STK_CD);                              // 종목코드
    StrToArr(FieldByName('ACNT_NO').AsString, TC002.ACNT_NO);                             // 계좌번호
    StrToArr('1111',                          TC002.ACNT_PWD);                            // 계좌 비밀번호
    StrToArr(sBSTP,                           TC002.BS_TP);                               // 매도매수구분  A:전체 S:매도 B:매수
    StrToArr(sOrdTP,                          TC002.ORD_TP);                              // 주문유형 (CODE_MST 참조)
    StrToArr(sCondTP,                         TC002.COND_TP);                             // 0:default, 1:MIT설정 2:MIT발동 3:SL발동
    StrToArr(_Login_ID,                       TC002.MNG_ID);                              // CLIENT/LOSSCUT/BATCH/MNG_ID(강제취소/청산)
    StrToArr(_Local_IP,                       TC002.CLIENT_IP);                           // Client IP

	  sData := RecordToStr(TC002, SizeOf(TC002));
	end;

  MastDB.iwNotiClient.DataToSend := sData + _EOL;
end;
end.
