unit S_Cfg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrm_Cfg = class(TForm)
    Panel1: TPanel;
    CBbTema: TComboBox;
    Label1: TLabel;
    procedure CBbTemaChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cfg: TFrm_Cfg;

implementation

{$R *.dfm}

uses S_DM2, Func;

procedure TFrm_Cfg.CBbTemaChange(Sender: TObject);
begin
   if DM2.Tb_Cfg.IsEmpty then
   begin
      DM2.Tb_Cfg.Append;
   end
   else
   begin
      DM2.Tb_Cfg.Edit;
   end;

   DM2.Tb_CfgCFGTEMA.AsString := CBbTema.Text;
   DM2.Tb_Cfg.Post;
end;

procedure TFrm_Cfg.FormActivate(Sender: TObject);
begin
   DM2.MudarEstilo(Frm_Cfg);
end;

procedure TFrm_Cfg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(Frm_Cfg);
end;

end.
