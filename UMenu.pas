unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, pngimage, UfrmCaixa,Ufrmproduto, UFrmFornecedor,Uproduto, UFrmConfig;

type
  TMenu = class(TForm)
    imageproduto: TImage;
    imagecaixa: TImage;
    Label2: TLabel;
    Label3: TLabel;
    imgcliente: TImage;
    Label1: TLabel;
    imgfornecedor: TImage;
    Label4: TLabel;
    imageconfig: TImage;
    Label8: TLabel;
    imgrelatorios: TImage;
    Label9: TLabel;
    Panel1: TPanel;
    imageclose: TImage;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    imglogo: TImage;
    Label19: TLabel;
    lblversao: TLabel;
    procedure imagecloseClick(Sender: TObject);
    procedure imagecaixaClick(Sender: TObject);
    procedure imageprodutoClick(Sender: TObject);
    procedure imgfornecedorClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure imgclienteClick(Sender: TObject);
    procedure imagevendasClick(Sender: TObject);
    procedure imagecomprasClick(Sender: TObject);
    procedure imageconfigClick(Sender: TObject);
    procedure imgrelatoriosClick(Sender: TObject);
    procedure imglogoClick(Sender: TObject);
  private
    { Private declarations }
  protected

  public
    { Public declarations }

    UmFrmcaixa: TFrmCaixa;
    UmFrmProduto :TFrmProduto;
    UmFrmFornecedor:TFrmFornecedor;
    UmFrmConfig:TFrmConfig;
  end;
implementation
{$R *.dfm}

procedure TMenu.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = VK_F1 then
      Self.imgfornecedorClick(Sender)
  else if key = VK_F2 then
      Self.imgclienteClick(Sender)
  else if key = VK_F3 then
      Self.imageprodutoClick(Sender)
  else if key = VK_F4 then
      Self.imagecaixaClick(Sender)
  else if key = VK_F5 then
      Self.imageconfigClick(Sender)
  else if key = VK_F6 then
      Self.imgrelatoriosClick(Sender)
  else
      ShowMessage('TECLA DESCONHECIDA.');
end;

procedure TMenu.imgclienteClick(Sender: TObject);
begin
Exit;
end;

procedure TMenu.imgfornecedorClick(Sender: TObject);
begin
  UmFrmFornecedor:=TFrmFornecedor.Create(nil);
  UmFrmFornecedor.ShowModal;
  UmFrmFornecedor.Free;
end;

procedure TMenu.imglogoClick(Sender: TObject);
begin
  ShowMessage('IDOS TECNOLOGIA'+#13#10+'*'+#13#10+'A TECNOLOGIA � NOSSA FERRAMENTA PARA O SEU SUCESSO'+#13#10+'*'+#13#10+'CONTATO: +554599148882'+#13#10);
end;

Procedure TMenu.imgrelatoriosClick(Sender: TObject);
begin
Exit;
end;

procedure TMenu.imagecloseClick(Sender: TObject);
begin
  Self.Close;
end;
procedure TMenu.imagecomprasClick(Sender: TObject);
begin
Exit;
end;

procedure TMenu.imageconfigClick(Sender: TObject);
begin
  UmFrmConfig:=TFrmConfig.Create(nil);
  UmFrmConfig.ShowModal;
  UmFrmConfig.Free;
end;

procedure TMenu.imageprodutoClick(Sender: TObject);
begin
  UmFrmProduto:=TFrmProduto.Create(nil);
  UmFrmProduto.btneditar.Visible:=false;
  UmFrmProduto.btnexcluir.Visible:=false;
  UmFrmProduto.ShowModal;
  UmFrmProduto.Free;
end;

procedure TMenu.imagevendasClick(Sender: TObject);
begin
Exit;
end;

procedure TMenu.imagecaixaClick(Sender: TObject);
begin
  UmFrmcaixa:=TFrmCaixa.Create(nil);
  UmFrmcaixa.ShowModal;
  UmFrmcaixa.Free;
end;

end.
