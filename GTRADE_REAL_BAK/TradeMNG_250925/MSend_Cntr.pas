unit MSend_Cntr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzLstBox, bsSkinCtrls, VCL_Helper, MBasic, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh,
  RzDBEdit, kcRaizeCtrl, StdCtrls, RzCmboBx, RzDBCmbo, RzSplit, Mask, RzEdit,
  bsMessages, DB, MemDS, DBAccess, Uni, ImgList, BusinessSkinForm, RzDBNav,
  bsribbon, ExtCtrls, RzPanel, PacketStruct, UniDAC_Helper, bsSkinExCtrls;

type
  TfmSend_Cntr = class(TfmBasic)
    gdMain: TDBGridEh;
    RzPanel1: TRzPanel;
    RzPanel8: TRzPanel;
    RzPanel2: TRzPanel;
    cbCheckAll: TbsSkinCheckRadioBox;
    btnAllOK: TbsSkinSpeedButton;
    btnAllNo: TbsSkinSpeedButton;
    dbMainCHECK_TF: TIntegerField;
    dbMainUSER_ID: TStringField;
    dbMainRQST_TM: TStringField;
    dbMainIO_TP: TStringField;
    dbMainACNT_TP: TStringField;
    dbMainACNT_NO: TStringField;
    dbMainUSER_NM: TStringField;
    dbMainRQST_AMT: TFloatField;
    dbMainRSLT_TP: TStringField;
    dbMainRSLT_AMT: TFloatField;
    dbMainRSLT_MNG_ID: TStringField;
    dbMainRQST_TRADE_DT: TStringField;
    dbMainRQST_SYS_DT: TStringField;
    dbMainRSLT_TRADE_DT: TStringField;
    dbMainRSLT_SYS_DT: TStringField;
    dbMainRSLT_TM: TStringField;
    dbMainRJCT_MSG: TStringField;
    dbMainUSER_BANK: TStringField;
    dbMainUSER_BANK_ACNT: TStringField;
    dbMainUSER_BANK_ACNT_NM: TStringField;
    dbMainMNG_YN: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MainTableOpen; override;
  end;

var
  fmSend_Cntr: TfmSend_Cntr;

implementation

uses StdUtils, MMastDB, MDelay;

{$R *.dfm}

{ TfmSample }

{ TfmSend_Cntr }

procedure TfmSend_Cntr.MainTableOpen;
begin
  inherited;

end;

end.
