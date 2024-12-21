unit S_Cons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient, Vcl.StdCtrls;

type
  TFrm_Cons = class(TForm)
    Panel1: TPanel;
    GridCons: TDBGrid;
    Src_Cons: TDataSource;
    qCons: TFDQuery;
    qConsCAMPO1: TFMTBCDField;
    qConsCAMPO2: TStringField;
    qConsCAMPO3: TStringField;
    qConsCAMPO4: TStringField;
    Panel3: TPanel;
    FILTRAR: TEdit;
    procedure FILTRARChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AlimentarCampos(mCampo1, mCampo2, mCampo3, mCampo4: String;
                              mTitulo1, mTitulo2, mTitulo3, mTitulo4: String;
                              mTabela: String;
                              mTamanho1, mTamanho2, mTamanho3, mTamanho4: Integer);
  end;
var
  Frm_Cons: TFrm_Cons;

implementation

{$R *.dfm}

uses S_DM1, Func;

procedure TFrm_Cons.AlimentarCampos(mCampo1, mCampo2, mCampo3, mCampo4: String;
                                    mTitulo1, mTitulo2, mTitulo3, mTitulo4: String;
                                    mTabela: String;
                                    mTamanho1, mTamanho2, mTamanho3, mTamanho4: Integer);
var
   x: Integer;

begin
   qCons.Close;
   qCons.SQL.Clear;
   qCons.SQL.Add('select ' + mCampo1 + ' as CAMPO1,'
           + #13'        ' + mCampo2 + ' as CAMPO2,'
           + #13'        ' + mCampo3 + ' as CAMPO3,'
           + #13'        ' + mCampo4 + ' as CAMPO4'
           + #13'   from ' + mTabela);
   qCons.Open;

   Frm_Cons.GridCons.Columns[0].Title.Caption := mTitulo1;
   Frm_Cons.GridCons.Columns[1].Title.Caption := mTitulo2;
   Frm_Cons.GridCons.Columns[2].Title.Caption := mTitulo3;
   Frm_Cons.GridCons.Columns[3].Title.Caption := mTitulo4;
   Frm_Cons.GridCons.Columns[0].Width         := mTamanho1;
   Frm_Cons.GridCons.Columns[1].Width         := mTamanho2;
   Frm_Cons.GridCons.Columns[2].Width         := mTamanho3;
   Frm_Cons.GridCons.Columns[3].Width         := mTamanho4;
   //
   for x := 1 to 4 do
   begin
      if Trim(qCons.FieldByName('CAMPO' + IntToStr(x)).AsString) = '' then
      begin
         Frm_Cons.GridCons.Columns[x - 1].Visible := False;
      end
      else
      begin
         Frm_Cons.GridCons.Columns[x - 1].Visible := True;
      end;
   end;
end;

procedure TFrm_Cons.FILTRARChange(Sender: TObject);
var
   mFiltrar: String;

begin
   mFiltrar := UpperCase(Trim(FILTRAR.Text));

   if mFiltrar <> '' then
   begin
      qCons.Filtered := True;
      qCons.Filter   := 'CAMPO2 like upper(' + QuotedStr('%' + mFiltrar + '%') + ')';
   end
   else
   begin
      qCons.Filtered := False;
   end;
end;

end.
