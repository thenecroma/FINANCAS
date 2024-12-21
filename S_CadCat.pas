unit S_CadCat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TFrm_CadCat = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Grid_Cat: TDBGrid;
    Src_Cat: TDataSource;
    DBNv1: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel3: TPanel;
    FILTRAR: TEdit;
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
  Frm_CadCat: TFrm_CadCat;

implementation

{$R *.dfm}

uses S_DM2;

procedure TFrm_CadCat.FILTRARChange(Sender: TObject);
var
   mFiltrar: String;

begin
   mFiltrar := UpperCase(Trim(FILTRAR.Text));

   if mFiltrar <> '' then
   begin
      DM2.Tb_Cat.Filtered := True;
      DM2.Tb_Cat.Filter   := 'CATNOME like upper(' + QuotedStr('%' + mFiltrar + '%') + ')';
   end
   else
   begin
      DM2.Tb_Cat.Filtered := False;
   end;
end;

procedure TFrm_CadCat.FormActivate(Sender: TObject);
begin
   DM2.MudarEstilo(Frm_CadCat);
end;

procedure TFrm_CadCat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(Frm_CadCat);
end;

procedure TFrm_CadCat.FormCreate(Sender: TObject);
begin
   DM2.Tb_Cat.Close;
   DM2.Tb_Cat.Open;
end;

end.
