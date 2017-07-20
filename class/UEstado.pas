unit UEstado;
interface
uses UPais;
type
  TEstado = class (TObject)

  private

  protected
    FIdEstado:Integer;
    FEstado:String;
    FSigla:String;
    FDDD:String;
    FPais:TPais;
    FDataCadastro:String;
    FDataAlteracao:String;

  public

   //Construtores e Destrutore

    constructor Create;
    destructor Destroy;

    //Procedimentos da classe Pais

    procedure setIdEstado(vIdEstado:Integer);
    procedure setEstado(vEstado:String);
    procedure setSigla(vSigla:String);
    procedure setDDD(vDDD:String);
    procedure setPais(vPais:TPais);
    procedure setDataCadastro(vDataCadastro:String);
    procedure setDataAlteracao(vDataAlteracao:String);

    //Funçoes da classe Pais

    function getIdEstado:Integer;
    function getEstado:String;
    function getSigla:String;
    function getDDD:String;
    function getPais:TPais;
    function getDataCadastro:String;
    function getDataAlteracao:String;

    //Property the Substitute os Get and Set

    property IdEstado:Integer read getIdEstado write setIdEstado;
    property Estado:String read getEstado write setEstado;
    property Sigla:String read getSigla write setSigla;
    property DDD:String read getDDD write setDDD;
    property Pais:TPais read getPais write setPais;
    property DataCadastro:String read getDataCadastro write setDataCadastro;
    property DataAlteracao:String read getDataAlteracao write setDataAlteracao;

  end;

implementation

{ TEstado }

constructor TEstado.Create;
begin
    FIdEstado:=0;
    FEstado:='';
    FSigla:='';
    FDDD:='';
    FPais:=TPais.Create;
    FDataCadastro:='';
    FDataAlteracao:='';
end;

destructor TEstado.Destroy;
begin
   FPais.Destroy;
end;

function TEstado.getDataAlteracao: String;
begin
   Result:=FDataAlteracao;
end;

function TEstado.getDataCadastro: String;
begin
   Result:=FDataCadastro;
end;

function TEstado.getDDD: String;
begin
  Result:=FDDD;
end;

function TEstado.getEstado: String;
begin
  Result:=FEstado;
end;

function TEstado.getIdEstado: Integer;
begin
  Result:=FIdEstado;
end;

function TEstado.getPais: TPais;
begin
  Result:=FPais;
end;

function TEstado.getSigla: String;
begin
  Result:=FSigla;
end;

procedure TEstado.setDataAlteracao(vDataAlteracao: String);
begin
  FDataAlteracao:=vDataAlteracao;
end;

procedure TEstado.setDataCadastro(vDataCadastro: String);
begin
  FDataCadastro:=vDataCadastro;
end;

procedure TEstado.setDDD(vDDD: String);
begin
  FDDD:=vDDD;
end;

procedure TEstado.setEstado(vEstado: String);
begin
  FEstado:=vEstado;
end;

procedure TEstado.setIdEstado(vIdEstado: Integer);
begin
  FIdEstado:=vIdEstado;
end;

procedure TEstado.setPais(vPais: TPais);
begin
  FPais:=vPais;
end;

procedure TEstado.setSigla(vSigla: String);
begin
  FSigla:=vSigla;
end;

end.
