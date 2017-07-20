program Hermes;
uses
  Forms,
  Windows,
  UMenu in 'UMenu.pas' {Menu},
  UExecutar in 'UExecutar.pas',
  UInterface in 'UInterface.pas',
  ufrmcaixa in 'ufrm\ufrmcaixa.pas',
  ufrmcliente in 'ufrm\ufrmcliente.pas',
  ufrmproduto in 'ufrm\ufrmproduto.pas' {FrmProduto},
  ufrmmae in 'ufrm\ufrmmae.pas' {Form_mae},
  UProduto in 'class\UProduto.pas',
  UCtrlProduto in 'controller\UCtrlProduto.pas',
  UDaoProduto in 'dao\UDaoProduto.pas',
  UDAO in 'dao\UDAO.pas',
  UDM in 'UDM.pas' {DataModule1: TDataModule},
  UVenda in 'class\UVenda.pas',
  UClasseMae in 'class\UClasseMae.pas',
  URelatorioProdutos in 'ufrm\URelatorioProdutos.pas' {Form1},
  UFrmFornecedor in 'ufrm\UFrmFornecedor.pas' {FrmFornecedor},
  UCtrlVenda in 'controller\UCtrlVenda.pas',
  UDaoVenda in 'dao\UDaoVenda.pas',
  UFrmConfig in 'ufrm\UFrmConfig.pas' {FrmConfig},
  UCliente in 'class\UCliente.pas',
  UPessoa in 'class\UPessoa.pas',
  UCidade in 'class\UCidade.pas',
  UEstado in 'class\UEstado.pas',
  UPais in 'class\UPais.pas',
  UConsultaCep in 'class\UConsultaCep.pas',
  UFrmCompra in 'ufrm\UFrmCompra.pas' {FrmCompra},
  UForcnecedor in 'class\UForcnecedor.pas',
  UPessoaJuridica in 'class\UPessoaJuridica.pas',
  UDaoCliente in 'dao\UDaoCliente.pas',
  UDaoFornecedor in 'dao\UDaoFornecedor.pas',
  UFrmRelatorios in 'ufrm\UFrmRelatorios.pas' {Form_mae1},
  UFrmConsulta in 'ufrm\UFrmConsulta.pas' {FrmConsulta},
  UListaProduto in 'class\UListaProduto.pas';

{$R *.res}
var UmExecutar:TExecutar;

begin
  UmExecutar:=TExecutar.Criar;
  UmExecutar.Executar;
  UmExecutar.Destruir;
  //  Application.Initialize;
   // Application.MainFormOnTaskbar := True;
    //Application.CreateForm(TMenu, Menu);
   // Application.Run;
end.
