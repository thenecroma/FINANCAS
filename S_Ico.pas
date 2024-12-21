unit S_Ico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.BaseImageCollection, Vcl.ImageCollection, Vcl.Imaging.pngimage, Vcl.VirtualImageList;

type
  TFrm_Ico = class(TForm)
    ImageCollection1: TImageCollection;
    Img60: TVirtualImageList;
    Panel1: TPanel;
    Img25: TVirtualImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Ico: TFrm_Ico;

implementation

{$R *.dfm}

end.
