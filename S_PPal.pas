unit S_PPal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Vcl.AppEvnts;

type
  TFrm_PPal = class(TForm)
    Panel1: TPanel;
    Menu1: TMainMenu;
    teste1: TMenuItem;
    Categorias1: TMenuItem;
    Pagamentos1: TMenuItem;
    Registros1: TMenuItem;
    Configuraes1: TMenuItem;
    Relatrios1: TMenuItem;
    GastosporCategoria1: TMenuItem;
    Recebedores1: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    procedure Categorias1Click(Sender: TObject);
    procedure Registros1Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure GastosporCategoria1Click(Sender: TObject);
    procedure Recebedores1Click(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: TMsg; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PPal: TFrm_PPal;

implementation

{$R *.dfm}

uses S_DM1, S_CadCat, S_CadRec, S_RegPag, S_DM2, S_Cfg, S_RelCat;

procedure TFrm_PPal.ApplicationEvents1Message(var Msg: TMsg; var Handled: Boolean);
begin
   if Msg.Message = WM_KEYDOWN then
   begin
//      Handled := True;

      //ESC
      if Msg.wParam = VK_ESCAPE then
      begin
         if Screen.ActiveForm <> Frm_PPal then
         begin
            PostMessage(Screen.ActiveForm.Handle, WM_SYSCOMMAND, SC_CLOSE, 0);
         end;
      end;

      //ENTER
      if Msg.wParam = VK_RETURN then
      begin
         SendMessage(Screen.ActiveForm.Handle, WM_NEXTDLGCTL, 0, 0);
      end;
   end;
end;

procedure TFrm_PPal.Categorias1Click(Sender: TObject);
begin
   {$REGION 'Cadastro de Categorias' default=folded}
   if Frm_CadCat = nil then
   begin
      Application.CreateForm(TFrm_CadCat, Frm_CadCat);
      Frm_CadCat.Show;
   end
   else
   begin
      Frm_CadCat.BringToFront;
   end;
   {$ENDREGION}
end;

procedure TFrm_PPal.Configuraes1Click(Sender: TObject);
begin
   {$REGION 'Configurações' default=folded}
   if Frm_Cfg = nil then
   begin
      Application.CreateForm(TFrm_Cfg, Frm_Cfg);
      Frm_Cfg.Show;
   end;
   {$ENDREGION}
end;

procedure TFrm_PPal.FormActivate(Sender: TObject);
begin
   DM2.MudarEstilo(Frm_PPal);
end;

procedure TFrm_PPal.GastosporCategoria1Click(Sender: TObject);
begin
   {$REGION 'Relatório de gastos por Categoria' default=folded}
   if Frm_RelCat = nil then
   begin
      Application.CreateForm(TFrm_RelCat, Frm_RelCat);
      Frm_RelCat.Show;
   end
   else
   begin
      Frm_RelCat.BringToFront;
   end;
   {$ENDREGION}
end;

procedure TFrm_PPal.Recebedores1Click(Sender: TObject);
begin
   {$REGION 'Cadastro de Recebedores' default=folded}
   if Frm_CadRec = nil then
   begin
      Application.CreateForm(TFrm_CadRec, Frm_CadRec);
      Frm_CadRec.Show;
   end
   else
   begin
      Frm_CadRec.BringToFront;
   end;
   {$ENDREGION}
end;

procedure TFrm_PPal.Registros1Click(Sender: TObject);
begin
   {$REGION 'Registros de Pagamentos' default=folded}
   if Frm_RegPag = nil then
   begin
      Application.CreateForm(TFrm_RegPag, Frm_RegPag);
      Frm_RegPag.Show;
   end
   else
   begin
      Frm_RegPag.BringToFront;
   end;
   {$ENDREGION}
end;

end.
