object Frm_RegPag: TFrm_RegPag
  Left = 0
  Top = 0
  Caption = 'Registros de Pagamentos'
  ClientHeight = 611
  ClientWidth = 692
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
    Top = 539
    Width = 692
    Height = 72
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 429
    ExplicitWidth = 552
    DesignSize = (
      692
      72)
    object BTnInc: TButton
      Left = 362
      Top = 6
      Width = 60
      Height = 60
      Hint = 'Incluir registro'
      Anchors = [akRight, akBottom]
      ImageIndex = 0
      ImageName = 'Adicionar'
      ImageMargins.Left = 3
      Images = Frm_Ico.Img60
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BTnIncClick
      ExplicitLeft = 435
    end
    object BTnEditar: TButton
      Left = 428
      Top = 6
      Width = 60
      Height = 60
      Hint = 'Editar registro'
      Anchors = [akRight, akBottom]
      ImageIndex = 4
      ImageName = 'Editar'
      ImageMargins.Left = 3
      Images = Frm_Ico.Img60
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BTnEditarClick
      ExplicitLeft = 501
    end
    object BTnConfirmar: TButton
      Left = 494
      Top = 6
      Width = 60
      Height = 60
      Hint = 'Confirmar'
      Anchors = [akRight, akBottom]
      ImageIndex = 2
      ImageName = 'Confirmar'
      ImageMargins.Left = 3
      Images = Frm_Ico.Img60
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BTnConfirmarClick
      ExplicitLeft = 567
    end
    object BTnExcluir: TButton
      Left = 626
      Top = 6
      Width = 60
      Height = 60
      Hint = 'Excluir registro'
      Anchors = [akRight, akBottom]
      ImageIndex = 3
      ImageName = 'Deletar'
      ImageMargins.Left = 3
      Images = Frm_Ico.Img60
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BTnExcluirClick
      ExplicitLeft = 699
    end
    object BTnCancelar: TButton
      Left = 560
      Top = 6
      Width = 60
      Height = 60
      Hint = 'Cancelar'
      Anchors = [akRight, akBottom]
      ImageIndex = 1
      ImageName = 'Cancelar'
      ImageMargins.Left = 3
      Images = Frm_Ico.Img60
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BTnCancelarClick
      ExplicitLeft = 633
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 692
    Height = 396
    Align = alClient
    BorderWidth = 5
    TabOrder = 2
    ExplicitWidth = 552
    ExplicitHeight = 264
    object GridPag: TDBGrid
      Left = 6
      Top = 6
      Width = 538
      Height = 384
      TabStop = False
      Align = alClient
      DataSource = Src_Pag
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
          FieldName = 'PAGDATA'
          Title.Caption = 'Data'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C_Recebedor'
          Title.Caption = 'Recebedor'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAGVALOR'
          Title.Caption = 'Valor'
          Width = 100
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 544
      Top = 6
      Width = 142
      Height = 384
      Align = alRight
      BorderWidth = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 536
      ExplicitTop = 70
      DesignSize = (
        142
        384)
      object Label6: TLabel
        Left = 6
        Top = 6
        Width = 130
        Height = 15
        Align = alTop
        Alignment = taCenter
        Caption = 'Filtros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 34
      end
      object RECEBEDOR: TEdit
        Left = 6
        Top = 40
        Width = 130
        Height = 21
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        NumbersOnly = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TextHint = 'Recebedor (C'#243'digo)'
        OnChange = RECEBEDORChange
        ExplicitWidth = 200
      end
      object DATA: TEdit
        Left = 6
        Top = 94
        Width = 130
        Height = 21
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        TextHint = 'Data'
        OnChange = RECEBEDORChange
        ExplicitWidth = 200
      end
      object CATEGORIA: TEdit
        Left = 6
        Top = 67
        Width = 130
        Height = 21
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        NumbersOnly = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TextHint = 'Categoria (C'#243'digo)'
        OnChange = RECEBEDORChange
        ExplicitWidth = 200
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 396
    Width = 692
    Height = 143
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 408
    ExplicitWidth = 765
    object Label1: TLabel
      Left = 15
      Top = 7
      Width = 39
      Height = 15
      Caption = 'N'#186' Ctrl.'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 15
      Top = 66
      Width = 89
      Height = 15
      Caption = 'Recebedor...........'
    end
    object Label3: TLabel
      Left = 15
      Top = 93
      Width = 75
      Height = 15
      Caption = 'Categoria........'
      FocusControl = DBEdit4
    end
    object Label4: TLabel
      Left = 15
      Top = 120
      Width = 83
      Height = 15
      Caption = 'Valor...................'
      FocusControl = DBEdit5
    end
    object Label5: TLabel
      Left = 198
      Top = 120
      Width = 77
      Height = 15
      Caption = 'Data Pag..........'
      FocusControl = DBE_Dat
    end
    object SBnCRec: TSpeedButton
      Left = 408
      Top = 56
      Width = 25
      Height = 25
      ImageIndex = 6
      ImageName = 'Pesquisar2'
      Images = Frm_Ico.Img25
      Flat = True
      OnClick = SBnCRecClick
    end
    object SBnCCat: TSpeedButton
      Left = 408
      Top = 83
      Width = 25
      Height = 25
      ImageIndex = 6
      ImageName = 'Pesquisar2'
      Images = Frm_Ico.Img25
      Flat = True
      OnClick = SBnCCatClick
    end
    object DBEdit1: TDBEdit
      Left = 15
      Top = 23
      Width = 50
      Height = 21
      DataField = 'PAGCTRL'
      DataSource = Src_Pag
      Enabled = False
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 147
      Top = 60
      Width = 261
      Height = 21
      TabStop = False
      DataField = 'C_Recebedor'
      DataSource = Src_Pag
      TabOrder = 5
    end
    object DBE_Rec: TDBEdit
      Left = 80
      Top = 60
      Width = 61
      Height = 21
      DataField = 'PAGREC'
      DataSource = Src_Pag
      TabOrder = 0
      OnKeyDown = DBE_RecKeyDown
    end
    object DBEdit4: TDBEdit
      Left = 147
      Top = 87
      Width = 261
      Height = 21
      TabStop = False
      DataField = 'C_Categoria'
      DataSource = Src_Pag
      TabOrder = 6
    end
    object DBE_Cat: TDBEdit
      Left = 80
      Top = 87
      Width = 61
      Height = 21
      DataField = 'PAGCAT'
      DataSource = Src_Pag
      TabOrder = 1
      OnKeyDown = DBE_CatKeyDown
    end
    object DBEdit5: TDBEdit
      Left = 80
      Top = 114
      Width = 89
      Height = 21
      DataField = 'PAGVALOR'
      DataSource = Src_Pag
      TabOrder = 2
    end
    object DBE_Dat: TDBEdit
      Left = 255
      Top = 114
      Width = 94
      Height = 21
      DataField = 'PAGDATA'
      DataSource = Src_Pag
      TabOrder = 3
      OnExit = DBE_DatExit
    end
  end
  object Src_Pag: TDataSource
    DataSet = DM3.Tb_Pag
    OnDataChange = Src_PagDataChange
    Left = 424
    Top = 112
  end
end
