object Frm_PPal: TFrm_PPal
  Left = 0
  Top = 0
  Caption = 'Menu Inicial'
  ClientHeight = 441
  ClientWidth = 624
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = Menu1
  WindowState = wsMaximized
  StyleName = 'Glossy'
  OnActivate = FormActivate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 622
    ExplicitHeight = 433
  end
  object Menu1: TMainMenu
    Left = 304
    Top = 224
    object teste1: TMenuItem
      Caption = 'Cadastros'
      object Categorias1: TMenuItem
        Caption = 'Categorias'
        OnClick = Categorias1Click
      end
      object Recebedores1: TMenuItem
        Caption = 'Recebedores'
        OnClick = Recebedores1Click
      end
    end
    object Pagamentos1: TMenuItem
      Caption = 'Pagamentos'
      object Registros1: TMenuItem
        Caption = 'Registros'
        OnClick = Registros1Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object GastosporCategoria1: TMenuItem
        Caption = 'Gastos por Categoria'
        OnClick = GastosporCategoria1Click
      end
    end
    object Configuraes1: TMenuItem
      Caption = 'Configura'#231#245'es'
      OnClick = Configuraes1Click
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 168
    Top = 176
  end
end
