object Frm_CadCat: TFrm_CadCat
  Left = 0
  Top = 0
  Caption = 'Cadastro de Categorias'
  ClientHeight = 547
  ClientWidth = 446
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
    Top = 472
    Width = 446
    Height = 75
    Align = alBottom
    TabOrder = 0
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
      Top = 49
      Width = 444
      Height = 25
      DataSource = Src_Cat
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alBottom
      Flat = True
      ConfirmDelete = False
      TabOrder = 0
      ExplicitTop = 59
      ExplicitWidth = 442
    end
    object DBEdit1: TDBEdit
      Left = 6
      Top = 24
      Width = 434
      Height = 21
      DataField = 'CATNOME'
      DataSource = Src_Cat
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 44
    Width = 446
    Height = 428
    Align = alClient
    BorderWidth = 5
    TabOrder = 1
    ExplicitWidth = 444
    ExplicitHeight = 410
    object Grid_Cat: TDBGrid
      Left = 6
      Top = 6
      Width = 434
      Height = 416
      Align = alClient
      DataSource = Src_Cat
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
          FieldName = 'CATCOD'
          Title.Caption = 'C'#243'digo'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CATNOME'
          Title.Caption = 'Descri'#231#227'o'
          Width = 300
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 446
    Height = 44
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 444
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
  object Src_Cat: TDataSource
    DataSet = DM2.Tb_Cat
    Left = 296
    Top = 80
  end
end
