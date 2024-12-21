unit S_DM3;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Dialogs;

type
  TDM3 = class(TDataModule)
    Tb_Pag: TFDQuery;
    Tb_PagPAGCTRL: TFMTBCDField;
    Tb_PagPAGCAT: TFMTBCDField;
    Tb_PagPAGVALOR: TFMTBCDField;
    Tb_PagPAGDATA: TDateTimeField;
    Tb_PagPAGREC: TFMTBCDField;
    Tb_PagC_Recebedor: TStringField;
    Tb_PagC_Categoria: TStringField;
    Tb_Ent: TFDQuery;
    Tb_EntENTCTRL: TFMTBCDField;
    Tb_EntENTVALOR: TFMTBCDField;
    Tb_EntENTDATA: TDateTimeField;
    Tb_EntENTREC: TFMTBCDField;
    Tb_EntENTCAT: TFMTBCDField;
    procedure Tb_PagAfterInsert(DataSet: TDataSet);
    procedure Tb_PagCalcFields(DataSet: TDataSet);
    procedure Tb_PagBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM3: TDM3;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses S_DM1, Func;

{$R *.dfm}

procedure TDM3.Tb_PagAfterInsert(DataSet: TDataSet);
begin
   Tb_PagPAGCTRL.AsInteger := StrToInt(ResultadoSQL('select max(PAGCTRL) from PAGAMENTOS')) + 1;
   Tb_PagPAGDATA.AsString  := FormatDateTime('dd/mm/yyyy', Now);
end;

procedure TDM3.Tb_PagBeforePost(DataSet: TDataSet);
begin
   {$REGION 'Validações' default='folded'}
   if not (Tb_PagPAGREC.AsInteger > 0) then
   begin
      ShowMessage('Código do recebedor é obrigatório!');
      Abort;
   end;

   if not (Tb_PagPAGREC.AsInteger > 0) then
   begin
      ShowMessage('Código da categoria é obrigatório!');
      Abort;
   end;

   if not (Tb_PagPAGVALOR.AsFloat > 0) then
   begin
      ShowMessage('Valor é obrigatório!');
      Abort;
   end;
   {$ENDREGION}
end;

procedure TDM3.Tb_PagCalcFields(DataSet: TDataSet);
begin
   DM3.Tb_PagC_Recebedor.AsString := ResultadoSQL('select RECNOME from RECEBEDORES where RECCOD = 0' + DM3.Tb_PagPAGREC.AsString);
   DM3.Tb_PagC_Categoria.AsString := ResultadoSQL('select CATNOME from CATEGORIAS  where CATCOD = 0' + DM3.Tb_PagPAGCAT.AsString);
end;

end.
