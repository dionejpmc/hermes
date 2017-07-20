unit UDaoVenda;

interface
uses UDao, UDM, DB, Classes,UVenda, SysUtils, UProduto, UCtrlProduto,Dialogs, Messages,DBXCommon,SqlExpr, StdCtrls;
type
    TDaoVenda = class (TDao)

    private

    protected

    public
          constructor Create;                                            override;
          destructor Destroy;                                            override;
          function SalvarVendaTemp( Objeto : TVenda): string;
          function getNumeroNota:integer;


    end;

implementation
var TD: TDBXTransaction;

{ TDaoVenda }


constructor TDaoVenda.Create;
begin
  inherited;

end;

destructor TDaoVenda.Destroy;
begin
  inherited;

end;

function TDaoVenda.getNumeroNota: integer;
begin
  Result:=1;
end;

function TDaoVenda.SalvarVendaTemp(Objeto: TVenda): string;
var MSG,SQL:String;
    UmaVenda:TVenda;
    UmProduto:Tproduto;
    i:integer;
begin
    UmaVenda:= Objeto;
    TD:= FDM.SQLConnection1.BeginTransaction(TDBXIsolations.ReadCommitted);
    FDM.SQLTableVendasTemp.Open;
    try
       if not FDM.SQLConnection1.Connected then
         begin
             FDM.SQLConnection1.Connected:=True;
         end;
        if not FDM.SQLTableVendasTemp.Active then
        begin
             FDM.SQLTableVendasTemp.Active:=True;
        end;
        if not FDM.SQLTableVendasItensTemp.Active   then
        begin
             FDM.SQLTableVendasItensTemp.Active :=True;
        end;
        FDM.SQLConnection1.ExecuteDirect('INSERT INTO vendas_geral_temp(serie, valortotalnota, desconto, datavenda, idcliente )' +
                                         'VALUES (' + '''' +
                                         UmaVenda.Serie + '''' +',' + '''' +
                                         StringReplace(FormatFloat('#0.00',UmaVenda.ValorTotalVenda), ',', '.', []) + ''''+',' + ''''+
                                         StringReplace(FormatFloat('#0.00',UmaVenda.Desconto), ',', '.', []) + ''''  +',' + ''''+
                                         UmaVenda.DataVenda + '''' +',' + '''' +
                                         IntToStr(1)  +  '''' +
                                         ')');
         FDM.SQLQueryVT.Close;
         FDM.SQLQueryVT.SQL.Clear;
         SQL:='SELECT numnota, serie, valortotalnota, desconto, idcliente FROM vendas_geral_temp ORDER BY numnota DESC LIMIT 1';
         FDM.SQLQueryVT.SQL.Add(SQL);
         FDM.SQLQueryVT.Open;
         for I := 0 to UmaVenda.UmaListaProduto.Count -1 do
         begin
            FDM.SQLConnection1.ExecuteDirect('INSERT INTO vendas_geral_itens_temp(numnota, serie, idcliente, idproduto, qtde )' +
                                           'VALUES (' + '''' +
                                            IntToStr(FDM.SQLQueryVTnumnota.Value) + '''' +',' + ''''+
                                            UmaVenda.Serie + '''' +',' + '''' +
                                            IntToStr(1) + '''' +',' + '''' +
                                            UmaVenda.getProdutos(i).IdProduto  + '''' +',' + '''' +
                                            FloatToStr(UmaVenda.getProdutos(i).QtdeProduto)  +  '''' +
                                            ')');
        end;

        FDM.SQLConnection1.CommitFreeAndNil(TD);
        MSG:='VENDA EFETUADA';
    except
        FDM.SQLConnection1.RollbackFreeAndNil(TD);
        MSG:='ERRO AO EFETUAR VENDA';
    end;
       Result:=MSG;
end;

end.
