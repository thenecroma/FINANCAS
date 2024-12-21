unit S_DM2;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Dialogs, Vcl.Forms, Winapi.Windows, Vcl.Controls;

type
  TDM2 = class(TDataModule)
    Tb_Cat: TFDQuery;
    Tb_CatCATCOD: TFMTBCDField;
    Tb_CatCATNOME: TStringField;
    Tb_Rec: TFDQuery;
    Tb_RecRECCOD: TFMTBCDField;
    Tb_RecRECNOME: TStringField;
    Tb_Cfg: TFDQuery;
    Tb_CfgCFGTEMA: TStringField;
    Tb_RecRECPAGADOR: TStringField;
    procedure Tb_CatAfterInsert(DataSet: TDataSet);
    procedure Tb_CatBeforePost(DataSet: TDataSet);
    procedure Tb_CatBeforeDelete(DataSet: TDataSet);
    procedure Tb_RecAfterInsert(DataSet: TDataSet);
    procedure Tb_RecBeforePost(DataSet: TDataSet);
    procedure Tb_RecBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MudarEstilo(mFrm: TForm);
  end;

var
  DM2: TDM2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses S_DM1, Func;

{$R *.dfm}

procedure TDM2.MudarEstilo(mFrm: TForm);
begin
   DM2.Tb_Cfg.Close;
   DM2.Tb_Cfg.Open;

   if DM2.Tb_CfgCFGTEMA.AsString <> '' then
   begin
      mFrm.StyleName := DM2.Tb_CfgCFGTEMA.AsString;
   end;
end;

procedure TDM2.Tb_CatAfterInsert(DataSet: TDataSet);
begin
   Tb_CatCATCOD.AsInteger := StrToInt(ResultadoSQL('select max(CATCOD) from CATEGORIAS')) + 1;
end;

procedure TDM2.Tb_CatBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Deseja deletar registro?', 'Confirmação', MB_YESNO) <> mrYes then
   begin
      Abort;
   end
   else
   begin
      Tb_Cat.Delete;
   end;
end;

procedure TDM2.Tb_CatBeforePost(DataSet: TDataSet);
begin
   if Trim(Tb_CatCATNOME.AsString) = '' then
   begin
      ShowMessage('Nome é obrigatório!');
      Abort;
   end;
end;

procedure TDM2.Tb_RecAfterInsert(DataSet: TDataSet);
begin
   Tb_RecRECCOD.AsInteger    := StrToInt(ResultadoSQL('select max(RECCOD) from RECEBEDORES')) + 1;
   Tb_RecRECPAGADOR.AsString := 'N';
end;

procedure TDM2.Tb_RecBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Deseja deletar registro?', 'Confirmação', MB_YESNO) <> mrYes then
   begin
      Abort;
   end
   else
   begin
      Tb_Rec.Delete;
   end;
end;

procedure TDM2.Tb_RecBeforePost(DataSet: TDataSet);
begin
   if Trim(Tb_RecRECNOME.AsString) = '' then
   begin
      ShowMessage('Nome é obrigatório!');
      Abort;
   end;
end;

end.
