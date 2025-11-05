unit MIPList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzLstBox, bsSkinCtrls, VCL_Helper, MBasic, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh,
  RzDBEdit, kcRaizeCtrl, StdCtrls, RzCmboBx, RzDBCmbo, RzSplit, Mask, RzEdit,
  bsMessages, DB, MemDS, DBAccess, Uni, ImgList, BusinessSkinForm, RzDBNav,
  bsribbon, ExtCtrls, RzPanel, bsSkinBoxCtrls, Math;

type
  TfmIPList = class(TfmBasic)
    gdMain: TDBGridEh;
    dsUser: TDataSource;
    dbUser: TUniQuery;
    dbUserUSER_NM: TStringField;
    dbUserUSER_ID: TStringField;
    edUserID: TkcRzDBEdit;
    dbMainACNT_NO: TStringField;
    dbMainLOG_CLT_DT: TStringField;
    dbMainLOG_CLT_TM: TStringField;
    dbMainLOG_IP: TStringField;
    dbMainUSER_ID: TStringField;
    dbMainUSER_NM: TStringField;
    dbMainLOG_TP: TStringField;
    dbMainSTK_CD: TStringField;
    dbMainBS_TP: TStringField;
    dbMainNOW_PRC: TFloatField;
    dbMainORD_PRC: TFloatField;
    dbMainORD_QTY: TIntegerField;
    dbMainHOGA_NO: TIntegerField;
    dbMainLOG_SVR_DT: TStringField;
    dbMainLOG_SVR_TM: TStringField;
    dbMainLOG_MSG: TStringField;
    dbMainTOTCNT: TIntegerField;
    pnCnt: TRzPanel;
    dtDt: TkcRzDateTimeEdit;
    dtEnd: TkcRzDateTimeEdit;
    edFind: TRzEdit;
    procedure FormShow(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure gdMainTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MainTableOpen; override;
    procedure LogTableOpen;
  end;

var
  fmIPList: TfmIPList;

implementation

uses StdUtils, MMastDB, MDelay;

{$R *.dfm}

{ TfmSample }

procedure TfmIPList.btnExcelClick(Sender: TObject);
begin
  inherited;
  Export_Excel(gdMain);
end;

procedure TfmIPList.btnFilterClick(Sender: TObject);
begin
  inherited;
  LogTableOpen;
end;

procedure TfmIPList.FormShow(Sender: TObject);
begin
  inherited;

  dtEnd.Date := FirstDate(TextToDate(__Trade_DT));
  dtEnd.Date := TextToDate(__Trade_DT);
end;

procedure TfmIPList.gdMainTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  inherited;
  with dbMain do
  begin
    if IndexFieldNames = Column.FieldName then IndexFieldNames := Column.FieldName + ' Desc'
    else IndexFieldNames := Column.FieldName
  end;
end;

procedure TfmIPList.LogTableOpen;
var
  sSql, sWhere : String;
begin

  try
    Delay_Show();

    sSql := Format( 'SELECT A.USER_ID, ' +
                           'B.USER_NM, ' +
                           'B.USER_NICK_NM, ' +
                           'A.LOGIN_DT, ' +
                           'A.LOGIN_TM, ' +
                           'A.LOGIN_IP, ' +
                           'A.LOGIN_MAC, ' +
                           'CASE WHEN A.LOGIN_TP = %s THEN %s ELSE %s END LOGIN_TP, ' +
                           'CASE WHEN A.APP_TP = %s THEN %s ELSE %s END LOGIN_TP ' +
                      'FROM LOGIN_HIS A, USER_MST B ' +
                     'WHERE A.USER_ID = B.USER_ID ' +
                       'AND A.LOGIN_DT >= %s ' +
                       'AND A.LOGIN_DT <= %s ' +
                       'AND (%s = %s OR LOGIN_IP = %s OR LOGIN_MAC = %s)',
                            [QuotedStr('I'), QuotedStr('로그인'), QuotedStr('로그아웃'),
                             QuotedStr('M'), QuotedStr('관리자'), QuotedStr('HTS'),
                             QuotedStr(StrReplace(dtDt.Text, '-', '')),
                             QuotedStr(StrReplace(dtEnd.Text, '-', '')),
                             QuotedStr(''), QuotedStr(''),
                             QuotedStr(edFind.Text), QuotedStr(edFind.Text)
                            ]);

    Uni_Open(dbMain, sSql);

    if dbMain.RecordCount > 0 then pnCnt.Caption := dbMain.FieldByName('TOTCNT').AsString + ' 건'
    else pnCnt.Caption := '0 건';
 
  finally
    Delay_Hide;
  end;
end;

procedure TfmIPList.MainTableOpen;
begin
// override
end;

end.
