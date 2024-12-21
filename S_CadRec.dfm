object Frm_CadRec: TFrm_CadRec
  Left = 0
  Top = 0
  Caption = 'Cadastro de Recebedores'
  ClientHeight = 570
  ClientWidth = 444
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
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 470
    Width = 444
    Height = 100
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 520
    object Label1: TLabel
      Left = 6
      Top = 8
      Width = 51
      Height = 15
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit1
    end
    object DBNv1: TDBNavigator
      Left = 1
      Top = 74
      Width = 442
      Height = 25
      DataSource = Src_Rec
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alBottom
      Flat = True
      ConfirmDelete = False
      TabOrder = 0
      ExplicitTop = 59
      ExplicitWidth = 440
    end
    object DBEdit1: TDBEdit
      Left = 6
      Top = 24
      Width = 434
      Height = 21
      DataField = 'RECNOME'
      DataSource = Src_Rec
      TabOrder = 1
    end
    object DBCheckBox1: TDBCheckBox
      Left = 6
      Top = 51
      Width = 139
      Height = 17
      Caption = 'Considerado pagador'
      DataField = 'RECPAGADOR'
      DataSource = Src_Rec
      TabOrder = 2
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 44
    Width = 444
    Height = 426
    Align = alClient
    BorderWidth = 5
    TabOrder = 1
    ExplicitWidth = 442
    ExplicitHeight = 483
    object Grid_Cat: TDBGrid
      Left = 6
      Top = 6
      Width = 432
      Height = 414
      Align = alClient
      DataSource = Src_Rec
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'RECCOD'
          Title.Caption = 'C'#243'digo'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RECNOME'
          Title.Caption = 'Descri'#231#227'o'
          Width = 300
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 444
    Height = 44
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 442
    object FILTRAR: TEdit
      Left = 6
      Top = 12
      Width = 434
      Height = 21
      TabOrder = 0
      TextHint = 'Filtrar por descri'#231#227'o'
      OnChange = FILTRARChange
    end
  end
  object Src_Rec: TDataSource
    DataSet = DM2.Tb_Rec
    Left = 296
    Top = 80
  end
end
