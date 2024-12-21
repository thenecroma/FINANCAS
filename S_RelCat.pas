unit S_RelCat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Mask, Vcl.WinXCalendars, Vcl.NumberBox, Vcl.Buttons, frxClass, frxDBSet, frCoreClasses, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_RelCat = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    BTnSelecionar: TButton;
    BTnImpressao: TButton;
    Label1: TLabel;
    Label2: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    qPagCat: TFDQuery;
    Src_PagCat: TDataSource;
    frxRel: TfrxReport;
    dsRel: TfrxDBDataset;
    qPagCatVALOR: TFMTBCDField;
    qPagCatPAGCAT: TFMTBCDField;
    qPagCatCATNOME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTnImpressaoClick(Sender: TObject);
    procedure BTnSelecionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RelCat: TFrm_RelCat;

implementation

{$R *.dfm}

uses S_Ico, S_DM1;

procedure TFrm_RelCat.BTnImpressaoClick(Sender: TObject);
begin

   frxRel.ShowReport;
end;


procedure TFrm_RelCat.BTnSelecionarClick(Sender: TObject);
begin
   qPagCat.Close;
   qPagCat.ParamByName('MDT1').AsString := MDT1.Text;
   qPagCat.ParamByName('MDT2').AsString := MDT2.Text;
   qPagCat.Open;
end;

procedure TFrm_RelCat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(Frm_RelCat);
end;

procedure TFrm_RelCat.FormCreate(Sender: TObject);
begin
   MDT1.Text := FormatDateTime('dd/mm/yyyy', Now);
   MDT2.Text := FormatDateTime('dd/mm/yyyy', Now);
end;

end.
