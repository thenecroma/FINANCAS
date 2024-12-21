program Finanças;

uses
  Vcl.Forms,
  S_PPal in 'S_PPal.pas' {Frm_PPal},
  S_DM1 in 'S_DM1.pas' {DM1: TDataModule},
  S_CadCat in 'S_CadCat.pas' {Frm_CadCat},
  Func in 'Func.pas',
  S_DM2 in 'S_DM2.pas' {DM2: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  S_CadRec in 'S_CadRec.pas' {Frm_CadRec},
  S_RegPag in 'S_RegPag.pas' {Frm_RegPag},
  S_DM3 in 'S_DM3.pas' {DM3: TDataModule},
  S_Ico in 'S_Ico.pas' {Frm_Ico},
  S_Cfg in 'S_Cfg.pas' {Frm_Cfg},
  S_Cons in 'S_Cons.pas' {Frm_Cons},
  S_Cad in 'Frm_Vazios\S_Cad.pas' {Frm_Cad},
  S_Rel in 'Frm_Vazios\S_Rel.pas' {Frm_Rel},
  S_RelCat in 'S_RelCat.pas' {Frm_RelCat};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Light Slate');
  Application.CreateForm(TDM1, DM1);
  Application.CreateForm(TDM2, DM2);
  Application.CreateForm(TDM3, DM3);
  Application.CreateForm(TFrm_PPal, Frm_PPal);
  Application.CreateForm(TFrm_Ico, Frm_Ico);
  Application.Run;
end.
