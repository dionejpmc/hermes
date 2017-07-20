unit UPais;

interface
type
  TPais = class (TObject)
    private
         FIdPais: Integer;
         FPais: String;
         FSigla:String;
         FDDI:String;
         FDataCadastro:String;
         FDataAlteracao:String;

     protected

         procedure setIdPais(vIdPais:Integer);
         procedure setPais(vPais:String);
         procedure setSigla(VSigla:String);
         procedure setDDI(vDDI:String);
         procedure setDataCadastro(vDtCad:String);
         procedure setDataAlteracao(vDtAlt:String);

         function getIdPais:Integer;
         function getPais:String;
         function getSigla:String;
         function getDDI:String;
         function getDataCadastro:String;
         function getDataAlteracao:String;

     public

         constructor Create;
         destructor Destroy;

         //Property Metod
         property IdPais: Integer read getIdPais write setIdPais;
         property Pais: String read getPais write setPais;
         property DDI: String read getDDI write setDDI;
         property Sigla: String read getSigla write setsigla;
         property DataCadastro: String read getDataCadastro write setDataCadastro;
         property DataAlteracao: String read getDataAlteracao write setDataAlteracao;
  end;

implementation

{ TPais }

{ TPais }

constructor TPais.Create;
begin
         FIdPais:= 0;
         FPais:='';
         FSigla:='';
         FDDI:='';
         FDataCadastro:='';
         FDataAlteracao:='';
end;

destructor TPais.Destroy;
begin

end;

function TPais.getDataAlteracao: String;
begin
    result:= FDataCadastro;
end;

function TPais.getDataCadastro: String;
begin
   result:= FDataCadastro;
end;

function TPais.getDDI: String;
begin
  result:=FDDI;
end;

function TPais.getIdPais: Integer;
begin
  result:= FIdPais;
end;

function TPais.getPais: String;
begin
  result:=FPais;
end;

function TPais.getSigla: String;
begin
  result:=FSigla;
end;

procedure TPais.setDataAlteracao(vDtAlt: String);
begin
  FDataAlteracao:=vDtAlt;
end;

procedure TPais.setDataCadastro(vDtCad: String);
begin
  FDataCadastro:=vDtCad;
end;

procedure TPais.setDDI(vDDI: String);
begin
  FDDI:=vDDI;
end;

procedure TPais.setIdPais(vIdPais: Integer);
begin
  FIdPais:=vIdPais;
end;

procedure TPais.setPais(vPais: String);
begin
  FPais:=vPais;
end;

procedure TPais.setSigla(vSigla: String);
begin
  FSigla:=vSigla;
end;

end.
