unit S_CadRec;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TFrm_CadRec = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Grid_Cat: TDBGrid;
    Src_Rec: TDataSource;
    DBNv1: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel3: TPanel;
    FILTRAR: TEdit;
    DBCheckBox1: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FILTRARChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadRec: TFrm_CadRec;

implementation

{$R *.dfm}

uses S_DM2;

procedure TFrm_CadRec.FILTRARChange(Sender: TObject);
var
   mFiltrar: String;

begin
   mFiltrar := UpperCase(Trim(FILTRAR.Text));

   if mFiltrar <> '' then
   begin
      DM2.Tb_Rec.Filtered := True;
      DM2.Tb_Rec.Filter   := 'RECNOME like upper(' + QuotedStr('%' + mFiltrar + '%') + ')';
   end
   else
   begin
      DM2.Tb_Rec.Filtered := False;
   end;
end;

procedure TFrm_CadRec.FormActivate(Sender: TObject);
begin
   DM2.MudarEstilo(Frm_CadRec);
end;

procedure TFrm_CadRec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(Frm_CadRec);
end;

procedure TFrm_CadRec.FormCreate(Sender: TObject);
begin
   DM2.Tb_Rec.Close;
   DM2.Tb_Rec.Open;
end;

end.
