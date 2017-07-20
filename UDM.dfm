object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 454
  Width = 878
  object SQLTableVendas: TSQLTable
    IndexName = '1'
    MaxBlobSize = 1
    SQLConnection = SQLConnection1
    TableName = 'vendas'
    Left = 136
    Top = 88
    object SQLTableVendasnumnota: TIntegerField
      FieldName = 'numnota'
    end
    object SQLTableVendasserie: TWideStringField
      FieldName = 'serie'
      FixedChar = True
      Size = 1
    end
    object SQLTableVendasvalortotalnota: TSingleField
      FieldName = 'valortotalnota'
    end
    object SQLTableVendasdesconto: TSingleField
      FieldName = 'desconto'
    end
    object SQLTableVendasidcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object SQLTableVendasstatus: TWideMemoField
      FieldName = 'status'
      BlobType = ftWideMemo
      Size = 1
    end
    object SQLTableVendasdatavenda: TWideMemoField
      FieldName = 'datavenda'
      BlobType = ftWideMemo
      Size = 1
    end
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'postgresSQLodbc'
    DriverName = 'ODBC'
    LoadParamsOnConnect = True
    LoginPrompt = False
    Params.Strings = (
      'drivername=ODBC'
      'hostname=localhost'
      'database=PostgreSQL35W'
      'user_name=postgres'
      'password=123'
      'port=5432')
    TableScope = [tsSynonym, tsSysTable, tsTable, tsView]
    Connected = True
    Left = 112
    Top = 16
  end
  object SQLQueryVT: TSQLQuery
    SchemaName = 'public'
    GetMetadata = True
    DataSource = DataSourceVendasTemp
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *  FROM vendas_geral_temp')
    SQLConnection = SQLConnection1
    Left = 256
    Top = 208
    object SQLQueryVTserie: TWideStringField
      FieldName = 'serie'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SQLQueryVTvalortotalnota: TSingleField
      FieldName = 'valortotalnota'
    end
    object SQLQueryVTidcliente: TIntegerField
      FieldName = 'idcliente'
      Required = True
    end
    object SQLQueryVTdesconto: TSingleField
      FieldName = 'desconto'
    end
    object SQLQueryVTnumnota: TIntegerField
      FieldName = 'numnota'
      Required = True
    end
  end
  object SQLTableVendasTemp: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'vendas_geral_temp'
    Left = 256
    Top = 88
    object SQLTableVendasTempserie: TWideStringField
      FieldName = 'serie'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SQLTableVendasTempvalortotalnota: TSingleField
      FieldName = 'valortotalnota'
    end
    object SQLTableVendasTempidcliente: TIntegerField
      FieldName = 'idcliente'
      Required = True
    end
    object SQLTableVendasTempdesconto: TSingleField
      FieldName = 'desconto'
    end
    object SQLTableVendasTempnumnota: TIntegerField
      FieldName = 'numnota'
      Required = True
    end
    object SQLTableVendasTempdatavenda: TWideStringField
      FieldName = 'datavenda'
      Size = 12
    end
  end
  object DataSetProviderVendasTemp: TDataSetProvider
    DataSet = SQLTableVendasTemp
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 256
    Top = 152
  end
  object SQLTableVendasItensTemp: TSQLTable
    IndexFieldNames = 'numnota;serie;idcliente;idproduto'
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'vendas_geral_itens_temp'
    Left = 392
    Top = 88
    object SQLTableVendasItensTempnumnota: TIntegerField
      FieldName = 'numnota'
      Required = True
    end
    object SQLTableVendasItensTempserie: TWideStringField
      FieldName = 'serie'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SQLTableVendasItensTempidcliente: TIntegerField
      FieldName = 'idcliente'
      Required = True
    end
    object SQLTableVendasItensTempidproduto: TIntegerField
      FieldName = 'idproduto'
      Required = True
    end
    object SQLTableVendasItensTempqtde: TSingleField
      FieldName = 'qtde'
      Required = True
    end
  end
  object SQLTableFornecedores: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'fornecedores'
    Left = 520
    Top = 88
    object SQLTableFornecedoresidfornecedor: TIntegerField
      FieldName = 'idfornecedor'
      Required = True
    end
    object SQLTableFornecedoresrazaosocial: TWideStringField
      FieldName = 'razaosocial'
      Size = 50
    end
    object SQLTableFornecedoresfantasia: TWideStringField
      FieldName = 'fantasia'
      Size = 50
    end
    object SQLTableFornecedorescnpj: TWideStringField
      FieldName = 'cnpj'
      Size = 25
    end
    object SQLTableFornecedorescep: TWideStringField
      FieldName = 'cep'
      Size = 25
    end
    object SQLTableFornecedoresestado: TWideStringField
      FieldName = 'estado'
      Size = 25
    end
    object SQLTableFornecedorescidade: TWideStringField
      FieldName = 'cidade'
      Size = 25
    end
    object SQLTableFornecedoreslogradouro: TWideStringField
      FieldName = 'logradouro'
      Size = 25
    end
    object SQLTableFornecedoresnumero: TWideStringField
      FieldName = 'numero'
      Size = 25
    end
    object SQLTableFornecedoresie: TWideStringField
      FieldName = 'ie'
      Size = 25
    end
    object SQLTableFornecedorestel1: TWideStringField
      FieldName = 'tel1'
      Size = 25
    end
    object SQLTableFornecedorestel2: TWideStringField
      FieldName = 'tel2'
      Size = 25
    end
    object SQLTableFornecedoresemail: TWideStringField
      FieldName = 'email'
      Size = 25
    end
    object SQLTableFornecedoresobs: TWideStringField
      FieldName = 'obs'
      Size = 50
    end
    object SQLTableFornecedoresibgeuf: TWideStringField
      FieldName = 'ibgeuf'
      Size = 25
    end
    object SQLTableFornecedoresibgemunicipio: TWideStringField
      FieldName = 'ibgemunicipio'
      Size = 25
    end
  end
  object SQLTableClientes: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'clientes'
    Left = 648
    Top = 88
  end
  object SQLTableConfig: TSQLTable
    Left = 752
    Top = 88
  end
  object DataSetProviderVendasItensTemp: TDataSetProvider
    DataSet = SQLTableVendasItensTemp
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 392
    Top = 152
  end
  object DataSourceVendasTemp: TDataSource
    DataSet = SQLTableVendasTemp
    Left = 256
    Top = 264
  end
  object SQLQueryProdutos: TSQLQuery
    SchemaName = 'public'
    GetMetadata = True
    ObjectView = True
    Active = True
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT *  FROM produtos')
    SQLConnection = SQLConnection1
    Left = 41
    Top = 210
    object SQLQueryProdutosidproduto: TWideStringField
      FieldName = 'idproduto'
      Required = True
      Size = 255
    end
    object SQLQueryProdutoscodbarras: TWideStringField
      FieldName = 'codbarras'
      Required = True
      Size = 255
    end
    object SQLQueryProdutosqtde: TFloatField
      FieldName = 'qtde'
      Required = True
    end
    object SQLQueryProdutosdescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 255
    end
    object SQLQueryProdutosvalorvenda: TFloatField
      FieldName = 'valorvenda'
      Required = True
    end
    object SQLQueryProdutosvalorcompra: TFloatField
      FieldName = 'valorcompra'
    end
    object SQLQueryProdutosicms: TFloatField
      FieldName = 'icms'
    end
    object SQLQueryProdutosipi: TFloatField
      FieldName = 'ipi'
    end
    object SQLQueryProdutosmarca: TWideStringField
      FieldName = 'marca'
      Size = 50
    end
    object SQLQueryProdutosmodelo: TWideStringField
      FieldName = 'modelo'
      Size = 50
    end
    object SQLQueryProdutoslocalizacao: TWideStringField
      FieldName = 'localizacao'
      Size = 50
    end
    object SQLQueryProdutosobs: TWideStringField
      FieldName = 'obs'
      Size = 50
    end
    object SQLQueryProdutostipo: TWideStringField
      FieldName = 'tipo'
      Size = 10
    end
  end
  object SQLQueryFornecedores: TSQLQuery
    Params = <>
    Left = 523
    Top = 208
  end
  object SQLQueryVTIT: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 392
    Top = 208
  end
  object DataSourceProdutos: TDataSource
    DataSet = SQLTableProdutos
    Left = 40
    Top = 264
  end
  object SQLTableProdutos: TSQLTable
    Active = True
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'produtos'
    Left = 40
    Top = 88
    object SQLTableProdutosidproduto: TWideStringField
      FieldName = 'idproduto'
      Required = True
      Size = 255
    end
    object SQLTableProdutoscodbarras: TWideStringField
      FieldName = 'codbarras'
      Required = True
      Size = 255
    end
    object SQLTableProdutosqtde: TFloatField
      FieldName = 'qtde'
      Required = True
    end
    object SQLTableProdutosdescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 255
    end
    object SQLTableProdutosvalorvenda: TFloatField
      FieldName = 'valorvenda'
      Required = True
    end
    object SQLTableProdutosvalorcompra: TFloatField
      FieldName = 'valorcompra'
    end
    object SQLTableProdutosicms: TFloatField
      FieldName = 'icms'
    end
    object SQLTableProdutosipi: TFloatField
      FieldName = 'ipi'
    end
    object SQLTableProdutosmarca: TWideStringField
      FieldName = 'marca'
      Size = 50
    end
    object SQLTableProdutosmodelo: TWideStringField
      FieldName = 'modelo'
      Size = 50
    end
    object SQLTableProdutoslocalizacao: TWideStringField
      FieldName = 'localizacao'
      Size = 50
    end
    object SQLTableProdutosobs: TWideStringField
      FieldName = 'obs'
      Size = 50
    end
    object SQLTableProdutostipo: TWideStringField
      FieldName = 'tipo'
      Size = 10
    end
  end
  object DataSetProviderProdutos: TDataSetProvider
    DataSet = SQLTableProdutos
    ResolveToDataSet = True
    Options = [poFetchBlobsOnDemand, poFetchDetailsOnDemand, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 40
    Top = 152
  end
end
