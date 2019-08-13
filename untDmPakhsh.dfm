object dmPakhsh: TdmPakhsh
  OldCreateOrder = False
  Height = 241
  Width = 329
  object Con: TUniConnection
    ProviderName = 'SQL Server'
    Database = 'Pakhsh'
    PoolingOptions.MaxPoolSize = 500
    Pooling = True
    Username = 'sa'
    Server = '.'
    Left = 24
    Top = 16
    EncryptedPassword = 'CEFFCDFFCCFF'
  end
  object SqlServerProv: TSQLServerUniProvider
    Left = 24
    Top = 81
  end
  object qrySetting: TUniQuery
    Connection = Con
    Left = 22
    Top = 148
  end
  object RESTClient: TRESTClient
    Accept = 'application/json'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'http://127.0.0.1:3000/'
    Params = <>
    Left = 96
    Top = 22
  end
  object RESTResponse: TRESTResponse
    Left = 248
    Top = 22
  end
  object RESTRequest: TRESTRequest
    Client = RESTClient
    Method = rmPOST
    Params = <>
    Response = RESTResponse
    Timeout = 10000
    SynchronizedEvents = False
    Left = 168
    Top = 22
  end
end
