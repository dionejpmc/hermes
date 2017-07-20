unit UProduto;

interface
uses classes;
type
  TProduto = class (TObject)

    protected

       FIdProduto:String;
       FCodBarrasProduto:String;
       FDescricaoProduto:string;
       FQtdeProduto:Double;
       FValorVendaProduto:Double;
       FValorCompra:Double;
       FMarca:String;
       FModelo:String;
       FIPI:Double;
       FICMS:Double;
       FLocalizacao:String;
       FTipoMedida:String;
       FObs:String;

    public
      constructor Criar;
      destructor Destroy;



      procedure setIdProduto(vIdProduto:String);
      procedure setCodBarrasProduto(vCodBarrasProduto:String);
      procedure setDescricaoProduto(vDescricaoProduto:String);
      procedure setValorVendaProduto(vValorVendaProduto:Double);
      procedure setQtdeProduto(vQtdeProduto:Double);
      procedure setValorCompra(vValorCompra:Double);
      procedure setMarca(vMarca:String);
      procedure setModelo(vModelo:String);
      procedure setIPI(vIPI:Double);
      procedure setICMS(vICMS:Double);
      procedure setLocalizacao(vLocalizacao:String);
      procedure setTipoMedida(vTipoMedida:String);
      procedure setObs(vObs:String);



      function getIdProduto:String;
      function getCodBarrasProduto:String;
      function getDescricaoProduto:String;
      function getValorvendaProduto:Double;
      function getQtdeProduto:Double;
      function getObs:String;
      function getValorCompra:Double;
      function getMarca:String;
      function getModelo:String;
      function getIPI:Double;
      function getICMS:Double;
      function getLocalizacao:String;
      function getTipoMedida:String;



      property IdProduto:String        read getIdProduto         write setIdProduto;
      property CodBarrasProduto:String  read getCodBarrasProduto  write setCodBarrasProduto;
      property DescricaoProduto:String  read getDescricaoProduto  write setDescricaoProduto;
      property ValorVendaProduto:Double read getValorVendaProduto write setValorVendaProduto;
      property QtdeProduto:Double       read getQtdeProduto       write setQtdeProduto;
      property ValorCompra:Double       read getValorCompra      write setValorCompra ;
      property Marca:String             read getMarca             write setMarca;
      property Modelo:String            read getModelo            write setModelo;
      property IPI:Double               read getIPI               write setIPI;
      property ICMS:Double              read getICMS             write setICMS;
      property Localizacao:String      read getLocalizacao      write setLocalizacao;
      property TipoMedida:String        read getTipoMedida        write setTipoMedida;
      property Obs:String               read getObs               write setObs;


  end;

implementation

{ TProduto }



constructor TProduto.Criar;
begin
    FIdProduto:= '';
    FCodBarrasProduto:='';
    FDescricaoProduto:='';
    FQtdeProduto:=0;
    FValorVendaProduto:=0;
    FValorCompra:=0;
    FMarca:='';
    FModelo:='';
    FIPI:=0;
    FICMS:=0;
    FLocalizacao:='';
    FTipoMedida:='';
    FObs:='';
end;

destructor TProduto.Destroy;
begin
end;

function TProduto.getCodBarrasProduto: String;
begin
    Result:= FCodBarrasProduto;
end;

function TProduto.getDescricaoProduto: String;
begin
    Result:= FDescricaoProduto;
end;

function TProduto.getICMS: Double;
begin
  Result:=FICMS;
end;

function TProduto.getIdProduto: String;
begin
    Result:= FIdProduto;
end;

function TProduto.getIPI: Double;
begin
   Result:= FIPI;
end;

function TProduto.getLocalizacao: String;
begin
   Result:=FLocalizacao;
end;

function TProduto.getMarca: String;
begin
   Result:=FMarca;
end;

function TProduto.getModelo: String;
begin
  Result:=FModelo;
end;

function TProduto.getObs: String;
begin
  Result:=FObs;
end;


function TProduto.getQtdeProduto: Double;
begin
    Result:= FQtdeProduto;
end;

function TProduto.getTipoMedida: String;
begin
    Result:=FTipoMedida;
end;

function TProduto.getValorCompra: Double;
begin
   Result:=FValorCompra;
end;

function TProduto.getValorvendaProduto: Double;
begin
   Result:= FValorVendaProduto;
end;
procedure TProduto.setCodBarrasProduto(vCodBarrasProduto: String);
begin
   FCodBarrasProduto:= vCodBarrasProduto;
end;

procedure TProduto.setDescricaoProduto(vDescricaoProduto: String);
begin
   FDescricaoProduto:= vDescricaoProduto;
end;

procedure TProduto.setICMS(vICMS: Double);
begin
   FICMS:= vICMS;
end;

procedure TProduto.setIdProduto(vIdProduto: String);
begin
    FIdProduto:= vIdProduto;
end;

procedure TProduto.setIPI(vIPI: Double);
begin
   FIPI:=vIPI;
end;

procedure TProduto.setLocalizacao(vLocalizacao: String);
begin
   FLocalizacao:=vLocalizacao;
end;

procedure TProduto.setMarca(vMarca: String);
begin
  FMarca:=vMarca;
end;

procedure TProduto.setModelo(vModelo: String);
begin
 FModelo:=vModelo;
end;

procedure TProduto.setObs(vObs: String);
begin
    FObs:=vObs;
end;

procedure TProduto.setQtdeProduto(vQtdeProduto: Double);
begin
   FQtdeProduto:=  vQtdeProduto;
end;

procedure TProduto.setTipoMedida(vTipoMedida: String);
begin
   FTipoMedida:=vTipoMedida;
end;

procedure TProduto.setValorCompra(vValorCompra: Double);
begin
  FValorCompra:=vValorCompra;
end;

procedure TProduto.setValorVendaProduto(vValorVendaProduto: Double);
begin
  FValorVendaProduto:=vValorVendaProduto;
end;

end.
