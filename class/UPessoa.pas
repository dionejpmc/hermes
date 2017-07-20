unit UPessoa;

interface
uses UCidade;
type
  TPessoa = class(TObject)
    private
    protected
      FId:integer;
      FTelefone:String;
      FCelular:String;
      FCidade:TCidade;
      FBairro:String;
      FNumero:integer;
      FCep:String;
      FStatus:String;
      FLogradouro:String;
      FFax:string;
      FEmail:string;
      FObservacoes:string;
      FTipo:String;
      FDataCadastro:String;
      FDataAlteracao:String;

    public
   //Construtor e Destrutor
      constructor Create;
      destructor Destroy;

  //Procedimentos da classe Pais
      procedure setId(vId:integer);
      procedure setTelefone(vTelefone:String);
      procedure setCelular(vCelular:String);
      procedure setCidade(vCidade:TCidade);
      procedure setBairro(vBairro:String);
      procedure setNumero(vNumero:integer);
      procedure setCep(vCep:String);
      procedure setLogradouro(vLogradouro:String);
      procedure setFax(vFax:string);
      procedure setEmail(vEmail:string);
      procedure setObservacoes(vObservacoes:string);
      procedure setTipo(VTipo:string);
      procedure setDataCadastro(vDataCadastro:String);
      procedure setDataAlteracao(vDataAlteracao:String);
      procedure setStatus(vStatus:string);

   //Funçoes da classe Pais
      function getId:integer;
      function getTelefone:String;
      function getCelular:String;
      function getCidade:TCidade;
      function getBairro:String;
      function getNumero:integer;
      function getCep:String;
      function getLogradouro:String;
      function getFax:string;
      function getEmail:string;
      function getObservacoes:string;
      function getTipo:string;
      function getDataCadastro:String;
      function getDataAlteracao:String;
      function getStatus:String;

    //Property the Substitute os Get and Set
       property Id:Integer read getId write setId;
       property Telefone:String read getTelefone write setTelefone;
       property Celular:string read getCelular write setCelular;
       property Cidade:TCidade read getCidade write setCidade;
       property Bairro:string read getBairro write setBairro;
       property Numero:Integer read getNumero write setNumero;
       property Cep:string read getCep write setCep;
       property Logradouro:string read getLogradouro write setLogradouro;
       property Fax:string read getFax write setFax;
       property Email:String read getEmail write setEmail;
       property Tipo:string read getTipo write setTipo;
       property Observacoes:string read getObservacoes write setObservacoes;
       property Status:string read  getStatus write setStatus;
       property DataCadastro:string read getDataCadastro write setDataCadastro;
       property DataAlteracao:string read getDataAlteracao write setDataAlteracao;

  end;

implementation

{ TPessoa }

constructor TPessoa.Create;
begin
      FId:=0;
      FTelefone:='';
      FCelular:='';
      FBairro:='';
      FNumero:=0;
      FCep:='';
      FLogradouro:='';
      FFax:='';
      FEmail:='';
      FObservacoes:='';
      FDataCadastro:='';
      FStatus:='';
      FDataAlteracao:='';
      FCidade:=TCidade.Create;

end;

destructor TPessoa.Destroy;
begin
  FCidade.Destroy;
end;

function TPessoa.getBairro: String;
begin
  Result:=FBairro;
end;

function TPessoa.getCelular: String;
begin
  Result:= FCelular;
end;

function TPessoa.getCep: String;
begin
  Result:=FCep;
end;

function TPessoa.getCidade: TCidade;
begin
  Result:=FCidade;
end;

function TPessoa.getDataAlteracao: String;
begin
  Result:= FDataAlteracao;
end;

function TPessoa.getDataCadastro: String;
begin
  Result:= FDataCadastro;
end;

function TPessoa.getEmail: string;
begin
  Result:= FEmail;
end;

function TPessoa.getFax: string;
begin
  Result:= FFax;
end;

function TPessoa.getId: integer;
begin
    Result:=FId;
end;

function TPessoa.getLogradouro: String;
begin
  Result:= FLogradouro;
end;

function TPessoa.getNumero: integer;
begin
  Result:= FNumero;
end;

function TPessoa.getObservacoes: string;
begin
  Result:=FObservacoes;
end;

function TPessoa.getStatus: String;
begin
   Result:=FStatus;
end;

function TPessoa.getTelefone: String;
begin
  Result:= FTelefone;
end;

function TPessoa.getTipo: string;
begin
   Result:=FTipo;
end;

procedure TPessoa.setBairro(vBairro: String);
begin
  FBairro:=vBairro;
end;

procedure TPessoa.setCelular(vCelular: String);
begin
  FCelular:=vCelular;
end;

procedure TPessoa.setCep(vCep: String);
begin
  FCep:=vCep;
end;

procedure TPessoa.setCidade(vCidade: TCidade);
begin
  FCidade:=vCidade;
end;

procedure TPessoa.setDataAlteracao(vDataAlteracao: String);
begin
  FDataAlteracao:=vDataAlteracao;
end;

procedure TPessoa.setDataCadastro(vDataCadastro: String);
begin
  FDataCadastro:=vDataCadastro;
end;

procedure TPessoa.setEmail(vEmail: string);
begin
  FEmail:=vEmail;
end;

procedure TPessoa.setFax(vFax: string);
begin
  FFax:=vFax;
end;

procedure TPessoa.setId(vId: integer);
begin
    FId:=vId;
end;

procedure TPessoa.setLogradouro(vLogradouro: String);
begin
  FLogradouro:=vLogradouro;
end;

procedure TPessoa.setNumero(vNumero: integer);
begin
  FNumero:=vNumero;
end;

procedure TPessoa.setObservacoes(vObservacoes: string);
begin
  FObservacoes:=vObservacoes;
end;

procedure TPessoa.setStatus(vStatus: string);
begin
    FStatus:= vStatus;
end;

procedure TPessoa.setTelefone(vTelefone: String);
begin
  FTelefone:=vTelefone;
end;

procedure TPessoa.setTipo(VTipo: string);
begin
    FTipo:=VTipo;
end;

end.

