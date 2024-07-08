object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 164
  Top = 125
  Height = 133
  Width = 207
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\acer\OneDrive\Documents\Ada tugas\UTS VISUAL\libmysql.d' +
      'll'
    Left = 16
    Top = 16
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT*FROM SATUAN'
      '')
    Params = <>
    Left = 72
    Top = 16
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 136
    Top = 16
  end
end
