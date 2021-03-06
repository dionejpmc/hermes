unit UVenda;

interface
uses Classes, UProduto,UCliente;
type
  TVenda = class(TObject)

  private

  protected
    FNumNota:integer;
    FSerie:string;
    FUmaListaProduto:TList;
    FDesconto:Double;
    FValorTotalVenda:Double;
    FDataVenda:string;
    FUmCliente:TCliente;

  public
    procedure setNumNota(vNumNota:integer);
    procedure setSerie(vSerie:string);
    procedure setUmaListaProduto(vUmaListaProduto:TList);
    procedure setDesconto(vDesconto:Double);
    procedure setValorTotalVenda(vValorTotalVenda:Double);
    procedure setDataVenda(vDataVenda:String);
    procedure setUmCliente(vUmCliente:TCliente);

    function getNumNota:integer;
    function getSerie:string;
    function getUmaListaProduto:TList;
    function getDesconto:Double;
    function getValorTotalVenda:Double;
    function getDataVenda:string;
    function getUmCliente:TCliente;

     property NumNota:integer read getNumNota write setNumNota;
     property Serie:string read getSerie write setSerie ;
     property UmaListaProduto:Tlist read getUmaListaProduto  write setUmaListaProduto;
     property Desconto:Double read getDesconto  write setDesconto;
     property ValorTotalVenda:Double read getValorTotalVenda  write setValorTotalVenda ;
     property DataVenda:string read getDataVenda  write setDataVenda;
     property UmCliente:TCliente read getUmCliente  write setUmCliente;

     constructor Criar;
     destructor Destruir;
     function getProdutos(Index: integer):tProduto;

  end;

implementation

{ Venda }

function TVenda.getProdutos(Index: integer): TProduto;
begin
  Result:=TProduto( FUmaListaProduto.Items[Index]);
end;

constructor TVenda.Criar;
begin
    FNumNota:=0;
    FSerie:='';
    FUmaListaProduto:= TList.Create;
    FDesconto:=0;
    FValorTotalVenda:=0;
    FDataVenda:='';
    FUmCliente:= TCliente.Create;
end;

destructor TVenda.Destruir;
begin
     FUmaListaProduto.Free;
     FUmCliente.Destroy;
end;

function TVenda.getDataVenda: string;
begin
    Result:= FDataVenda;
end;

function TVenda.getDesconto: Double;
begin
   Result:=FDesconto;
end;

function TVenda.getNumNota: integer;
begin
   Result:=FNumNota;
end;

function TVenda.getSerie: string;
begin
   Result:= FSerie;
end;

function TVenda.getUmaListaProduto: TList;
begin
   Result:= FUmaListaProduto;
end;

function TVenda.getUmCliente: TCliente;
begin
  Result:= FUmCliente;
end;

function TVenda.getValorTotalVenda: Double;
begin
 Result:=FValorTotalVenda;
end;

procedure TVenda.setDataVenda(vDataVenda: String);
begin
    FDataVenda:= vDataVenda;
end;

procedure TVenda.setDesconto(vDesconto: Double);
begin
   FDesconto:=vDesconto;
end;

procedure TVenda.setNumNota(vNumNota: integer);
begin
   FNumNota:=vNumNota;
end;

procedure TVenda.setSerie(vSerie: string);
begin
   FSerie:=vSerie;
end;

procedure TVenda.setUmaListaProduto(vUmaListaProduto: TList);
begin
  FUmaListaProduto:=vUmaListaProduto;
end;

procedure TVenda.setUmCliente(vUmCliente: TCliente);
begin
   FUmCliente:= UmCliente;
end;

procedure TVenda.setValorTotalVenda(vValorTotalVenda: Double);
begin
   FValorTotalVenda:=vValorTotalVenda;
end;

end.
