unit MOverNgt_Req;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzLstBox, bsSkinCtrls, VCL_Helper, MBasic, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh,
  RzDBEdit, kcRaizeCtrl, StdCtrls, RzCmboBx, RzDBCmbo, RzSplit, Mask, RzEdit,
  bsMessages, DB, MemDS, DBAccess, Uni, ImgList, BusinessSkinForm, RzDBNav,
  bsribbon, ExtCtrls, RzPanel, math;

type
  TfmOverNgt_Req = class(TfmBasic)
    gdMain: TDBGridEh;
    pnCnt: TRzPanel;
    bsSkinSpeedButton1: TbsSkinSpeedButton;
    btnOK: TbsSkinSpeedButton;
    bsSkinSpeedButton2: TbsSkinSpeedButton;
    dbMainUSER_ID: TStringField;
    dbMainARTC_CODE: TStringField;
    dbMainSTK_CD: TStringField;
    dbMainRQST_TRADE_DT: TStringField;
    dbMainRQST_TM: TStringField;
    dbMainACNT_NO: TStringField;
    dbMainUSER_NM: TStringField;
    dbMainACNT_AMT: TFloatField;
    dbMainLEVERAGE: TIntegerField;
    dbMainACNT_NO_1: TStringField;
    dbMainARTC_CD: TStringField;
    dbMainBS_TP: TStringField;
    dbMainNCLR_POS_QTY: TIntegerField;
    dbMainAVG_PRC: TFloatField;
    dbMainCNTR_PRC: TFloatField;
    dbMainEVA_PL: TFloatField;
    dbMainAVGPRC: TStringField;
    Label1: TLabel;
    procedure btnExcelClick(Sender: TObject);
    procedure gdMainTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure dbMainCalcFields(DataSet: TDataSet);
    procedure gdMainColumns6AdvDrawDataCell(Sender: TCustomDBGridEh; Cell,
      AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
      var Params: TColCellParamsEh; var Processed: Boolean);
    procedure gdMainColumns9AdvDrawDataCell(Sender: TCustomDBGridEh; Cell,
      AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
      var Params: TColCellParamsEh; var Processed: Boolean);
    procedure btnOKClick(Sender: TObject);
    procedure bsSkinSpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MainTableOpen; override;
    procedure Send_NM003(sMsg: String);
  end;

var
  fmOverNgt_Req: TfmOverNgt_Req;

implementation

uses StdUtils, MMastDB, MDelay, PacketStruct;

{$R *.dfm}

{ TfmSample }

procedure TfmOverNgt_Req.bsSkinSpeedButton2Click(Sender: TObject);
var
	sSQL, sMsg, sUserID, sUserNM, sArtcCD: String;
begin
  with dbMain do
  begin
  	sUserID := FieldByName('USER_ID').AsString;
    sUserNM := FieldByName('USER_NM').AsString;
    sArtcCD := FieldByName('ARTC_CODE').AsString;

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
                    [QuotedStr(FieldByName('USER_ID').AsString),
                     QuotedStr(__Trade_DT),
                     QuotedStr('N'),
                     QuotedStr(FieldByName('ACNT_NO').AsString),
                     QuotedStr(sArtcCD),
                     QuotedStr(__Login_ID)
                    ]
                  );

    sMsg := Format('[ %s ]종목 오버나잇 취소되었습니다.', [FieldByName('STK_CD').AsString]);
  end;

	with MastDB.dbSQL do
  begin
		SQL.Text := sSQL;
    ExecSQL;
  end;

  Send_NM003(sMsg);

  MainTableOpen;
end;

procedure TfmOverNgt_Req.btnExcelClick(Sender: TObject);
begin
  inherited;
  Export_Excel(gdMain);
end;

procedure TfmOverNgt_Req.btnOKClick(Sender: TObject);
var
	sSQL, sMsg, sUserID, sUserNM, sArtcCD: String;
begin
  with dbMain do
  begin
  	sUserID := FieldByName('USER_ID').AsString;
    sUserNM := FieldByName('USER_NM').AsString;
    sArtcCD := FieldByName('ARTC_CODE').AsString;

    if sUserID = '' then
    begin
      bsMsgError('회원을 먼저 선택하세요.');
      Exit;
    end;

    if bsMsgYesNo(Format('%s (%s) - %s 오버나잇을 승인하시겠습니까?', [sUserID, sUserNM, sArtcCD])) = False then
    begin
     	Exit;
    end;

    sSQL := Format('EXEC PT_RSLT_OVERNGT %s, %s, %s, %s, %s, %s',
                    [QuotedStr(sUserID),
                     QuotedStr(__Trade_DT),
                     QuotedStr('Y'),
                     QuotedStr(FieldByName('ACNT_NO').AsString),
                     QuotedStr(sArtcCD),
                     QuotedStr(__Login_ID)
                    ]
                  );

	  sMsg := Format('[ %s ]종목 오버나잇 승인되었습니다.', [FieldByName('STK_CD').AsString]);
  end;

	with MastDB.dbSQL do
  begin
		SQL.Text := sSQL;
    ExecSQL;
  end;

  Send_NM003(sMsg);

  MainTableOpen;
end;

procedure TfmOverNgt_Req.dbMainCalcFields(DataSet: TDataSet);
var
  iCnt : Integer;
begin
  inherited;
  with DataSet do
  begin
//    iCnt := FieldByName('DOT_CNT').AsInteger;
//    FieldByName('AVGPRC').AsString   := FormatFloat(FormatDotCnt(iCnt+3), FieldByName('AVG_PRC').AsFloat);
    FieldByName('AVGPRC').AsString  := FormatFloat('###0.###########', FieldByName('AVG_PRC').AsFloat);
  end;
end;

procedure TfmOverNgt_Req.gdMainColumns6AdvDrawDataCell(Sender: TCustomDBGridEh;
  Cell, AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
  var Params: TColCellParamsEh; var Processed: Boolean);
begin
  inherited;
	with TDBGridEh(Sender).DataSource.DataSet do
  begin
  	Sender.Canvas.Font.Color := clBlack;
	  if FieldByName(Column.FieldName).AsString = '매수' then Sender.Canvas.Font.Color := clRed
  	else if FieldByName(Column.FieldName).AsString = '매도' then Sender.Canvas.Font.Color := clBlue;

    Sender.DefaultDrawColumnDataCell(Cell, AreaCell, Column, ARect, Params);
    Processed := True;
  end;
end;

procedure TfmOverNgt_Req.gdMainColumns9AdvDrawDataCell(Sender: TCustomDBGridEh;
  Cell, AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
  var Params: TColCellParamsEh; var Processed: Boolean);
begin
	with TDBGridEh(Sender).DataSource.DataSet do
  begin
  	Sender.Canvas.Font.Color := clBlack;
	  if CompareValue(FieldByName(Column.FieldName).AsFloat, 0) > 0 then Sender.Canvas.Font.Color := clRed
  	else if CompareValue(FieldByName(Column.FieldName).AsFloat, 0) < 0 then Sender.Canvas.Font.Color := clBlue;

    Sender.DefaultDrawColumnDataCell(Cell, AreaCell, Column, ARect, Params);
    Processed := True;
  end;
end;

procedure TfmOverNgt_Req.gdMainTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  inherited;
  with dbMain do
  begin
    if IndexFieldNames = Column.FieldName then IndexFieldNames := Column.FieldName + ' Desc'
    else IndexFieldNames := Column.FieldName
  end;
end;

procedure TfmOverNgt_Req.MainTableOpen;
var
  sSql, sTp : String;
begin
  try
    Delay_Show();

    sSql := Format( 'SELECT A.USER_ID, ' +
                           'A.ARTC_CD AS ARTC_CODE, ' +
                           'A.RQST_TRADE_DT, ' +
                           'A.RQST_TM, ' +
                           '(SELECT TOP 1 STK_CD FROM STK_MST WHERE ARTC_CD = A.ARTC_CD AND STK_USE_YN = %s) AS STK_CD, ' +
                           'A.ACNT_NO, ' +
                           'A.USER_NM, ' +
                           'C.ACNT_AMT + C.CLR_PL - C.CMSN AS ACNT_AMT, ' +
                           'B.ACNT_NO, ' +
                           'B.ARTC_CD, ' +
                           'B.BS_TP, ' +
                           'B.NCLR_POS_QTY, ' +
                           'B.AVG_PRC, ' +
                           'B.CNTR_PRC, ' +
                           'B.EVA_PL / C.LEVERAGE AS EVA_PL, ' +
                           'C.LEVERAGE ' +
                      'FROM OVERNGT_HIS A LEFT OUTER JOIN ' +
                           '(SELECT A1.ACNT_NO, ' +
                                   'A1.ARTC_CD, ' +
                                   'CASE WHEN A1.BS_TP = %s THEN %s ELSE %s END AS BS_TP, ' +
                                   'A1.NCLR_POS_QTY, ' +
                                   'A1.AVG_PRC, ' +
                                   'B1.CNTR_PRC, ' +
                                   'CASE WHEN (A1.ARTC_CD = %s OR A1.ARTC_CD = %s) THEN ' +
                                        'CASE WHEN A1.BS_TP = %s THEN (A1.AVG_PRC - B1.CNTR_PRC) * A1.NCLR_POS_QTY * (C1.TICK_VALUE_LOW / C1.TICK_SIZE_LOW) ' +
                                        'ELSE (B1.CNTR_PRC - A1.AVG_PRC) * A1.NCLR_POS_QTY * (C1.TICK_VALUE_LOW / C1.TICK_SIZE_LOW) END ' +
                                   'ELSE ' +
                                        'CASE WHEN A1.BS_TP = %s THEN (A1.AVG_PRC - B1.CNTR_PRC) * A1.NCLR_POS_QTY * (C1.TICK_VALUE / C1.TICK_SIZE) ' +
                                        'ELSE (B1.CNTR_PRC - A1.AVG_PRC) * A1.NCLR_POS_QTY * (C1.TICK_VALUE / C1.TICK_SIZE) END ' +
                                   'END AS EVA_PL ' +
                              'FROM NCLR_POS A1, CURR_PRC B1, ARTC_MST C1 ' +
                             'WHERE A1.STK_CD = B1.STK_CD ' +
                               'AND (B1.NGT_YN = %s OR ' +
                                    'B1.NGT_YN = (SELECT CASE WHEN MKT_TP >= 3 THEN %s ELSE %s END FROM ARTC_MST WHERE ARTC_CD = %s)) ' +
                               'AND A1.ARTC_CD = C1.ARTC_CD ' +

                           ') B ' +
                          'ON A.ACNT_NO = B.ACNT_NO AND A.ARTC_CD = B.ARTC_CD, ' +
                          'ACNT_MST C ' +
                       'WHERE A.RSLT_TP = %s ' +
                         'AND A.ACNT_NO = C.ACNT_NO ' +
                    'ORDER BY A.USER_ID, A.RQST_TM DESC ',
                    [QuotedStr('Y'),
                     QuotedStr('S'),
                     QuotedStr('매도'),
                     QuotedStr('매수'),
                     QuotedStr('201'),
                     QuotedStr('301'),
                     QuotedStr('S'),
                     QuotedStr('S'),
                     QuotedStr('A'),
                     QuotedStr('Y'),
                     QuotedStr('N'),
                     QuotedStr('101'),
                     QuotedStr('0')
                    ]);

    Uni_Open(dbMain, sSql);

//    PartTableOpen(TComponent(gdMain.Columns[2]), Format('@|CODE_VALUE_NM, CODE_VALUE|CODE_MST|WHERE CODE_ID = %s', [QuotedStr('ACNT_TP')]));

    pnCnt.Caption := FormatFloat('#,##0건', dbMain.RecordCount);

  finally
    Delay_Hide;
  end;
end;

procedure TfmOverNgt_Req.Send_NM003(sMsg: String);
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


