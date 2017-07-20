unit UConsultaCep;

interface

uses
  Classes, SysUtils, IdHTTP, XMLDoc;

type
  TCep = packed record
    Cep: String;
    Logradouro: String;
    Bairro: String;
    Cidade: String;
    Uf: String;
    IbgeCidade: Integer;
    IbgeUf: Integer;
  end;

  TConsultaCep = class(TComponent)
  private
    FKey: String;
    FHttp: TIdHTTP;
    FXml: TXMLDocument;
  public
    constructor Create(AOwner: TComponent; AKey: String = '');
    destructor Destroy; override;
    function Search(ACep: String): TCep;
  end;

implementation

const
  WS_URL: String = 'http://api.wscep.com/cep?key=%s&val=%s';

  {TConsultaCep}

constructor TConsultaCep.Create(AOwner: TComponent; AKey: String);
begin
  inherited Create(AOwner);
  if AKey = '' then
    Self.FKey := 'free'
  else
    Self.FKey := AKey;
  Self.FHttp := TIdHTTP.Create(Self);
  Self.FXml := TXMLDocument.Create(Self);
  Self.FXml.Active := True;
end;

destructor TConsultaCep.Destroy;
begin
  Self.FHttp.Free;
  Self.FXml.Free;
  inherited;
end;

function TConsultaCep.Search(ACep: String): TCep;
var
  PostResult, ErrMsg: String;
  XML: TXMLDocument;
begin
  PostResult := Self.FHttp.Get(Format(WS_URL, [Self.FKey, ACep]));
  with Self.FXml do
  begin
    LoadFromXML(PostResult);
    if DocumentElement.ChildValues['resultado'] = 0 then
    begin
      ErrMsg := DocumentElement.ChildValues['msg_error'];
      if ErrMsg = '' then
        ErrMsg := 'CEP não encontrado.';
      raise Exception.Create(ErrMsg);
    end
    else
    begin
      Result.Cep := DocumentElement.ChildValues['cep'];
      Result.Logradouro := DocumentElement.ChildValues['logradouro'];
      Result.Bairro := DocumentElement.ChildValues['bairro'];
      Result.Cidade := DocumentElement.ChildValues['cidade'];
      Result.Uf := DocumentElement.ChildValues['uf'];
      Result.IbgeCidade := DocumentElement.ChildValues['cod_ibge_municipio'];
      Result.IbgeUf := DocumentElement.ChildValues['cod_ibge_estado'];
    end;
  end;
end;

end.


//
//uses
//  UConsultaCep;
//
//procedure TForm1.Button1Click(Sender: TObject);
//var
//  Cep: TCep;
//begin
//  with TConsultaCep.Create(Self) do
//    try
//      Cep := Search('00000000');
//      Memo1.Clear;
//      Memo1.Lines.Add('CEP: ' + Cep.Cep);
//      Memo1.Lines.Add('Logradouro: ' + Cep.Logradouro);
//      Memo1.Lines.Add('Bairro: ' + Cep.Bairro);
//      Memo1.Lines.Add('Cidade: ' + Cep.Cidade);
//      Memo1.Lines.Add('UF: ' + Cep.Uf);
//      Memo1.Lines.Add('IBGE Município: ' + IntToStr(Cep.IbgeCidade));
//      Memo1.Lines.Add('IBGE UF: ' + IntToStr(Cep.IbgeUf));
//    finally
//      Free;
//    end;
//end;
