unit MBankPart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MBasic, bsMessages, DB, MemDS, DBAccess, Uni, ImgList,
  BusinessSkinForm, bsSkinCtrls, RzDBNav, bsribbon, ExtCtrls, RzPanel, StdCtrls,
  RzLstBox, RzSplit, NxColumns, NxDBColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, RzCmboBx, RzDBCmbo, kcRaizeCtrl, Mask, RzEdit,
  RzDBEdit, GridsEh, DBAxisGridsEh, DBGridEh, UniDAC_Helper;

type
  TfmBankPart = class(TfmBasic)
    RzPanel2: TRzPanel;
    gdMain: TDBGridEh;
    dbMainBANK_CD: TIntegerField;
    dbMainBANK_DISP_NM: TStringField;
    dbMainBANK_NM: TStringField;
    dbMainBANK_ACNT_NO: TStringField;
    dbMainBANK_ACNT_NM: TStringField;
    dbSQL: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure dbMainBeforeDelete(DataSet: TDataSet);
    procedure dbMainBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MainTableOpen;
  end;

var
  fmBankPart: TfmBankPart;

implementation

{$R *.dfm}
uses
  stdUtils, MMastDB;

var
  _Where : String;

procedure TfmBankPart.dbMainBeforeDelete(DataSet: TDataSet);
var
  iCnt: Integer;
  sSQL: String;
begin
	with DataSet do
  begin
    if FieldByName('BANK_CD').AsInteger = 1 then
    begin
      MsgError('기본계좌는 삭제할 수 없습니다.');
    	Abort;
      Cancel;
    end;

    sSQL := Format('SELECT COUNT(1) AS CNT FROM USER_MST WHERE BANK_CD = %d', [FieldByName('BANK_CD').AsInteger]);
    Uni_Open(dbSQL, sSQL);

    iCnt := dbSQL.FieldByName('CNT').AsInteger;

    if iCnt > 0 then
    begin
      MsgError(Format('이 계좌로 지정되어 있는 회원이 있어 삭제할 수 없습니다. ( %d )', [iCnt]));
    	Abort;
      Cancel;
    end;
  end;
end;

procedure TfmBankPart.dbMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;

	with DataSet do
  begin
    if FieldByName('BANK_CD').AsInteger = 1 then
    begin
      MsgError('기본계좌는 수정할 수 없습니다. (회사관리에서 수정바랍니다)');
    	Abort;
      Cancel;
    end;
  end;
end;

procedure TfmBankPart.FormShow(Sender: TObject);
begin
  inherited;

  MainTableOpen;
end;

procedure TfmBankPart.MainTableOpen;
var
  sSql : String;
begin
  sSql := 'SELECT * FROM BANK_MST ';
  Uni_Open(dbMain, sSql);
end;

end.
