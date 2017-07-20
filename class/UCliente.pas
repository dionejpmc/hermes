unit UCliente;

interface
uses UPessoa,SysUtils,Dialogs;
type TCliente = Class (TPessoa)

    private
    protected
      FNome:String;
      FRG:String;
      FCPF:String;
      FSexo:String;

    public
      constructor Create;
      destructor Destroy;

      procedure setNome(vNome:String);
      procedure setRG(vRG:string);
      procedure setCPF(vCPF:string);
      procedure setSexo(vSexo:String);


      function getNome:string;
      function getRG:string;
      function getCPF:string;
      function getSexo:String;


      property Nome:String read getNome write setNome;
      property RG:string read getRG write setRG;
      property CPF:string read getCPF write setCPF;
      property Sexo:String read getSexo write setSexo;

      function ValidaCPF(VCpf:string):Boolean;

  end;

implementation

{ TPessoaFisica }

constructor TCliente.Create;
begin
inherited;
      FNome:='';
      FRG:='';
      FCPF:='';
      FSexo:='';

end;

destructor TCliente.Destroy;
begin
inherited;
end;


function TCliente.getCPF: string;
begin
  Result:= FCPF;
end;

function TCliente.getNome: string;
begin
  Result:=FNome;
end;

function TCliente.getRG: string;
begin
   Result:=FRG;
end;

function TCliente.getSexo:String;
begin
   Result:=FSexo;
end;


procedure TCliente.setCPF(vCPF: string);
begin
   FCPF:=vCPF;
end;

procedure TCliente.setNome(vNome: String);
begin
   FNome:=vNome;
end;

procedure TCliente.setRG(vRG: string);
begin
   FRG:=vRG;
end;

procedure TCliente.setSexo(vSexo:String);
begin
   FSexo:=vSexo;
end;
function TCliente.ValidaCPF(VCpf: string): Boolean;
var CPF:array[1..11] of Integer;
    I,Y,aux,total:integer;
    strAux:string;
begin
    total:=0;
    Y:=1;
    if Length(VCpf) < 14 then
      Result:=False
    else
    begin
      for I :=1 to 14 do
        if TryStrToInt(VCpf[I],aux) then
        begin
            CPF[Y]:=aux;
            total:=total+CPF[Y];
            Inc(Y);
        end;
        strAux:=IntToStr(total);
        if strAux[1] = strAux[2] then
           Result:=True
        else
           Result:=False;
    end;
end;

end.


