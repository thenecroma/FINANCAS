unit S_RegPag;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, FireDAC.Stan.ExprFuncs;

type
  TFrm_RegPag = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GridPag: TDBGrid;
    Src_Pag: TDataSource;
    BTnInc: TButton;
    BTnEditar: TButton;
    BTnConfirmar: TButton;
    BTnExcluir: TButton;
    BTnCancelar: TButton;
    Panel3: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBE_Rec: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    DBE_Cat: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBE_Dat: TDBEdit;
    SBnCRec: TSpeedButton;
    SBnCCat: TSpeedButton;
    Panel4: TPanel;
    Label6: TLabel;
    RECEBEDOR: TEdit;
    DATA: TEdit;
    CATEGORIA: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BTnIncClick(Sender: TObject);
    procedure BTnEditarClick(Sender: TObject);
    procedure BTnConfirmarClick(Sender: TObject);
    procedure BTnExcluirClick(Sender: TObject);
    procedure Src_PagDataChange(Sender: TObject; Field: TField);
    procedure BTnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SBnCRecClick(Sender: TObject);
    procedure SBnCCatClick(Sender: TObject);
    procedure DBE_RecKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBE_CatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBE_DatExit(Sender: TObject);
    procedure RECEBEDORChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RegPag: TFrm_RegPag;

implementation

{$R *.dfm}

uses Func, S_Ico, S_DM2, S_DM3, S_Cons;

procedure TFrm_RegPag.BTnCancelarClick(Sender: TObject);
begin
   DM3.Tb_Pag.Cancel;
end;

procedure TFrm_RegPag.BTnConfirmarClick(Sender: TObject);
begin
   DM3.Tb_Pag.Post;
end;

procedure TFrm_RegPag.BTnEditarClick(Sender: TObject);
begin
   DM3.Tb_Pag.Edit;
end;

procedure TFrm_RegPag.BTnExcluirClick(Sender: TObject);
begin
   if Application.MessageBox('Deseja deletar registro?', 'Confirmação', MB_YESNO) <> mrYes then
   begin
      Exit;
   end;

   DM3.Tb_Pag.Delete;
end;

procedure TFrm_RegPag.BTnIncClick(Sender: TObject);
begin
   DM3.Tb_Pag.Insert;
end;

procedure TFrm_RegPag.DBE_RecKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = 113 then SBnCRec.Click;
end;

procedure TFrm_RegPag.DBE_CatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = 113 then SBnCCat.Click;
end;

procedure TFrm_RegPag.DBE_DatExit(Sender: TObject);
var
   mData: TDateTime;

begin
   if not TryStrToDate(DBE_Dat.Text, mData) then
   begin
      ShowMessage('Data inválida!');
      DBE_Dat.SetFocus;
   end;
end;

procedure TFrm_RegPag.FormActivate(Sender: TObject);
begin
   DM2.MudarEstilo(Frm_RegPag);
end;

procedure TFrm_RegPag.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(Frm_RegPag);
end;

procedure TFrm_RegPag.FormCreate(Sender: TObject);
begin
   DM3.Tb_Pag.Close;
   DM3.Tb_Pag.Open;
end;

procedure TFrm_RegPag.RECEBEDORChange(Sender: TObject);
begin
   if Trim((Sender as TEdit).Text) <> '' then
   begin
      DM3.Tb_Pag.Filtered := True;

      if (Sender as TEdit).Name = 'RECEBEDOR' then
      begin
         DM3.Tb_Pag.Filter := 'PAGREC = ' + (Sender as TEdit).Text;
      end;

      if (Sender as TEdit).Name = 'CATEGORIA' then
      begin
         DM3.Tb_Pag.Filter := 'PAGCAT = ' + (Sender as TEdit).Text;
      end;

      if (Sender as TEdit).Name = 'DATA' then
      begin
         DM3.Tb_Pag.Filter := 'PAGDATA = ' + QuotedStr((Sender as TEdit).Text);
      end;
   end
   else
   begin
      DM3.Tb_Pag.Filtered := False;
   end;
end;

procedure TFrm_RegPag.SBnCCatClick(Sender: TObject);
begin
   Application.CreateForm(TFrm_Cons, Frm_Cons);

   Frm_Cons.AlimentarCampos('CATCOD', 'CATNOME', QuotedStr(' '), QuotedStr(' '),
                            'Código', 'Nome'   , QuotedStr(' '), QuotedStr(' '),
                            'CATEGORIAS',
                            80, 300, 0, 0);

   Frm_Cons.ShowModal;

   DM3.Tb_PagPAGCAT.AsString := Frm_Cons.qConsCAMPO1.AsString;

   FreeAndNil(Frm_Cons);
end;

procedure TFrm_RegPag.SBnCRecClick(Sender: TObject);
begin
   Application.CreateForm(TFrm_Cons, Frm_Cons);

   Frm_Cons.AlimentarCampos('RECCOD', 'RECNOME', QuotedStr(' '), QuotedStr(' '),
                            'Código', 'Nome'   , QuotedStr(' '), QuotedStr(' '),
                            'RECEBEDORES',
                            80, 300, 0, 0);

   Frm_Cons.ShowModal;

   DM3.Tb_PagPAGREC.AsString := Frm_Cons.qConsCAMPO1.AsString;

   FreeAndNil(Frm_Cons);
end;

procedure TFrm_RegPag.Src_PagDataChange(Sender: TObject; Field: TField);
begin
   BTnInc.Enabled       := not (DM3.Tb_Pag.State in [dsInsert, dsEdit]);
   BTnEditar.Enabled    := not (DM3.Tb_Pag.State in [dsInsert, dsEdit]);
   BTnConfirmar.Enabled := DM3.Tb_Pag.State <> dsBrowse;
   BTnCancelar.Enabled  := DM3.Tb_Pag.State <> dsBrowse;
   SBnCRec.Enabled      := DM3.Tb_Pag.State <> dsBrowse;
   SBnCCat.Enabled      := DM3.Tb_Pag.State <> dsBrowse;
   DBE_Rec.Enabled      := DM3.Tb_Pag.State <> dsBrowse;
   DBE_Cat.Enabled      := DM3.Tb_Pag.State <> dsBrowse;
   BTnExcluir.Enabled   := DM3.Tb_Pag.State =  dsBrowse;
end;

end.
