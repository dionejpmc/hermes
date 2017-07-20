unit UDM;

interface

uses
  SysUtils, Classes, IBDatabase, DB, IBCustomDataSet, RpDefine, RpCon, RpConDS,
  DBClient, SOAPConn, TypInfo, WebServExp, WSDLBind, XMLSchema, InvokeRegistry,
  WSDLIntf, SOAPPasInv, SOAPHTTPPasInv, SOAPHTTPDisp, WebBrokerSOAP, WSDLPub,
  IWDataModulePool, Bde.DBTables, Data.DBXOdbc, Data.SqlExpr, Data.FMTBcd,
  Datasnap.Provider, Data.DBXPool, SimpleDS;

type
  TDataModule1 = class(TDataModule)
    SQLTableVendas: TSQLTable;
    SQLTableVendasnumnota: TIntegerField;
    SQLTableVendasserie: TWideStringField;
    SQLTableVendasvalortotalnota: TSingleField;
    SQLTableVendasdesconto: TSingleField;
    SQLTableVendasidcliente: TIntegerField;
    SQLTableVendasstatus: TWideMemoField;
    SQLTableVendasdatavenda: TWideMemoField;
    SQLConnection1: TSQLConnection;
    SQLQueryVT: TSQLQuery;
    SQLTableVendasTemp: TSQLTable;
    DataSetProviderVendasTemp: TDataSetProvider;
    SQLTableVendasItensTemp: TSQLTable;
    SQLTableFornecedores: TSQLTable;
    SQLTableClientes: TSQLTable;
    SQLTableConfig: TSQLTable;
    DataSetProviderVendasItensTemp: TDataSetProvider;
    SQLTableVendasItensTempnumnota: TIntegerField;
    SQLTableVendasItensTempserie: TWideStringField;
    SQLTableVendasItensTempidcliente: TIntegerField;
    SQLTableVendasItensTempidproduto: TIntegerField;
    SQLTableVendasItensTempqtde: TSingleField;
    DataSourceVendasTemp: TDataSource;
    SQLQueryVTserie: TWideStringField;
    SQLQueryVTvalortotalnota: TSingleField;
    SQLQueryVTidcliente: TIntegerField;
    SQLQueryVTdesconto: TSingleField;
    SQLQueryVTnumnota: TIntegerField;
    SQLQueryProdutos: TSQLQuery;
    SQLTableFornecedoresidfornecedor: TIntegerField;
    SQLTableFornecedoresrazaosocial: TWideStringField;
    SQLTableFornecedoresfantasia: TWideStringField;
    SQLTableFornecedorescnpj: TWideStringField;
    SQLTableFornecedorescep: TWideStringField;
    SQLTableFornecedoresestado: TWideStringField;
    SQLTableFornecedorescidade: TWideStringField;
    SQLTableFornecedoreslogradouro: TWideStringField;
    SQLTableFornecedoresnumero: TWideStringField;
    SQLTableFornecedoresie: TWideStringField;
    SQLTableFornecedorestel1: TWideStringField;
    SQLTableFornecedorestel2: TWideStringField;
    SQLTableFornecedoresemail: TWideStringField;
    SQLTableFornecedoresobs: TWideStringField;
    SQLTableFornecedoresibgeuf: TWideStringField;
    SQLTableFornecedoresibgemunicipio: TWideStringField;
    SQLQueryFornecedores: TSQLQuery;
    SQLQueryVTIT: TSQLQuery;
    SQLTableVendasTempserie: TWideStringField;
    SQLTableVendasTempvalortotalnota: TSingleField;
    SQLTableVendasTempidcliente: TIntegerField;
    SQLTableVendasTempdesconto: TSingleField;
    SQLTableVendasTempnumnota: TIntegerField;
    SQLTableVendasTempdatavenda: TWideStringField;
    DataSourceProdutos: TDataSource;
    SQLTableProdutos: TSQLTable;
    SQLTableProdutosidproduto: TWideStringField;
    SQLTableProdutoscodbarras: TWideStringField;
    SQLTableProdutosqtde: TFloatField;
    SQLTableProdutosdescricao: TWideStringField;
    SQLTableProdutosvalorvenda: TFloatField;
    SQLTableProdutosvalorcompra: TFloatField;
    SQLTableProdutosicms: TFloatField;
    SQLTableProdutosipi: TFloatField;
    SQLTableProdutosmarca: TWideStringField;
    SQLTableProdutosmodelo: TWideStringField;
    SQLTableProdutoslocalizacao: TWideStringField;
    SQLTableProdutosobs: TWideStringField;
    SQLTableProdutostipo: TWideStringField;
    SQLQueryProdutosidproduto: TWideStringField;
    SQLQueryProdutoscodbarras: TWideStringField;
    SQLQueryProdutosqtde: TFloatField;
    SQLQueryProdutosdescricao: TWideStringField;
    SQLQueryProdutosvalorvenda: TFloatField;
    SQLQueryProdutosvalorcompra: TFloatField;
    SQLQueryProdutosicms: TFloatField;
    SQLQueryProdutosipi: TFloatField;
    SQLQueryProdutosmarca: TWideStringField;
    SQLQueryProdutosmodelo: TWideStringField;
    SQLQueryProdutoslocalizacao: TWideStringField;
    SQLQueryProdutosobs: TWideStringField;
    SQLQueryProdutostipo: TWideStringField;
    DataSetProviderProdutos: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
