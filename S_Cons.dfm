object Frm_Cons: TFrm_Cons
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Formul'#225'rio de Consulta'
  ClientHeight = 450
  ClientWidth = 631
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  StyleName = 'Glossy'
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 44
    Width = 631
    Height = 406
    Align = alClient
    BorderWidth = 5
    TabOrder = 1
    ExplicitTop = 0
    ExplicitWidth = 622
    ExplicitHeight = 361
    object GridCons: TDBGrid
      Left = 6
      Top = 6
      Width = 619
      Height = 394
      TabStop = False
      Align = alClient
      DataSource = Src_Cons
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CAMPO1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAMPO2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAMPO3'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAMPO4'
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 631
    Height = 44
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 446
    object FILTRAR: TEdit
      Left = 6
      Top = 12
      Width = 619
      Height = 21
      TabOrder = 0
      TextHint = 'Filtrar por descri'#231#227'o'
      OnChange = FILTRARChange
    end
  end
  object Src_Cons: TDataSource
    DataSet = qCons
    Left = 360
    Top = 192
  end
  object qCons: TFDQuery
    Connection = DM1.BD
    SQL.Strings = (
      '')
    Left = 320
    Top = 192
    object qConsCAMPO1: TFMTBCDField
      DisplayWidth = 50
      FieldName = 'CAMPO1'
      Size = 50
    end
    object qConsCAMPO2: TStringField
      FieldName = 'CAMPO2'
      Size = 50
    end
    object qConsCAMPO3: TStringField
      FieldName = 'CAMPO3'
      Size = 50
    end
    object qConsCAMPO4: TStringField
      FieldName = 'CAMPO4'
      Size = 50
    end
  end
end
