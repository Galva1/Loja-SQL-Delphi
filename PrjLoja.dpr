program PrjLoja;

uses
  Forms,
  Loja in 'Loja.pas' {LojaMenu},
  CadastroClientes in 'CadastroClientes.pas' {CadastroClientes1},
  CadastroProduto in 'CadastroProduto.pas' {CadastroProdutos},
  CadastroVenda in 'CadastroVenda.pas' {CadastroVendas},
  pesquisarClientes in 'pesquisarClientes.pas' {pesquisarCliente},
  ConsultaVendas in 'ConsultaVendas.pas' {ConsultaVenda},
  RelatorioVenda in 'RelatorioVenda.pas' {RelatorioVendas},
  RelatorioCVenda in 'RelatorioCVenda.pas' {RelatorioCVendas},
  RelatorioCProduto in 'RelatorioCProduto.pas' {RelatorioCProdutos},
  RelatorioCCliente in 'RelatorioCCliente.pas' {RelatorioCClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TLojaMenu, LojaMenu);
  Application.Run;
end.
