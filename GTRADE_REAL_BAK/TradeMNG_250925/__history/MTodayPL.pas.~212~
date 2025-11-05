unit MTodayPL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzLstBox, bsSkinCtrls, VCL_Helper, MBasic, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh,
  RzDBEdit, kcRaizeCtrl, StdCtrls, RzCmboBx, RzDBCmbo, RzSplit, Mask, RzEdit,
  bsMessages, DB, MemDS, DBAccess, Uni, ImgList, BusinessSkinForm, RzDBNav,
  bsribbon, ExtCtrls, RzPanel, Math, UniDAC_Helper, ThdTimer;

type
  TfmTodayPL = class(TfmBasic)
    gdMain: TDBGridEh;
    dbSQL: TUniQuery;
    chOp: TbsSkinCheckBox;
    chURO: TbsSkinCheckBox;
    chCL: TbsSkinCheckBox;
    chGC: TbsSkinCheckBox;
    chNG: TbsSkinCheckBox;
    chES: TbsSkinCheckBox;
    chAD: TbsSkinCheckBox;
    chBP: TbsSkinCheckBox;
    chJY: TbsSkinCheckBox;
    lbTime: TLabel;
    tmAuto: TThreadedTimer;
    Label1: TLabel;
    Label3: TLabel;
    cbUserGrade: TkcRzComboBox;
    cbUserPart: TkcRzComboBox;
    cbAutoTime: TkcRzComboBox;
    chAutoSelect: TbsSkinCheckRadioBox;
    chNQ: TbsSkinCheckBox;
    chYM: TbsSkinCheckBox;
    chSCN: TbsSkinCheckBox;
    pnTradeCnt: TRzPanel;
    chHSI: TbsSkinCheckBox;
    chNightF: TbsSkinCheckBox;
    chDayOp: TbsSkinCheckBox;
    chDayF: TbsSkinCheckBox;
    bsSkinPanel1: TbsSkinPanel;
    chPos_Qty: TbsSkinCheckBox;
    chClr_PL: TbsSkinCheckBox;
    chCmsn: TbsSkinCheckBox;
    chAvg_Prc: TbsSkinCheckBox;
    chEva_PL: TbsSkinCheckBox;
    chNK: TbsSkinCheckBox;
    chDAX: TbsSkinCheckBox;
    chTrade: TbsSkinCheckBox;
    chCD: TbsSkinCheckBox;
    chSI: TbsSkinCheckBox;
    chHG: TbsSkinCheckBox;
    procedure edFindKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnExcelClick(Sender: TObject);
    procedure gdMainTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure FormShow(Sender: TObject);
    procedure chOpClick(Sender: TObject);
    procedure chUROClick(Sender: TObject);
    procedure chCLClick(Sender: TObject);
    procedure chGCClick(Sender: TObject);
    procedure chNGClick(Sender: TObject);
    procedure chESClick(Sender: TObject);
    procedure chADClick(Sender: TObject);
    procedure chBPClick(Sender: TObject);
    procedure chJYClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tmAutoTimer(Sender: TObject);
    procedure chAutoSelectClick(Sender: TObject);
    procedure cbUserGradeChange(Sender: TObject);
    procedure gdMainColumns19AdvDrawDataCell(Sender: TCustomDBGridEh; Cell,
      AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
      var Params: TColCellParamsEh; var Processed: Boolean);
    procedure chNQClick(Sender: TObject);
    procedure chYMClick(Sender: TObject);
    procedure chSCNClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure chHSIClick(Sender: TObject);
    procedure chDayOpClick(Sender: TObject);
    procedure chDayFClick(Sender: TObject);
    procedure chNightFClick(Sender: TObject);
    procedure chPos_QtyClick(Sender: TObject);
    procedure chClr_PLClick(Sender: TObject);
    procedure chCmsnClick(Sender: TObject);
    procedure chEva_PLClick(Sender: TObject);
    procedure chAvg_PrcClick(Sender: TObject);
    procedure dbMainAfterOpen(DataSet: TDataSet);
    procedure chNKClick(Sender: TObject);
    procedure chDAXClick(Sender: TObject);
    procedure chCDClick(Sender: TObject);
    procedure chSIClick(Sender: TObject);
    procedure chHGClick(Sender: TObject);
    procedure gdMainColumns0AdvDrawDataCell(Sender: TCustomDBGridEh; Cell,
      AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
      var Params: TColCellParamsEh; var Processed: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MainTableOpen; override;

    procedure Set_CFG;
    procedure Get_CFG;
  end;

var
  fmTodayPL: TfmTodayPL;

implementation

uses StdUtils, MMastDB, MDelay;

{$R *.dfm}

{ TfmSample }

const
  GD_USER_ID       = 0;
  GD_USER_NM       = 1;
  GD_ACNT_NO       = 2;
  GD_USER_GRADE    = 3;
  GD_LEVERAGE      = 4;
  GD_USER_BLACK_NM = 5;
  GD_POS_QTY_TOTAL = 6;
  GD_CONN_YN       = 7;
  GD_LINEGAP1      = 8;

  GD_CLR_PL_TOTAL  = 9;
  GD_CMSN_TOTAL    = 10;
  GD_EVA_PL_TOTAL  = 11;
  GD_NET_PL        = 12;
  GD_LINEGAP2      = 13;

  GD_BF_ACNT_AMT   = 14;
  GD_ACNT_AMT      = 15;
  GD_LINEGAP3      = 16;
  GD_IN_AMT        = 17;
  GD_OUT_AMT       = 18;
  GD_LINEGAP4      = 19;

  GD_N101_POS_QTY  = 20;
  GD_N101_AVG_PRC  = 21;
  GD_N101_CLR_PL   = 22;
  GD_N101_CMSN     = 23;
  GD_N101_EVA_PL   = 24;

  GD_Y101_POS_QTY  = 25;
  GD_Y101_AVG_PRC  = 26;
  GD_Y101_CLR_PL   = 27;
  GD_Y101_CMSN     = 28;
  GD_Y101_EVA_PL   = 29;

  GD_N201_POS_QTY  = 30;
  GD_N201_AVG_PRC  = 31;
  GD_N201_CLR_PL   = 32;
  GD_N201_CMSN     = 33;
  GD_N201_EVA_PL   = 34;

  GD_Y201_POS_QTY  = 35;
  GD_Y201_AVG_PRC  = 36;
  GD_Y201_CLR_PL   = 37;
  GD_Y201_CMSN     = 38;
  GD_Y201_EVA_PL   = 39;

  GD_URO_POS_QTY   = 40;
  GD_URO_AVG_PRC   = 41;
  GD_URO_CLR_PL    = 42;
  GD_URO_CMSN      = 43;
  GD_URO_EVA_PL    = 44;

  GD_CL_POS_QTY    = 45;
  GD_CL_AVG_PRC    = 46;
  GD_CL_CLR_PL     = 47;
  GD_CL_CMSN       = 48;
  GD_CL_EVA_PL     = 49;

  GD_GC_POS_QTY    = 50;
  GD_GC_AVG_PRC    = 51;
  GD_GC_CLR_PL     = 52;
  GD_GC_CMSN       = 53;
  GD_GC_EVA_PL     = 54;

  GD_NG_POS_QTY    = 55;
  GD_NG_AVG_PRC    = 56;
  GD_NG_CLR_PL     = 57;
  GD_NG_CMSN       = 58;
  GD_NG_EVA_PL     = 59;

  GD_ES_POS_QTY    = 60;
  GD_ES_AVG_PRC    = 61;
  GD_ES_CLR_PL     = 62;
  GD_ES_CMSN       = 63;
  GD_ES_EVA_PL     = 64;

  GD_AD_POS_QTY    = 65;
  GD_AD_AVG_PRC    = 66;
  GD_AD_CLR_PL     = 67;
  GD_AD_CMSN       = 68;
  GD_AD_EVA_PL     = 69;

  GD_BP_POS_QTY    = 70;
  GD_BP_AVG_PRC    = 71;
  GD_BP_CLR_PL     = 72;
  GD_BP_CMSN       = 73;
  GD_BP_EVA_PL     = 74;

  GD_JY_POS_QTY    = 75;
  GD_JY_AVG_PRC    = 76;
  GD_JY_CLR_PL     = 77;
  GD_JY_CMSN       = 78;
  GD_JY_EVA_PL     = 79;

  GD_NQ_POS_QTY    = 80;
  GD_NQ_AVG_PRC    = 81;
  GD_NQ_CLR_PL     = 82;
  GD_NQ_CMSN       = 83;
  GD_NQ_EVA_PL     = 84;

  GD_YM_POS_QTY    = 85;
  GD_YM_AVG_PRC    = 86;
  GD_YM_CLR_PL     = 87;
  GD_YM_CMSN       = 88;
  GD_YM_EVA_PL     = 89;

  GD_SCN_POS_QTY   = 90;
  GD_SCN_AVG_PRC   = 91;
  GD_SCN_CLR_PL    = 92;
  GD_SCN_CMSN      = 93;
  GD_SCN_EVA_PL    = 94;

  GD_HSI_POS_QTY   = 95;
  GD_HSI_AVG_PRC   = 96;
  GD_HSI_CLR_PL    = 97;
  GD_HSI_CMSN      = 98;
  GD_HSI_EVA_PL    = 99;

  GD_NK_POS_QTY    = 100;
  GD_NK_AVG_PRC    = 101;
  GD_NK_CLR_PL     = 102;
  GD_NK_CMSN       = 103;
  GD_NK_EVA_PL     = 104;

  GD_DAX_POS_QTY   = 105;
  GD_DAX_AVG_PRC   = 106;
  GD_DAX_CLR_PL    = 107;
  GD_DAX_CMSN      = 108;
  GD_DAX_EVA_PL    = 109;

  GD_CD_POS_QTY    = 110;
  GD_CD_AVG_PRC    = 111;
  GD_CD_CLR_PL     = 112;
  GD_CD_CMSN       = 113;
  GD_CD_EVA_PL     = 114;

  GD_SI_POS_QTY    = 115;
  GD_SI_AVG_PRC    = 116;
  GD_SI_CLR_PL     = 117;
  GD_SI_CMSN       = 118;
  GD_SI_EVA_PL     = 119;

  GD_HG_POS_QTY    = 120;
  GD_HG_AVG_PRC    = 121;
  GD_HG_CLR_PL     = 122;
  GD_HG_CMSN       = 123;
  GD_HG_EVA_PL     = 124;

var
	_Trade_YN: String='N';

procedure TfmTodayPL.btnExcelClick(Sender: TObject);
begin
  inherited;
  Export_Excel(gdMain);
end;

procedure TfmTodayPL.cbUserGradeChange(Sender: TObject);
begin
  cbUserPart.ItemIndex := 0;
end;

procedure TfmTodayPL.chADClick(Sender: TObject);
begin
  with gdMain do
  begin
  	Columns[GD_AD_POS_QTY].Visible := chAD.Checked and chPos_Qty.Checked;
  	Columns[GD_AD_AVG_PRC].Visible := chAD.Checked and chAvg_Prc.Checked;
  	Columns[GD_AD_CLR_PL].Visible  := chAD.Checked and chClr_PL.Checked;
  	Columns[GD_AD_CMSN].Visible    := chAD.Checked and chCmsn.Checked;
  	Columns[GD_AD_EVA_PL].Visible  := chAD.Checked and chEva_PL.Checked;
  end;
end;

procedure TfmTodayPL.chAutoSelectClick(Sender: TObject);
begin
	if chAutoSelect.Checked then
  begin
  	bsMsgWarning(Format('자동조회를 하시면 데이타 반복적인 조회로 서버에 부하를 줄 수 있습니다..\n\n필요한 경우에만 사용하시길 바랍니다. ( 조회시간 : %s )', [cbAutoTime.Text]));

    tmAuto.Interval := StrToIntDef(cbAutoTime.Value, 30) * 1000;
    tmAuto.Enabled := False;
    tmAuto.Enabled := True;
  end
  else
  	tmAuto.Enabled := False;
end;

procedure TfmTodayPL.chAvg_PrcClick(Sender: TObject);
begin
  with gdMain do
  begin
  	Columns[GD_N101_AVG_PRC].Visible := chDayF.Checked and chAvg_Prc.Checked;
  	Columns[GD_N201_AVG_PRC].Visible := chDayOp.Checked and chAvg_Prc.Checked;
  	Columns[GD_Y101_AVG_PRC].Visible := chNightF.Checked and chAvg_Prc.Checked;
  	Columns[GD_URO_AVG_PRC].Visible := chURO.Checked and chAvg_Prc.Checked;
  	Columns[GD_CL_AVG_PRC].Visible := chCL.Checked and chAvg_Prc.Checked;
  	Columns[GD_GC_AVG_PRC].Visible := chGC.Checked and chAvg_Prc.Checked;
  	Columns[GD_ES_AVG_PRC].Visible := chES.Checked and chAvg_Prc.Checked;
  	Columns[GD_AD_AVG_PRC].Visible := chAD.Checked and chAvg_Prc.Checked;
  	Columns[GD_BP_AVG_PRC].Visible := chBP.Checked and chAvg_Prc.Checked;
  	Columns[GD_JY_AVG_PRC].Visible := chJY.Checked and chAvg_Prc.Checked;
  	Columns[GD_NQ_AVG_PRC].Visible := chNQ.Checked and chAvg_Prc.Checked;
  	Columns[GD_YM_AVG_PRC].Visible := chYM.Checked and chAvg_Prc.Checked;
  	Columns[GD_SCN_AVG_PRC].Visible := chSCN.Checked and chAvg_Prc.Checked;
  	Columns[GD_HSI_AVG_PRC].Visible := chHSI.Checked and chAvg_Prc.Checked;
  	Columns[GD_NK_AVG_PRC].Visible  := chNK.Checked and chAvg_Prc.Checked;
  	Columns[GD_DAX_AVG_PRC].Visible := chDAX.Checked and chAvg_Prc.Checked;

  	Columns[GD_CD_AVG_PRC].Visible := chCD.Checked and chAvg_Prc.Checked;
  	Columns[GD_SI_AVG_PRC].Visible := chSI.Checked and chAvg_Prc.Checked;
  	Columns[GD_HG_AVG_PRC].Visible := chHG.Checked and chAvg_Prc.Checked;
  end;
end;

procedure TfmTodayPL.chBPClick(Sender: TObject);
begin
  with gdMain do
  begin
  	Columns[GD_BP_POS_QTY].Visible := chBP.Checked and chPos_Qty.Checked;
  	Columns[GD_BP_AVG_PRC].Visible := chBP.Checked and chAvg_Prc.Checked;
  	Columns[GD_BP_CLR_PL].Visible  := chBP.Checked and chClr_PL.Checked;
  	Columns[GD_BP_CMSN].Visible    := chBP.Checked and chCmsn.Checked;
  	Columns[GD_BP_EVA_PL].Visible  := chBP.Checked and chEva_PL.Checked;
  end;
end;

procedure TfmTodayPL.chCDClick(Sender: TObject);
begin
  inherited;
  with gdMain do
  begin
  	Columns[GD_CD_POS_QTY].Visible := chCD.Checked and chPos_Qty.Checked;
  	Columns[GD_CD_AVG_PRC].Visible := chCD.Checked and chAvg_Prc.Checked;
  	Columns[GD_CD_CLR_PL].Visible  := chCD.Checked and chClr_PL.Checked;
  	Columns[GD_CD_CMSN].Visible    := chCD.Checked and chCmsn.Checked;
  	Columns[GD_CD_EVA_PL].Visible  := chCD.Checked and chEva_PL.Checked;
  end;
end;

procedure TfmTodayPL.chCLClick(Sender: TObject);
begin
  with gdMain do
  begin
  	Columns[GD_CL_POS_QTY].Visible := chCL.Checked and chPos_Qty.Checked;
  	Columns[GD_CL_AVG_PRC].Visible := chCL.Checked and chAvg_Prc.Checked;
  	Columns[GD_CL_CLR_PL].Visible  := chCL.Checked and chClr_PL.Checked;
  	Columns[GD_CL_CMSN].Visible    := chCL.Checked and chCmsn.Checked;
  	Columns[GD_CL_EVA_PL].Visible  := chCL.Checked and chEva_PL.Checked;
  end;
end;

procedure TfmTodayPL.chClr_PLClick(Sender: TObject);
begin
  with gdMain do
  begin
  	Columns[GD_N101_CLR_PL].Visible  := chDayF.Checked and chClr_PL.Checked;
  	Columns[GD_N201_CLR_PL].Visible  := chDayOp.Checked and chClr_PL.Checked;
  	Columns[GD_Y101_CLR_PL].Visible  := chNightF.Checked and chClr_PL.Checked;
  	Columns[GD_URO_CLR_PL].Visible := chURO.Checked and chClr_PL.Checked;
  	Columns[GD_CL_CLR_PL].Visible  := chCL.Checked and chClr_PL.Checked;
  	Columns[GD_GC_CLR_PL].Visible  := chGC.Checked and chClr_PL.Checked;
  	Columns[GD_ES_CLR_PL].Visible  := chES.Checked and chClr_PL.Checked;
  	Columns[GD_AD_CLR_PL].Visible  := chAD.Checked and chClr_PL.Checked;
  	Columns[GD_BP_CLR_PL].Visible  := chBP.Checked and chClr_PL.Checked;
  	Columns[GD_JY_CLR_PL].Visible  := chJY.Checked and chClr_PL.Checked;
  	Columns[GD_NQ_CLR_PL].Visible  := chNQ.Checked and chClr_PL.Checked;
  	Columns[GD_YM_CLR_PL].Visible  := chYM.Checked and chClr_PL.Checked;
  	Columns[GD_SCN_CLR_PL].Visible := chSCN.Checked and chClr_PL.Checked;
  	Columns[GD_HSI_CLR_PL].Visible := chHSI.Checked and chClr_PL.Checked;
  	Columns[GD_NK_CLR_PL].Visible  := chNK.Checked and chClr_PL.Checked;
  	Columns[GD_DAX_CLR_PL].Visible := chDAX.Checked and chClr_PL.Checked;

  	Columns[GD_CD_CLR_PL].Visible  := chCD.Checked and chClr_PL.Checked;
  	Columns[GD_SI_CLR_PL].Visible  := chSI.Checked and chClr_PL.Checked;
  	Columns[GD_HG_CLR_PL].Visible  := chHG.Checked and chClr_PL.Checked;
  end;
end;

procedure TfmTodayPL.chCmsnClick(Sender: TObject);
begin
  with gdMain do
  begin
  	Columns[GD_N101_CMSN].Visible  := chDayF.Checked and chCmsn.Checked;
  	Columns[GD_N201_CMSN].Visible  := chDayOp.Checked and chCmsn.Checked;
  	Columns[GD_Y101_CMSN].Visible  := chNightF.Checked and chCmsn.Checked;
  	Columns[GD_URO_CMSN].Visible   := chURO.Checked and chCmsn.Checked;
  	Columns[GD_CL_CMSN].Visible    := chCL.Checked and chCmsn.Checked;
  	Columns[GD_GC_CMSN].Visible    := chGC.Checked and chCmsn.Checked;
  	Columns[GD_ES_CMSN].Visible    := chES.Checked and chCmsn.Checked;
  	Columns[GD_AD_CMSN].Visible    := chAD.Checked and chCmsn.Checked;
  	Columns[GD_BP_CMSN].Visible    := chBP.Checked and chCmsn.Checked;
  	Columns[GD_JY_CMSN].Visible    := chJY.Checked and chCmsn.Checked;
  	Columns[GD_NQ_CMSN].Visible    := chNQ.Checked and chCmsn.Checked;
  	Columns[GD_YM_CMSN].Visible    := chYM.Checked and chCmsn.Checked;
  	Columns[GD_SCN_CMSN].Visible   := chSCN.Checked and chCmsn.Checked;
  	Columns[GD_HSI_CMSN].Visible   := chHSI.Checked and chCmsn.Checked;
  	Columns[GD_NK_CMSN].Visible    := chNK.Checked and chCmsn.Checked;
  	Columns[GD_DAX_CMSN].Visible   := chDAX.Checked and chCmsn.Checked;

  	Columns[GD_CD_CMSN].Visible    := chCD.Checked and chCmsn.Checked;
  	Columns[GD_SI_CMSN].Visible    := chSI.Checked and chCmsn.Checked;
  	Columns[GD_HG_CMSN].Visible    := chHG.Checked and chCmsn.Checked;
  end;
end;

procedure TfmTodayPL.chDAXClick(Sender: TObject);
begin
  with gdMain do
  begin
  	Columns[GD_DAX_POS_QTY].Visible := chDAX.Checked and chPos_Qty.Checked;
  	Columns[GD_DAX_AVG_PRC].Visible := chDAX.Checked and chAvg_Prc.Checked;
  	Columns[GD_DAX_CLR_PL].Visible  := chDAX.Checked and chClr_PL.Checked;
  	Columns[GD_DAX_CMSN].Visible    := chDAX.Checked and chCmsn.Checked;
  	Columns[GD_DAX_EVA_PL].Visible  := chDAX.Checked and chEva_PL.Checked;
  end;
end;

procedure TfmTodayPL.chDayFClick(Sender: TObject);
begin
  with gdMain do
  begin
  	Columns[GD_N101_POS_QTY].Visible := chDayF.Checked and chPos_Qty.Checked;
  	Columns[GD_N101_AVG_PRC].Visible := chDayF.Checked and chAvg_Prc.Checked;
  	Columns[GD_N101_CLR_PL].Visible  := chDayF.Checked and chClr_PL.Checked;
  	Columns[GD_N101_CMSN].Visible    := chDayF.Checked and chCmsn.Checked;
  	Columns[GD_N101_EVA_PL].Visible  := chDayF.Checked and chEva_PL.Checked;
  end;
end;

procedure TfmTodayPL.chDayOpClick(Sender: TObject);
begin
  with gdMain do
  begin
  	Columns[GD_N201_POS_QTY].Visible := chDayOp.Checked and chPos_Qty.Checked;
  	Columns[GD_N201_AVG_PRC].Visible := chDayOp.Checked and chAvg_Prc.Checked;
  	Columns[GD_N201_CLR_PL].Visible  := chDayOp.Checked and chClr_PL.Checked;
  	Columns[GD_N201_CMSN].Visible    := chDayOp.Checked and chCmsn.Checked;
  	Columns[GD_N201_EVA_PL].Visible  := chDayOp.Checked and chEva_PL.Checked;
  end;
end;

procedure TfmTodayPL.chESClick(Sender: TObject);
begin
  with gdMain do
  begin
  	Columns[GD_ES_POS_QTY].Visible := chES.Checked and chPos_Qty.Checked;
  	Columns[GD_ES_AVG_PRC].Visible := chES.Checked and chAvg_Prc.Checked;
  	Columns[GD_ES_CLR_PL].Visible  := chES.Checked and chClr_PL.Checked;
  	Columns[GD_ES_CMSN].Visible    := chES.Checked and chCmsn.Checked;
  	Columns[GD_ES_EVA_PL].Visible  := chES.Checked and chEva_PL.Checked;
  end;
end;

procedure TfmTodayPL.chEva_PLClick(Sender: TObject);
begin
  with gdMain do
  begin
  	Columns[GD_N101_EVA_PL].Visible := chDayF.Checked and chEva_PL.Checked;
  	Columns[GD_N201_EVA_PL].Visible := chDayOp.Checked and chEva_PL.Checked;
  	Columns[GD_Y101_EVA_PL].Visible := chNightF.Checked and chEva_PL.Checked;
  	Columns[GD_URO_EVA_PL].Visible := chURO.Checked and chEva_PL.Checked;
  	Columns[GD_CL_EVA_PL].Visible  := chCL.Checked and chEva_PL.Checked;
  	Columns[GD_GC_EVA_PL].Visible  := chGC.Checked and chEva_PL.Checked;
  	Columns[GD_ES_EVA_PL].Visible  := chES.Checked and chEva_PL.Checked;
  	Columns[GD_AD_EVA_PL].Visible  := chAD.Checked and chEva_PL.Checked;
  	Columns[GD_BP_EVA_PL].Visible  := chBP.Checked and chEva_PL.Checked;
  	Columns[GD_JY_EVA_PL].Visible  := chJY.Checked and chEva_PL.Checked;
  	Columns[GD_NQ_EVA_PL].Visible  := chNQ.Checked and chEva_PL.Checked;
  	Columns[GD_YM_EVA_PL].Visible  := chYM.Checked and chEva_PL.Checked;
  	Columns[GD_SCN_EVA_PL].Visible := chSCN.Checked and chEva_PL.Checked;
  	Columns[GD_HSI_EVA_PL].Visible := chHSI.Checked and chEva_PL.Checked;
  	Columns[GD_NK_EVA_PL].Visible  := chNK.Checked and chEva_PL.Checked;
  	Columns[GD_DAX_EVA_PL].Visible := chDAX.Checked and chEva_PL.Checked;

  	Columns[GD_CD_EVA_PL].Visible  := chCD.Checked and chEva_PL.Checked;
  	Columns[GD_SI_EVA_PL].Visible  := chSI.Checked and chEva_PL.Checked;
  	Columns[GD_HG_EVA_PL].Visible  := chHG.Checked and chEva_PL.Checked;
  end;
end;

procedure TfmTodayPL.chGCClick(Sender: TObject);
begin
  with gdMain do
  begin
  	Columns[GD_GC_POS_QTY].Visible := chGC.Checked and chPos_Qty.Checked;
  	Columns[GD_GC_AVG_PRC].Visible := chGC.Checked and chAvg_Prc.Checked;
  	Columns[GD_GC_CLR_PL].Visible  := chGC.Checked and chClr_PL.Checked;
  	Columns[GD_GC_CMSN].Visible    := chGC.Checked and chCmsn.Checked;
  	Columns[GD_GC_EVA_PL].Visible  := chGC.Checked and chEva_PL.Checked;
  end;
end;

procedure TfmTodayPL.chHGClick(Sender: TObject);
begin
  inherited;
  with gdMain do
  begin
  	Columns[GD_HG_POS_QTY].Visible := chHG.Checked and chPos_Qty.Checked;
  	Columns[GD_HG_AVG_PRC].Visible := chHG.Checked and chAvg_Prc.Checked;
  	Columns[GD_HG_CLR_PL].Visible  := chHG.Checked and chClr_PL.Checked;
  	Columns[GD_HG_CMSN].Visible    := chHG.Checked and chCmsn.Checked;
  	Columns[GD_HG_EVA_PL].Visible  := chHG.Checked and chEva_PL.Checked;
  end;
end;

procedure TfmTodayPL.chHSIClick(Sender: TObject);
begin
  with gdMain do
  begin
  	Columns[GD_HSI_POS_QTY].Visible := chHSI.Checked and chPos_Qty.Checked;
  	Columns[GD_HSI_AVG_PRC].Visible := chHSI.Checked and chAvg_Prc.Checked;
  	Columns[GD_HSI_CLR_PL].Visible  := chHSI.Checked and chClr_PL.Checked;
  	Columns[GD_HSI_CMSN].Visible    := chHSI.Checked and chCmsn.Checked;
  	Columns[GD_HSI_EVA_PL].Visible  := chHSI.Checked and chEva_PL.Checked;
  end;
end;

procedure TfmTodayPL.chJYClick(Sender: TObject);
begin
  with gdMain do
  begin
  	Columns[GD_JY_POS_QTY].Visible := chJY.Checked and chPos_Qty.Checked;
  	Columns[GD_JY_AVG_PRC].Visible := chJY.Checked and chAvg_Prc.Checked;
  	Columns[GD_JY_CLR_PL].Visible  := chJY.Checked and chClr_PL.Checked;
  	Columns[GD_JY_CMSN].Visible    := chJY.Checked and chCmsn.Checked;
  	Columns[GD_JY_EVA_PL].Visible  := chJY.Checked and chEva_PL.Checked;
  end;
end;

procedure TfmTodayPL.chNGClick(Sender: TObject);
begin
  with gdMain do
  begin
  	Columns[GD_NG_POS_QTY].Visible := chNG.Checked and chPos_Qty.Checked;
  	Columns[GD_NG_AVG_PRC].Visible := chNG.Checked and chAvg_Prc.Checked;
  	Columns[GD_NG_CLR_PL].Visible  := chNG.Checked and chClr_PL.Checked;
  	Columns[GD_NG_CMSN].Visible    := chNG.Checked and chCmsn.Checked;
  	Columns[GD_NG_EVA_PL].Visible  := chNG.Checked and chEva_PL.Checked;
  end;
end;

procedure TfmTodayPL.chNightFClick(Sender: TObject);
begin
  with gdMain do
  begin
  	Columns[GD_Y101_POS_QTY].Visible := chNightF.Checked and chPos_Qty.Checked;
  	Columns[GD_Y101_AVG_PRC].Visible := chNightF.Checked and chAvg_Prc.Checked;
  	Columns[GD_Y101_CLR_PL].Visible  := chNightF.Checked and chClr_PL.Checked;
  	Columns[GD_Y101_CMSN].Visible    := chNightF.Checked and chCmsn.Checked;
  	Columns[GD_Y101_EVA_PL].Visible  := chNightF.Checked and chEva_PL.Checked;
  end;
end;

procedure TfmTodayPL.chNKClick(Sender: TObject);
begin
  with gdMain do
  begin
  	Columns[GD_NK_POS_QTY].Visible := chNK.Checked and chPos_Qty.Checked;
  	Columns[GD_NK_AVG_PRC].Visible := chNK.Checked and chAvg_Prc.Checked;
  	Columns[GD_NK_CLR_PL].Visible  := chNK.Checked and chClr_PL.Checked;
  	Columns[GD_NK_CMSN].Visible    := chNK.Checked and chCmsn.Checked;
  	Columns[GD_NK_EVA_PL].Visible  := chNK.Checked and chEva_PL.Checked;
  end;
end;

procedure TfmTodayPL.chNQClick(Sender: TObject);
begin
  with gdMain do
  begin
  	Columns[GD_NQ_POS_QTY].Visible := chNQ.Checked and chPos_Qty.Checked;
  	Columns[GD_NQ_AVG_PRC].Visible := chNQ.Checked and chAvg_Prc.Checked;
  	Columns[GD_NQ_CLR_PL].Visible  := chNQ.Checked and chClr_PL.Checked;
  	Columns[GD_NQ_CMSN].Visible    := chNQ.Checked and chCmsn.Checked;
  	Columns[GD_NQ_EVA_PL].Visible  := chNQ.Checked and chEva_PL.Checked;
  end;
end;

procedure TfmTodayPL.chOpClick(Sender: TObject);
begin
  with gdMain do
  begin
  	Columns[GD_Y201_POS_QTY].Visible := chOp.Checked and chPos_Qty.Checked;
  	Columns[GD_Y201_AVG_PRC].Visible := chOp.Checked and chAvg_Prc.Checked;
  	Columns[GD_Y201_CLR_PL].Visible  := chOp.Checked and chClr_PL.Checked;
  	Columns[GD_Y201_CMSN].Visible    := chOp.Checked and chCmsn.Checked;
  	Columns[GD_Y201_EVA_PL].Visible  := chOp.Checked and chEva_PL.Checked;
  end;
end;

procedure TfmTodayPL.chPos_QtyClick(Sender: TObject);
begin
  with gdMain do
  begin
  	Columns[GD_N101_POS_QTY].Visible := chDayF.Checked and chPos_Qty.Checked;
  	Columns[GD_N201_POS_QTY].Visible := chDayOp.Checked and chPos_Qty.Checked;
  	Columns[GD_Y101_POS_QTY].Visible := chNightF.Checked and chPos_Qty.Checked;
  	Columns[GD_URO_POS_QTY].Visible := chURO.Checked and chPos_Qty.Checked;
  	Columns[GD_CL_POS_QTY].Visible := chCL.Checked and chPos_Qty.Checked;
  	Columns[GD_GC_POS_QTY].Visible := chGC.Checked and chPos_Qty.Checked;
  	Columns[GD_ES_POS_QTY].Visible := chES.Checked and chPos_Qty.Checked;
  	Columns[GD_AD_POS_QTY].Visible := chAD.Checked and chPos_Qty.Checked;
  	Columns[GD_BP_POS_QTY].Visible := chBP.Checked and chPos_Qty.Checked;
  	Columns[GD_JY_POS_QTY].Visible := chJY.Checked and chPos_Qty.Checked;
  	Columns[GD_NQ_POS_QTY].Visible := chNQ.Checked and chPos_Qty.Checked;
  	Columns[GD_YM_POS_QTY].Visible := chYM.Checked and chPos_Qty.Checked;
  	Columns[GD_SCN_POS_QTY].Visible := chSCN.Checked and chPos_Qty.Checked;
  	Columns[GD_HSI_POS_QTY].Visible := chHSI.Checked and chPos_Qty.Checked;
  	Columns[GD_NK_POS_QTY].Visible  := chNK.Checked and chPos_Qty.Checked;
  	Columns[GD_DAX_POS_QTY].Visible := chDAX.Checked and chPos_Qty.Checked;

  	Columns[GD_CD_POS_QTY].Visible  := chCD.Checked and chPos_Qty.Checked;
  	Columns[GD_SI_POS_QTY].Visible  := chSI.Checked and chPos_Qty.Checked;
  	Columns[GD_HG_POS_QTY].Visible  := chHG.Checked and chPos_Qty.Checked;
  end;
end;

procedure TfmTodayPL.chSCNClick(Sender: TObject);
begin
  with gdMain do
  begin
  	Columns[GD_SCN_POS_QTY].Visible := chSCN.Checked and chPos_Qty.Checked;
  	Columns[GD_SCN_AVG_PRC].Visible := chSCN.Checked and chAvg_Prc.Checked;
  	Columns[GD_SCN_CLR_PL].Visible  := chSCN.Checked and chClr_PL.Checked;
  	Columns[GD_SCN_CMSN].Visible    := chSCN.Checked and chCmsn.Checked;
  	Columns[GD_SCN_EVA_PL].Visible  := chSCN.Checked and chEva_PL.Checked;
  end;
end;

procedure TfmTodayPL.chSIClick(Sender: TObject);
begin
  inherited;
  with gdMain do
  begin
  	Columns[GD_SI_POS_QTY].Visible := chSI.Checked and chPos_Qty.Checked;
  	Columns[GD_SI_AVG_PRC].Visible := chSI.Checked and chAvg_Prc.Checked;
  	Columns[GD_SI_CLR_PL].Visible  := chSI.Checked and chClr_PL.Checked;
  	Columns[GD_SI_CMSN].Visible    := chSI.Checked and chCmsn.Checked;
  	Columns[GD_SI_EVA_PL].Visible  := chSI.Checked and chEva_PL.Checked;
  end;
end;

procedure TfmTodayPL.chUROClick(Sender: TObject);
begin
  with gdMain do
  begin
  	Columns[GD_URO_POS_QTY].Visible := chURO.Checked and chPos_Qty.Checked;
  	Columns[GD_URO_AVG_PRC].Visible := chURO.Checked and chAvg_Prc.Checked;
  	Columns[GD_URO_CLR_PL].Visible  := chURO.Checked and chClr_PL.Checked;
  	Columns[GD_URO_CMSN].Visible    := chURO.Checked and chCmsn.Checked;
  	Columns[GD_URO_EVA_PL].Visible  := chURO.Checked and chEva_PL.Checked;
  end;
end;

procedure TfmTodayPL.chYMClick(Sender: TObject);
begin
  with gdMain do
  begin
  	Columns[GD_YM_POS_QTY].Visible := chYM.Checked and chPos_Qty.Checked;
  	Columns[GD_YM_AVG_PRC].Visible := chYM.Checked and chAvg_Prc.Checked;
  	Columns[GD_YM_CLR_PL].Visible  := chYM.Checked and chClr_PL.Checked;
  	Columns[GD_YM_CMSN].Visible    := chYM.Checked and chCmsn.Checked;
  	Columns[GD_YM_EVA_PL].Visible  := chYM.Checked and chEva_PL.Checked;
  end;
end;

procedure TfmTodayPL.dbMainAfterOpen(DataSet: TDataSet);
begin
  with DataSet do
  begin
  	TFloatField(FieldByName('N101_AVG_PRC')).DisplayFormat := '###0.000';
  	TFloatField(FieldByName('Y101_AVG_PRC')).DisplayFormat := '###0.000';
  	TFloatField(FieldByName('N201_AVG_PRC')).DisplayFormat := '###0.000';
  	TFloatField(FieldByName('Y201_AVG_PRC')).DisplayFormat := '###0.000';

  	TFloatField(FieldByName('URO_AVG_PRC')).DisplayFormat := '###0.00000';
  	TFloatField(FieldByName('CL_AVG_PRC')).DisplayFormat  := '###0.000';
  	TFloatField(FieldByName('GC_AVG_PRC')).DisplayFormat  := '###0.00';
  	TFloatField(FieldByName('NG_AVG_PRC')).DisplayFormat  := '###0.0000';
  	TFloatField(FieldByName('ES_AVG_PRC')).DisplayFormat  := '###0.000';
  	TFloatField(FieldByName('AD_AVG_PRC')).DisplayFormat  := '###0.00000';
  	TFloatField(FieldByName('BP_AVG_PRC')).DisplayFormat  := '###0.00000';
  	TFloatField(FieldByName('JY_AVG_PRC')).DisplayFormat  := '###0.0';
  	TFloatField(FieldByName('NQ_AVG_PRC')).DisplayFormat  := '###0.000';
  	TFloatField(FieldByName('YM_AVG_PRC')).DisplayFormat  := '###0.0';
  	TFloatField(FieldByName('SCN_AVG_PRC')).DisplayFormat := '###0.00';
  	TFloatField(FieldByName('HSI_AVG_PRC')).DisplayFormat := '###0.0';
  	TFloatField(FieldByName('NK_AVG_PRC')).DisplayFormat := '###0.0';
  	TFloatField(FieldByName('DAX_AVG_PRC')).DisplayFormat := '###0.00';

  	TFloatField(FieldByName('CD_AVG_PRC')).DisplayFormat := '###0.00000';
  	TFloatField(FieldByName('SI_AVG_PRC')).DisplayFormat := '###0.000';
  	TFloatField(FieldByName('HG_AVG_PRC')).DisplayFormat := '###0.0000';
  end;
end;

procedure TfmTodayPL.edFindKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	if Key = 13 then btnFilter.ButtonClick;
end;

procedure TfmTodayPL.FormActivate(Sender: TObject);
begin
	tmAuto.Enabled := chAutoSelect.Checked;
end;

procedure TfmTodayPL.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
	Set_CFG;
end;

procedure TfmTodayPL.FormDeactivate(Sender: TObject);
begin
  tmAuto.Enabled := False;
end;

procedure TfmTodayPL.FormShow(Sender: TObject);
begin
  inherited;
  _Trade_YN := 'N';

  PartTableOpen(cbUserGrade, Format('@|CODE_VALUE_NM, CODE_VALUE|CODE_MST|WHERE CODE_ID = %s AND CODE_VALUE < 9 ORDER BY CODE_VALUE', [QuotedStr('USER_GRADE')]), '전체', '0');
  cbUserGrade.ItemIndex := 2;

  PartTableOpen(cbUserPart, '회원분류', '[전체]', 'A');
  cbUserPart.ItemIndex := 0;

  Get_CFG;
end;

procedure TfmTodayPL.gdMainColumns0AdvDrawDataCell(Sender: TCustomDBGridEh;
  Cell, AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
  var Params: TColCellParamsEh; var Processed: Boolean);
begin
	with TDBGridEh(Sender).DataSource.DataSet do
  begin
  	Sender.Canvas.Font.Color := clBlack;
	  if FieldByName('USER_BLACK').AsString = '1' then Sender.Canvas.Font.Color := clRed;

    Sender.DefaultDrawColumnDataCell(Cell, AreaCell, Column, ARect, Params);
    Processed := True;
  end;
end;

procedure TfmTodayPL.gdMainColumns19AdvDrawDataCell(Sender: TCustomDBGridEh;
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

procedure TfmTodayPL.gdMainTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  with dbMain do
  begin
    if IndexFieldNames = Column.FieldName then
    begin
      IndexFieldNames := Column.FieldName + ' Desc';
      First;
    end
    else
    begin
      IndexFieldNames := Column.FieldName;
      First;
    end;
  end;
end;

procedure TfmTodayPL.Get_CFG;
begin
  chPos_Qty.Checked := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_POS_QTY', ''), True);
  chClr_PL.Checked  := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_CLR_PL', ''),  True);
  chCmsn.Checked    := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_CMSN', ''),    True);
  chAvg_Prc.Checked := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_AVG_PRC', ''), True);
  chEva_PL.Checked  := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_EVA_PL', ''),  True);

  chDayF.Checked   := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_DAYF', ''),   True);
  chDayOp.Checked  := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_DAYOP', ''),  True);
  chNightF.Checked := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_NIGHTF', ''), True);
  chOP.Checked     := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_OP', ''),  False);
  chURO.Checked    := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_URO', ''), True);
  chCL.Checked     := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_CL', ''),  True);
  chGC.Checked     := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_GC', ''),  True);
  chNG.Checked     := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_NG', ''),  False);
  chES.Checked     := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_ES', ''),  True);
  chAD.Checked     := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_AD', ''),  True);
  chBP.Checked     := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_BP', ''),  True);
  chJY.Checked     := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_JY', ''),  True);
  chNQ.Checked     := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_NQ', ''),  True);
  chYM.Checked     := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_YM', ''),  True);
  chSCN.Checked    := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_SCN', ''), True);
  chHSI.Checked    := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_HSI', ''), True);
  chNK.Checked     := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_NK', ''), True);
  chDAX.Checked    := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_DAX', ''), True);

  chCD.Checked     := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_CD', ''), True);
  chSI.Checked     := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_SI', ''), True);
  chHG.Checked     := StrToBoolDef(Get_CFGFile('fmTodayPL', 'GD_HG', ''), True);
end;

procedure TfmTodayPL.MainTableOpen;
var
	iCnt: Integer;
  sSql, sUserTp: String;
begin

	iCnt := 0;

  try
    Delay_Show();

    if cbUserGrade.ItemIndex = 0 then sUserTp := 'A'
    else sUserTp := IntToStr(cbUserGrade.ItemIndex);

    if chTrade.Checked then _Trade_YN := 'Y'
    else _Trade_YN := 'N';

    sSql := Format('EXEC TODAY_CLR_PL %s, %s, %s, %s ',
                     [QuotedStr(sUserTp), QuotedStr(__Trade_DT), QuotedStr(cbUserPart.Value), QuotedStr(_Trade_YN)]);

    Uni_Open(dbMain, sSql);

    lbTime.Caption := Format('( %s 조회됨 )', [NowTime(True)]);;

    with dbMain do
    begin
      DisableControls;

      First;
      while Not Eof do
      begin
        iCnt := iCnt + FieldByName('TRADE_CNT').AsInteger;
        Next;
      end;

      First;

      EnableControls;
    end;

    pnTradeCnt.Caption := FormatFloat('총거래회원 (#,##0)', iCnt);

  	with gdMain do
    begin
		  PartTableOpen(TComponent(Columns[3]), Format('@|CODE_VALUE_NM, CODE_VALUE|CODE_MST|WHERE CODE_ID = %s ORDER BY CODE_VALUE', [QuotedStr('USER_GRADE')]));
    end;
  finally
    Delay_Hide;
  end;

end;

procedure TfmTodayPL.Set_CFG;
begin
  Set_CFGFile('fmTodayPL', 'GD_POS_QTY', BoolToStr(chPos_Qty.Checked));
  Set_CFGFile('fmTodayPL', 'GD_CLR_PL',  BoolToStr(chClr_PL.Checked));
  Set_CFGFile('fmTodayPL', 'GD_CMSN',    BoolToStr(chCmsn.Checked));
  Set_CFGFile('fmTodayPL', 'GD_AVG_PRC', BoolToStr(chAvg_Prc.Checked));
  Set_CFGFile('fmTodayPL', 'GD_EVA_PL',  BoolToStr(chEva_PL.Checked));

  Set_CFGFile('fmTodayPL', 'GD_DAYF',   BoolToStr(chDayF.Checked));
  Set_CFGFile('fmTodayPL', 'GD_DAYOP',  BoolToStr(chDayOp.Checked));
  Set_CFGFile('fmTodayPL', 'GD_NIGHTF', BoolToStr(chNightF.Checked));
  Set_CFGFile('fmTodayPL', 'GD_OP',     BoolToStr(chOP.Checked));
  Set_CFGFile('fmTodayPL', 'GD_URO',    BoolToStr(chURO.Checked));
  Set_CFGFile('fmTodayPL', 'GD_CL',     BoolToStr(chCL.Checked));
  Set_CFGFile('fmTodayPL', 'GD_GC',     BoolToStr(chGC.Checked));
  Set_CFGFile('fmTodayPL', 'GD_NG',     BoolToStr(chNG.Checked));
  Set_CFGFile('fmTodayPL', 'GD_ES',     BoolToStr(chES.Checked));
  Set_CFGFile('fmTodayPL', 'GD_AD',     BoolToStr(chAD.Checked));
  Set_CFGFile('fmTodayPL', 'GD_BP',     BoolToStr(chBP.Checked));
  Set_CFGFile('fmTodayPL', 'GD_JY',     BoolToStr(chJY.Checked));
  Set_CFGFile('fmTodayPL', 'GD_NQ',     BoolToStr(chNQ.Checked));
  Set_CFGFile('fmTodayPL', 'GD_YM',     BoolToStr(chYM.Checked));
  Set_CFGFile('fmTodayPL', 'GD_SCN',    BoolToStr(chSCN.Checked));
  Set_CFGFile('fmTodayPL', 'GD_HSI',    BoolToStr(chHSI.Checked));
  Set_CFGFile('fmTodayPL', 'GD_NK',     BoolToStr(chNK.Checked));
  Set_CFGFile('fmTodayPL', 'GD_DAX',    BoolToStr(chDAX.Checked));

  Set_CFGFile('fmTodayPL', 'GD_CD',     BoolToStr(chCD.Checked));
  Set_CFGFile('fmTodayPL', 'GD_SI',     BoolToStr(chSI.Checked));
  Set_CFGFile('fmTodayPL', 'GD_HG',     BoolToStr(chHG.Checked));
end;

procedure TfmTodayPL.tmAutoTimer(Sender: TObject);
begin
  tmAuto.Enabled := False;

	MainTableOpen;

  tmAuto.Enabled := chAutoSelect.Checked;
end;

end.
