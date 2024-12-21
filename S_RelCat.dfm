object Frm_RelCat: TFrm_RelCat
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de gastos por Categoria'
  ClientHeight = 374
  ClientWidth = 462
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  StyleName = 'Glossy'
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 462
    Height = 296
    Align = alClient
    BorderWidth = 5
    TabOrder = 0
    ExplicitWidth = 620
    ExplicitHeight = 240
    object DBGrid1: TDBGrid
      Left = 6
      Top = 6
      Width = 450
      Height = 284
      Align = alClient
      DataSource = Src_PagCat
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CATNOME'
          Title.Caption = 'Categoria'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor'
          Width = 100
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 296
    Width = 462
    Height = 78
    Align = alBottom
    TabOrder = 1
    ExplicitWidth = 622
    DesignSize = (
      462
      78)
    object Label1: TLabel
      Left = 6
      Top = 18
      Width = 82
      Height = 15
      Caption = 'Data Inicial........'
    end
    object Label2: TLabel
      Left = 6
      Top = 50
      Width = 82
      Height = 15
      Caption = 'Data Final..........'
    end
    object BTnSelecionar: TButton
      Left = 330
      Top = 10
      Width = 60
      Height = 60
      Hint = 'Selecionar'
      Anchors = [akRight, akBottom]
      ImageIndex = 7
      ImageName = 'Atualizar'
      ImageMargins.Left = 3
      Images = Frm_Ico.Img60
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BTnSelecionarClick
    end
    object BTnImpressao: TButton
      Left = 396
      Top = 10
      Width = 60
      Height = 60
      Hint = 'Imprimir'
      Anchors = [akRight, akBottom]
      ImageIndex = 8
      ImageName = 'Imprimir'
      ImageMargins.Left = 3
      Images = Frm_Ico.Img60
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BTnImpressaoClick
    end
    object MDT1: TMaskEdit
      Left = 74
      Top = 12
      Width = 69
      Height = 21
      EditMask = '!99/99/0000;1; '
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
    end
    object MDT2: TMaskEdit
      Left = 74
      Top = 44
      Width = 69
      Height = 21
      EditMask = '!99/99/0000;1; '
      MaxLength = 10
      TabOrder = 3
      Text = '  /  /    '
    end
  end
  object qPagCat: TFDQuery
    Connection = DM1.BD
    SQL.Strings = (
      'select sum(PAGVALOR) as VALOR, PAGCAT,'
      '       CATNOME'
      '  from PAGAMENTOS, CATEGORIAS'
      ' where PAGCAT = CATCOD'
      '   and PAGDATA between :MDT1 and :MDT2'
      ' group by PAGCAT, CATNOME')
    Left = 176
    Top = 64
    ParamData = <
      item
        Name = 'MDT1'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MDT2'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object qPagCatPAGCAT: TFMTBCDField
      FieldName = 'PAGCAT'
      Origin = 'PAGCAT'
      DisplayFormat = '000000'
      Precision = 38
      Size = 38
    end
    object qPagCatCATNOME: TStringField
      FieldName = 'CATNOME'
      Origin = 'CATNOME'
      Size = 50
    end
    object qPagCatVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 38
      Size = 38
    end
  end
  object Src_PagCat: TDataSource
    DataSet = qPagCat
    Left = 208
    Top = 64
  end
  object frxRel: TfrxReport
    Version = '2023.3.4'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45647.359241585650000000
    ReportOptions.LastChange = 45647.484238877320000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 248
    Top = 136
    Datasets = <
      item
        DataSet = dsRel
        DataSetName = 'ds'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object bandaCabecalho: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 52.000000230000000000
        Top = 16.000000000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 69.574826440000000000
          Height = 16.000000000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
        end
        object mmoTitulo: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Top = 32.000000000000000000
          Width = 719.000000000000000000
          Height = 20.000000000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'T'#237'tulo do Relat'#243'rio')
          ParentFont = False
        end
      end
      object bandaRodape: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 16.000000000000000000
        Top = 240.000000000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 648.535891333437500000
          Width = 69.574826440000000000
          Height = 16.000000000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
      end
      object bandaGastos: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 16.000000000000000000
        Top = 164.000000000000000000
        Width = 718.110700000000000000
        DataSet = dsRel
        DataSetName = 'ds'
        RowCount = 0
        object dsPAGCAT: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = dsRel
          DataSetName = 'ds'
          DisplayFormat.FormatStr = '000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ds."PAGCAT"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 48.000000000000000000
          Width = 8.000000000000000000
          Height = 16.000000000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '-')
          ParentFont = False
          VAlign = vaCenter
        end
        object dsCATNOME: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 56.000000000000000000
          Width = 534.000000000000000000
          Height = 16.000000000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'CATNOME'
          DataSet = dsRel
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[ds."CATNOME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 590.000000000000000000
          Width = 128.000000000000000000
          Height = 16.000000000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = dsRel
          DataSetName = 'ds'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ds."VALOR"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object bandaTitulo: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 128.000000000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 590.000000000000000000
          Height = 17.000000000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Categoria')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 590.000000000000000000
          Width = 128.000000000000000000
          Height = 17.000000000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object dsRel: TfrxDBDataset
    UserName = 'ds'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PAGCAT=PAGCAT'
      'CATNOME=CATNOME'
      'VALOR=VALOR')
    DataSet = qPagCat
    BCDToCurrency = False
    DataSetOptions = []
    Left = 288
    Top = 136
  end
end
