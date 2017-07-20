unit UDaoProduto;

interface
uses UProduto,classes, DB, SysUtils,SysConst,Controls, Dialogs,DateUtils, UDAO,SqlExpr, StdCtrls,DBXCommon,UListaProduto;
  type TDaoProduto = class (TDao)

    protected
      UmProduto:TProduto;
    public

      function Salvar(Objeto: TProduto): string;
      function Carregar(Objeto: TProduto):String;
      function GetDataSourceProduto:TDataSource;
      function carregarListaProdutos(UmaLista:TListaProduto):TListaProduto;
      constructor Create; override;
      destructor Destroy;
      function VirgulaByPonto(vValue:String):String;


  end;

implementation
var TD: TDBXTransaction;

{ TDaoProduto }

function TDaoProduto.Carregar(Objeto: TProduto): String;
var MSG:string;
    UmProduto:TProduto;
begin
    UmProduto:= Objeto;
    TD:= FDM.SQLConnection1.BeginTransaction(TDBXIsolations.ReadCommitted);
    try
        if not FDM.SQLConnection1.Connected then
        begin
          FDM.SQLConnection1.Connected:=True;
        end;
        FDM.SQLQueryProdutos.Close;
        FDM.SQLQueryProdutos.SQL.Clear;
        FDM.SQLQueryProdutos.SQL.Add('SELECT * FROM produtos WHERE idproduto LIKE ' + '''' + UmProduto.CodBarrasProduto + '''');
        FDM.SQLQueryProdutos.Open;

        UmProduto.IdProduto:= FDM.SQLQueryProdutosidproduto.Value;
        UmProduto.CodBarrasProduto:=FDM.SQLQueryProdutoscodbarras.Value;
        UmProduto.DescricaoProduto:=FDM.SQLQueryProdutosdescricao.Value;

        UmProduto.ValorVendaProduto:= FDM.SQLQueryProdutosvalorvenda.Value;
        UmProduto.Localizacao:= FDM.SQLQueryProdutoslocalizacao.Value;

        FDM.SQLConnection1.CommitFreeAndNil(TD);
        MSG:='OBJETO CARREGADO.'
    except
        MSG:='ERRO AO CARREGAR OBJETO, OBJETO PODE NAO TER SIDO ENCONTRADO.';
        FDM.SQLConnection1.RollbackFreeAndNil(TD);
    end;
    Result:=MSG;
end;

function TDaoProduto.carregarListaProdutos(UmaLista: TListaProduto): TListaProduto;
var MSG:string;
    UmProduto:TProduto;
    I:Integer;
begin
    TD:= FDM.SQLConnection1.BeginTransaction(TDBXIsolations.ReadCommitted);
    try
        if not FDM.SQLConnection1.Connected then
        begin
          FDM.SQLConnection1.Connected:=True;
        end;
        FDM.SQLQueryProdutos.Close;
        FDM.SQLQueryProdutos.SQL.Clear;
        FDM.SQLQueryProdutos.SQL.Add('SELECT * FROM produtos ORDER BY descricao');
        FDM.SQLQueryProdutos.Open;
        FDM.SQLQueryProdutos.First;
        while not FDM.SQLQueryProdutos.Eof do
        begin
            UmProduto:= TProduto.Criar;
            UmProduto.ValorVendaProduto:=0.00;
            UmProduto.IdProduto:= FDM.SQLQueryProdutosidproduto.Value;
            UmProduto.CodBarrasProduto:=FDM.SQLQueryProdutoscodbarras.Value;
            UmProduto.DescricaoProduto:=FDM.SQLQueryProdutosdescricao.Value;
            UmProduto.ValorVendaProduto:= FDM.SQLQueryProdutosvalorvenda.Value;
            UmProduto.Localizacao:= FDM.SQLQueryProdutoslocalizacao.Value;
            UmaLista.AdicionarProduto(UmProduto);
            FDM.SQLQueryProdutos.Next;
        end
    except
      ShowMessage('Erro ao carregar lista de produtos!');
    end;
    Result:=UmaLista;
end;

constructor TDaoProduto.Create;
begin
 inherited;
end;
destructor TDaoProduto.Destroy;
begin
 inherited;

end;

function TDaoProduto.GetDataSourceProduto: TDataSource;
begin
Result:=FDM.DataSourceProdutos;
end;

function TDaoProduto.Salvar(Objeto: TProduto): string;
var MSG:String;
begin
    UmProduto:=Objeto;
    TD:= FDM.SQLConnection1.BeginTransaction(TDBXIsolations.ReadCommitted);
    try
        if not FDM.SQLConnection1.Connected then
         begin
             FDM.SQLConnection1.Connected:=True;
         end;
         if (UmProduto.IdProduto  = '0') or (UmProduto.IdProduto  = '') then
         begin
               FDM.SQLConnection1.ExecuteDirect('INSERT INTO produtos' +
                                                '(idproduto, codbarras, qtde, descricao, valorvenda, icms, ipi, marca, modelo, localizacao, obs, tipo)' +
                                                'VALUES (' + '''' +
                                                 UmProduto.CodBarrasProduto + '''' +',' + ''''+
                                                 UmProduto.CodBarrasProduto + '''' +',' + ''''+
                                                 FloatToStr(UmProduto.QtdeProduto) + '''' +','+ ''''+
                                                 UmProduto.DescricaoProduto + '''' +','+ ''''+
                                                 VirgulaByPonto( FloatToStr(UmProduto.ValorVendaProduto)) + '''' +','+ ''''+
                                                 VirgulaByPonto( FloatToStr(UmProduto.ICMS)) + '''' +','+ ''''+
                                                 VirgulaByPonto( FloatToStr(UmProduto.IPI)) + '''' +','+ ''''+
                                                 UmProduto.Marca + '''' +','+ ''''+
                                                 UmProduto.Modelo + '''' +','+ ''''+
                                                 UmProduto.Localizacao + ''''+','+ ''''+
                                                 UmProduto.Obs + ''''+','+ ''''+
                                                 UmProduto.TipoMedida + '''' +
                                                 ')');
         end
         else
         begin
//               FDM.SQLConnection1.ExecuteDirect('UPDATE produtos SET codbarras=?, qtde=?, descricao=?, valorvenda=?, valorcompra=?, icms=?, ipi=?, marca=?, modelo=?, local=?, obs=?, tipo 	WHERE <condition>');

         end;
         FDM.SQLConnection1.CommitFreeAndNil(TD);
         MSG:='PRODUTO SALVO COM SUCESSO';
  except
         FDM.SQLConnection1.RollbackFreeAndNil(TD);
         MSG:='ERRO AO SALVAR PRODUTO';
  end;
  Result:=MSG;
end;

function TDaoProduto.VirgulaByPonto(vValue: String): String;
var i:integer;
begin
    if vValue <>'' then begin
        for i := 0 to Length(vValue) do begin
            if vValue[i]=',' then vValue[i]:='.';

        end;
     end;
     Result := vValue;
end;

end.
