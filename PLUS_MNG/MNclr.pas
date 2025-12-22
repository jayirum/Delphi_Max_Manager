unit MNclr;

interface

uses
  Windows, Classes, Forms, Controls, StdCtrls, ExtCtrls, SysUtils, ADODB,
  DB, DBAccess, MemDS, Dialogs, ImgList, Graphics,
//  Mask, math, Messages, Variants,
// BusinessSkinForm_1042
  BusinessSkinForm, bsSkinCtrls, bsRibbon, bsMessages,
// Raize, kcRaize
  RzDBNav, RzPanel, RzEdit, RzCmboBx, RzDBCmbo, RzSplit, RzDBEdit, RzLstBox,
  kcRaizeCtrl, VCL_Helper,
// EhLib
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh,
// User Unit
  MBasic, RzRadGrp, Mask, RzButton, RzRadChk;

type
  TfmNclr = class(TfmBasic)
    pnNclr: TRzPanel;
    chUserTp: TbsSkinCheckRadioBox;
    RzPanel4: TRzPanel;
    bsSkinLabel2: TbsSkinLabel;
    bsSkinLabel4: TbsSkinLabel;
    bsSkinLabel8: TbsSkinLabel;
    edUserId: TkcRzDBEdit;
    bsSkinLabel1: TbsSkinLabel;
    edUserNm: TkcRzDBEdit;
    edBsTp: TkcRzDBEdit;
    edStkNm: TkcRzDBEdit;
    edStkCd: TkcRzDBEdit;
    edQty: TkcRzDBEdit;
    bsRibbonDivider1: TbsRibbonDivider;
    bsSkinStdLabel1: TbsSkinStdLabel;
    btnOK: TbsSkinSpeedButton;
    edPrice: TRzEdit;
    edKey: TkcRzDBEdit;
    gdMain: TDBGridEh;
    rbFix: TRzRadioButton;
    rbMkt: TRzRadioButton;
    chCancel: TbsSkinCheckRadioBox;
    ADOSP: TADOStoredProc;
    ADOSPRESULT_MSG: TStringField;
    ADOSPRETURN_VALUE: TStringField;
    ADOQuery1: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure chUserTpClick(Sender: TObject);
    procedure dbMainCalcFields(DataSet: TDataSet);
    procedure gdMainDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure gdMainTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure btnOKClick(Sender: TObject);
    procedure edKeyChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MainTableOpen; override;
    procedure HtsRefresh(sUserID: String);
  end;

var
  fmNclr: TfmNclr;

implementation

uses StdUtils, MMastDB, MDelay, PacketStruct;

{$R *.dfm}

{ TfmSample }

procedure TfmNclr.btnExcelClick(Sender: TObject);
begin
  inherited;
  Export_Excel(gdMain);
end;

procedure TfmNclr.chUserTpClick(Sender: TObject);
begin
  inherited;
  btnFilter.ButtonClick;
end;

procedure TfmNclr.dbMainCalcFields(DataSet: TDataSet);
var
  iCnt : Integer;
begin
  inherited;
  with DataSet do begin
    iCnt := FieldByName('DOT_CNT').AsInteger;
    FieldByName('AVGPRC').AsString  := FormatFloat(FormatDotCnt(iCnt+3), FieldByName('AVG_PRC').AsFloat);
  end;
end;

procedure TfmNclr.edKeyChange(Sender: TObject);
begin
  with dbMain do begin
    if FieldByName('BS_TP').AsString = 'B' then begin
      edBSTP.Font.Color := clRed;
      edQty.Font.Color := clRed;
    end else begin
      edBSTP.Font.Color := clBlue;
      edQty.Font.Color := clBlue;
    end;
  end;

  rbMkt.Checked := True;
  edPrice.Text  := '0';
end;

procedure TfmNclr.FormCreate(Sender: TObject);
begin
  inherited;
  SetADOConn(fmNclr);
end;

procedure TfmNclr.FormShow(Sender: TObject);
begin
  inherited;
//  PartTableOpen(TComponent(gdMain.Columns[3]), CodeFormat('BS_TP'));
//  MainTableOpen;
end;

procedure TfmNclr.gdMainDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  inherited;
  with TDBGridEh(Sender), TDBGridEh(Sender).DataSource.DataSet do begin
    if FieldByName('BS_TP').AsString = 'B' then Canvas.Font.Color := clRed
                                           else Canvas.Font.Color := clBlue;

    if DataCol = 4 then DefaultDrawColumnCell(Rect, DataCol, Column, TGridDrawState(State));
  end;
end;

procedure TfmNclr.gdMainTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  inherited;
  SortData(gdMain, dbMain, ACol);
end;

procedure TfmNclr.MainTableOpen;
var
  sSql, sUserTp, sResult : String;
begin
  try
    Delay_Show();

    if chUserTp.Checked then sUserTp := 'AND B1.USER_GRADE = 2 '
    else sUserTp := '';

    sSql := Format('SELECT A.ACNT_NO+A.STK_CD AS NCLR_KEY, ' +
                          'B.USER_NM, '     +
                          'B.USER_ID, '     +
                          'A.ACNT_NO, '     +
                          'B.ACNT_PWD, '    +
                          'A.STK_CD, '      +
                          '(SELECT STK_NM FROM STK_MST WHERE STK_CD = A.STK_CD) STK_NM, ' +
                          'A.ACNT_TP, '     +
                          'A.ARTC_CD, '     +
                          'A.BS_TP, '       +
                          'CASE WHEN A.BS_TP = %s THEN %s ELSE %s END AS BS_NM, '   +
                          'A.NCLR_POS_QTY, '+
                          'A.AVG_PRC, '     +
                          'A.NCNTR_QTY, '   +
                          'A.TRADE_DT, '    +
                          'A.NCLR_POS_TM, ' +
                          'A.SYS_DT, '      +
                          'A.API_TP, '      +
                          'A.LOSSCUT_AMT, ' +
                          'A.OVERNGT_QTY, ' +
                          'A.OVERNGT_TP, '  +
                          'A.OVERNGT_AMT, ' +
                          '(B.ACNT_AMT + B.CLR_PL - B.CMSN) AS ACNT_AMT, ' +
                          'ISNULL((SELECT OVERNGT_YN FROM OVERNGT WHERE ACNT_NO = A.ACNT_NO AND ARTC_CD = A.ARTC_CD), %s) AS OVERNGT_YN, ' +
                          'COUNT(1) OVER() AS TOTCNT, '+
                          '(SELECT TOP(1) ARTC_NM FROM ARTC_MST WHERE ARTC_CD = A.ARTC_CD) AS ARTC_NM, '+
                          '(SELECT TOP(1) DOT_CNT FROM ARTC_MST WHERE ARTC_CD = A.ARTC_CD) AS DOT_CNT '+
                     'FROM NCLR_POS A, '+
                          '(SELECT A1.* FROM ACNT_MST A1, USER_MST B1 WHERE A1.USER_ID = B1.USER_ID %s ) B '+
                    'WHERE A.ACNT_NO = B.ACNT_NO ', [QuotedStr('S'), QuotedStr('매도'), QuotedStr('매수'),  QuotedStr('N'), sUserTp]);

//    Uni_Open(dbMain, sSql);
    sResult := fnSqlOpen(dbMain, sSql);

    if sResult = '' then pnNclr.Caption := dbMain.FieldByName('TOTCNT').AsString + ' 건'
                    else pnNclr.Caption := '0 건';
  finally
    Delay_Hide;
  end;
end;

procedure TfmNclr.btnOKClick(Sender: TObject);
var
  sStkCD, sUserID, sUserNM, sAcntNo, sMsg, sTp, sOrdTp, sResult, sSQL: String;
begin
  with dbMain do begin
    sUserID := FieldByName('USER_ID').AsString;
    sUserNM := FieldByName('USER_NM').AsString;
    sStkCD  := FieldByName('STK_CD').AsString;
    sAcntNo := FieldByName('ACNT_NO').AsString;

    if (sAcntNo = '') or (sUserID = '') then begin
      bsMsgError('청산할 포지션이 없습니다. 확인후 다시 실행하세요. ');
      Exit;
    end;

    sTp := '';
    sOrdTp := '0';
    if rbMkt.Checked then sTp := '시장가';
    if rbFix.Checked then begin
      sTp := Format('지정가 ( %s )', [edPrice.Text]);
      sOrdTp := '1';
    end;

    sMsg := Format('%s ( %s ) - 종목 ( %s ) %s로 청산하시겠습니까?  ', [sUserNM, sUserID, sStkCD, sTp]);

    if Not bsMsgYesNo(sMsg) then Exit;

    sSQL := Format('PT_MANAGER_CLR %s, %s, %s, %s ', [QuotedStr(sAcntNo), QuotedStr(sStkCD), QuotedStr(sOrdTp), QuotedStr(edPrice.Text)]);

    with ADOQuery1 do begin
      if Active then Active := False;
      ADOQuery1.SQL.Text := sSQL;
          Prepared := True;

      try
        Active := True;
      Except
        on E:Exception do begin
          Active := False;
          Prepared := False;
          Exit;
        end;
      end;

      sResult := FieldByName('RESULT_CODE').Value;

      if sResult = '0000' then begin
        HtsRefresh(sUserID);
        MainTableOpen;
      end;
      bsMsgError(FieldByName('RESULT_MSG').AsString);
    end;
  end;
end;

procedure TfmNclr.HtsRefresh(sUserID: String);
var
  sValue : String;
  NR001  : TNR001;
begin
  with dbMain do begin
    FillChar(NR001, SizeOf(NR001), ' ');

    StrToArr(NumToStr(SizeOf(NR001)),           NR001.GT_HEADER.LENGTH);
    StrToArr('NR001',                           NR001.GT_HEADER.PACKET_CD);
    StrToArr(sUserID,                           NR001.GT_HEADER.USER_ID);
    StrToArr('0',                               NR001.GT_HEADER.ACNT_TP);
    StrToArr('0000',                            NR001.GT_HEADER.ERR_CODE);
    StrToArr(NowMSecTime,                       NR001.GT_HEADER.TM);

    sValue := RecordToStr(NR001, SizeOf(NR001));
    MastDB.iwNotiClient.DataToSend := sValue + _EOL;
  end;
end;

end.
