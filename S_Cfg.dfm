object Frm_Cfg: TFrm_Cfg
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Configura'#231#245'es'
  ClientHeight = 65
  ClientWidth = 215
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  StyleName = 'Glossy'
  OnActivate = FormActivate
  OnClose = FormClose
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 215
    Height = 65
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 56
      Height = 15
      Caption = 'Tema.........'
    end
    object CBbTema: TComboBox
      Left = 54
      Top = 16
      Width = 145
      Height = 23
      Style = csDropDownList
      DropDownWidth = 145
      ItemIndex = 0
      TabOrder = 0
      Text = 'Glossy'
      OnChange = CBbTemaChange
      Items.Strings = (
        'Glossy'
        'Windows')
    end
  end
end
