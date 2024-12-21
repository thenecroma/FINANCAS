object DM1: TDM1
  Height = 214
  Width = 285
  object BD: TFDConnection
    Params.Strings = (
      'Database=REC1'
      'User_Name=REC2'
      'Password=a'
      'DriverID=Ora')
    LoginPrompt = False
    Left = 160
    Top = 45
  end
  object FDTransaction1: TFDTransaction
    Connection = BD
    Left = 160
    Top = 90
  end
end
