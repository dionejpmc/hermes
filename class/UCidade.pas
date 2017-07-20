unit UCidade;

interface
uses UEstado;
type
  TCidade = class

  private

  protected

    FIdCidade:Integer;
    FCidade:String;
    FDataCadastro:String;
    FDataAlteracao:String;
    FEstado:TEstado;

  public
    constructor Create;
    destructor Destroy;


    procedure setIdCidade(vIdCidade:Integer);
    procedure setCidade(VCidade:String);
    procedure setDataCadastro(vDataCadastro:String);
    procedure setDataAlteracao(vDataAlteracao:String);
    procedure setEstado(vEstado:TEstado);

    function  getIdCidade:Integer;
    function  getCidade:String;
    function  getDataCadastro:String;
    function  getDataAlteracao:String;
    function  getEstado:TEstado;

    property IdCidade:Integer read getIdCidade write setIdCidade;
    property Cidade:String read getCidade write setCidade;
    property DataCadastro:String read getDataCadastro write setDataCadastro;
    property DataAlteracao:String read getDataCadastro write setDataAlteracao;
    property Estado:TEstado read getEstado write setEstado;


  end;



implementation

{ TCidade }

constructor TCidade.Create;
begin
    FIdCidade:=0;
    FCidade:='';
    FDataCadastro:='';
    FDataAlteracao:='';
    FEstado:=TEstado.Create;
end;

destructor TCidade.Destroy;
begin
  FEstado.Destroy;
end;

function TCidade.getCidade: String;
begin
  Result:=FCidade;
end;

function TCidade.getDataAlteracao: String;
begin
  Result:=FDataAlteracao;
end;

function TCidade.getDataCadastro: String;
begin
   Result:=FDataCadastro;
end;

function TCidade.getEstado:TEstado;
begin
   Result:=FEstado;
end;

function TCidade.getIdCidade: Integer;
begin
   Result:=FIdCidade;
end;

procedure TCidade.setCidade(VCidade: String);
begin
   FCidade:=VCidade;
end;

procedure TCidade.setDataAlteracao(vDataAlteracao: String);
begin
  FDataAlteracao:=vDataAlteracao;
end;

procedure TCidade.setDataCadastro(vDataCadastro: String);
begin
   FDataCadastro:=vDataCadastro;
end;

procedure TCidade.setEstado(vEstado: TEstado);
begin
   FEstado:=vEstado;
end;

procedure TCidade.setIdCidade(vIdCidade: Integer);
begin
  FIdCidade:=vIdCidade;
end;

end.
