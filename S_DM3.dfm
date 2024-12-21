object DM3: TDM3
  Height = 246
  Width = 285
  PixelsPerInch = 120
  object Tb_Pag: TFDQuery
    AfterInsert = Tb_PagAfterInsert
    BeforePost = Tb_PagBeforePost
    OnCalcFields = Tb_PagCalcFields
    Connection = DM1.BD
    SQL.Strings = (
      'select * from PAGAMENTOS'
      ' order by PAGDATA desc')
    Left = 33
    Top = 24
    object Tb_PagC_Recebedor: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_Recebedor'
      Size = 50
      Calculated = True
    end
    object Tb_PagC_Categoria: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_Categoria'
      Size = 50
      Calculated = True
    end
    object Tb_PagPAGCTRL: TFMTBCDField
      FieldName = 'PAGCTRL'
      Origin = 'PAGCTRL'
      Precision = 38
      Size = 38
    end
    object Tb_PagPAGREC: TFMTBCDField
      FieldName = 'PAGREC'
      Origin = 'PAGREC'
      Precision = 38
      Size = 38
    end
    object Tb_PagPAGCAT: TFMTBCDField
      FieldName = 'PAGCAT'
      Origin = 'PAGCAT'
      Precision = 38
      Size = 38
    end
    object Tb_PagPAGVALOR: TFMTBCDField
      FieldName = 'PAGVALOR'
      Origin = 'PAGVALOR'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 38
      Size = 38
    end
    object Tb_PagPAGDATA: TDateTimeField
      FieldName = 'PAGDATA'
      Origin = 'PAGDATA'
      EditMask = '!99/99/0000;1; '
    end
  end
  object Tb_Ent: TFDQuery
    BeforePost = Tb_PagBeforePost
    OnCalcFields = Tb_PagCalcFields
    Connection = DM1.BD
    SQL.Strings = (
      'select * from ENTRADAS'
      ' order by ENTDATA desc')
    Left = 97
    Top = 24
    object Tb_EntENTCTRL: TFMTBCDField
      FieldName = 'ENTCTRL'
      Origin = 'ENTCTRL'
      Precision = 38
      Size = 38
    end
    object Tb_EntENTVALOR: TFMTBCDField
      FieldName = 'ENTVALOR'
      Origin = 'ENTVALOR'
      Precision = 38
      Size = 38
    end
    object Tb_EntENTDATA: TDateTimeField
      FieldName = 'ENTDATA'
      Origin = 'ENTDATA'
    end
    object Tb_EntENTREC: TFMTBCDField
      FieldName = 'ENTREC'
      Origin = 'ENTREC'
      Precision = 38
      Size = 38
    end
    object Tb_EntENTCAT: TFMTBCDField
      FieldName = 'ENTCAT'
      Origin = 'ENTCAT'
      Precision = 38
      Size = 38
    end
  end
end
