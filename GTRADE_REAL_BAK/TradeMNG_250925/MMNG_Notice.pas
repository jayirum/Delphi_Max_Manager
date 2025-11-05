unit MMNG_Notice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsMessages, BusinessSkinForm, DB, MemDS, DBAccess, Uni, bsSkinCtrls,
  StdCtrls, DBCtrls, RzDBEdit, Mask, RzEdit, kcRaizeCtrl;

type
  TfmMNG_Notice = class(TForm)
    bsBusinessSkinForm: TbsBusinessSkinForm;
    bsSkinMessage: TbsSkinMessage;
    dbMNG_Noti: TUniQuery;
    dsMNG_Noti: TDataSource;
    edDate: TkcRzDBEdit;
    moNoti: TRzDBMemo;
    chView: TbsSkinCheckBox;
    btnClose: TbsSkinSpeedButton;
    dbSQL: TUniQuery;
    edSEQ: TkcRzDBEdit;
    procedure btnCloseClick(Sender: TObject);
    procedure chViewClick(Sender: TObject);
    procedure dbMNG_NotiAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DataOpen_MNGNoti;
  end;

var
  fmMNG_Notice: TfmMNG_Notice;
  procedure MNGNoti_Run(iTP: Integer);

implementation

uses StdUtils;

{$R *.dfm}

var
  _iTP: Integer;

procedure MNGNoti_Run(iTP: Integer);
begin
  fmMNG_Notice := TfmMNG_Notice.Create(Application);

  with fmMNG_Notice do
  begin
    try
      _iTP := iTP;
      DataOpen_MNGNoti;

      if iTP = 1 then
      begin
        edDate.ReadOnly := False;
        moNoti.ReadOnly := False;

        dbMNG_Noti.Insert;
      end;

      ShowModal;
    finally
      Free;
    end;
  end;
end;

{ TfmMNG_Notice }

procedure TfmMNG_Notice.btnCloseClick(Sender: TObject);
begin
  if _iTP = 1 then
  begin
    with dbMNG_Noti do
    begin
      if State in [dsInsert, dsEdit] then Post;      
    end;
  end;
  
  Close;
end;

procedure TfmMNG_Notice.chViewClick(Sender: TObject);
var
	sSQL: String;
begin
	sSql := Format('UPDATE MNG_NOTICE SET MNG_VIEW = %s WHERE MNG_SEQ = %s', [QuotedStr('2'), QuotedStr(edSEQ.Text)]);
  Uni_Open(dbSQL, sSql);

  Close;
end;

procedure TfmMNG_Notice.DataOpen_MNGNoti;
var
	sSQL: String;
begin
	sSql := Format('SELECT * FROM MNG_NOTICE WHERE MNG_VIEW = %s ORDER BY MNG_DATE', [QuotedStr('0')]);
  Uni_Open(dbMNG_Noti, sSql);

  with dbMNG_Noti do
  begin
    Last;
  end;
end;

procedure TfmMNG_Notice.dbMNG_NotiAfterInsert(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('MNG_VIEW').AsString := '0';
  end;
end;

end.
