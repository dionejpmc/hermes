unit UListaProduto;

interface
uses classes,Uproduto;
type TlistaProduto = Class (TList)
  private
  
  protected
        FListaProduto:TList;
  public
        procedure AdicionarProduto(Objeto:TProduto);
        procedure RemoverProduto(Index:integer);
        function ContarItens:Integer;
        function getProdutos(Index:integer):TProduto;
        procedure setUmaListaProduto(vListaProduto:TList);
        function getUmaListaProduto:TList;

        property UmaListaProduto:TList read getUmaListaProduto write setUmaListaProduto;

        constructor criar;
        destructor destruir;
         
End;

implementation

{ TlistaProduto }

procedure TlistaProduto.AdicionarProduto(Objeto: TProduto);
begin
     FListaProduto.Add(Objeto);
end;

function TlistaProduto.ContarItens: Integer;
begin
    Result:=UmaListaProduto.Count;
end;

constructor TlistaProduto.criar;
begin
    FListaProduto:=TList.Create;
end;

destructor TlistaProduto.destruir;
begin
   FListaProduto.Free;
end;

function TlistaProduto.getProdutos(Index: integer): TProduto;
begin
    Result:= TProduto(FListaProduto.Items[Index]);
end;

function TlistaProduto.getUmaListaProduto: TList;
begin
    Result:= FListaProduto;
end;

procedure TlistaProduto.RemoverProduto(Index: integer);
begin
   FListaProduto.Delete(Index);
end;

procedure TlistaProduto.setUmaListaProduto(vListaProduto: TList);
begin
   FListaProduto:= vListaProduto;
end;

end.
