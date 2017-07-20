unit UFrmFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmmae, StdCtrls, Buttons, ExtCtrls, pngimage,MaskUtils,UConsultaCep;

type
  TFrmFornecedor = class(TForm_mae)
    Panel2: TPanel;
    imageclose: TImage;
    Label7: TLabel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    lblcpf: TLabeledEdit;
    GroupBox1: TGroupBox;
    lblestado: TLabeledEdit;
    lblCep: TLabeledEdit;
    lbllogradouro: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
    LabeledEdit10: TLabeledEdit;
    lblcidade: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    LabeledEdit12: TLabeledEdit;
    Label1: TLabel;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit13: TLabeledEdit;
    Label5: TLabel;
    procedure imagecloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lblCepExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFornecedor: TFrmFornecedor;

implementation

{$R *.dfm}

procedure TFrmFornecedor.FormCreate(Sender: TObject);
begin
  inherited;
  self.btnexcluir.Visible:=False;
end;

procedure TFrmFornecedor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key = VK_ESCAPE then
      Self.imagecloseClick(Sender);
end;

procedure TFrmFornecedor.imagecloseClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;
procedure TFrmFornecedor.lblCepExit(Sender: TObject);
var Cep: TCep;
begin
  if Length(Trim(Self.lblCep.Text))<= 5 then
    Exit;
  with TConsultaCep.Create(Self) do
    try
      Cep := Search(Self.lblCep.Text);
      lblCep.Text:= cep.Cep;
      lblcidade.Text:= Cep.Cidade;
      lblestado.Text:=Cep.Uf;
      lbllogradouro.Text:=Cep.Logradouro;
    finally
      Free;
    end;
end;

end.
