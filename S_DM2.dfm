object DM2: TDM2
  Height = 268
  Width = 313
  PixelsPerInch = 120
  object Tb_Cat: TFDQuery
    AfterInsert = Tb_CatAfterInsert
    BeforePost = Tb_CatBeforePost
    BeforeDelete = Tb_CatBeforeDelete
    Connection = DM1.BD
    SQL.Strings = (
      'select * from CATEGORIAS'
      ' order by CATCOD')
    Left = 24
    Top = 16
    object Tb_CatCATCOD: TFMTBCDField
      FieldName = 'CATCOD'
      Origin = 'CATCOD'
      DisplayFormat = '000000'
      Precision = 38
      Size = 38
    end
    object Tb_CatCATNOME: TStringField
      FieldName = 'CATNOME'
      Origin = 'CATNOME'
      Size = 50
    end
  end
  object Tb_Rec: TFDQuery
    AfterInsert = Tb_RecAfterInsert
    BeforePost = Tb_RecBeforePost
    BeforeDelete = Tb_RecBeforeDelete
    Connection = DM1.BD
    SQL.Strings = (
      'select * from RECEBEDORES'
      ' order by RECCOD')
    Left = 88
    Top = 16
    object Tb_RecRECCOD: TFMTBCDField
      FieldName = 'RECCOD'
      Origin = 'RECCOD'
      DisplayFormat = '000000'
      Precision = 38
      Size = 38
    end
    object Tb_RecRECNOME: TStringField
      FieldName = 'RECNOME'
      Origin = 'RECNOME'
      Size = 50
    end
    object Tb_RecRECPAGADOR: TStringField
      FieldName = 'RECPAGADOR'
      Origin = 'RECPAGADOR'
      Size = 1
    end
  end
  object Tb_Cfg: TFDQuery
    Connection = DM1.BD
    SQL.Strings = (
      'select * from CONFIGURACOES')
    Left = 34
    Top = 166
    object Tb_CfgCFGTEMA: TStringField
      FieldName = 'CFGTEMA'
      Origin = 'CFGTEMA'
    end
  end
end
