program PrjLoja;

uses
  Forms,
  Loja in 'Loja.pas' {LojaMenu},
  CadastroClientes in 'CadastroClientes.pas' {CadastroClientes1},
  CadastroProduto in 'CadastroProduto.pas' {CadastroProdutos},
  CadastroVenda in 'CadastroVenda.pas' {CadastroVendas},
  pesquisarClientes in 'pesquisarClientes.pas' {pesquisarCliente},
  ConsultaVendas in 'ConsultaVendas.pas' {ConsultaVenda},
  RelatorioVenda in 'RelatorioVenda.pas' {RelatorioVendas};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TLojaMenu, LojaMenu);
  Application.CreateForm(TConsultaVenda, ConsultaVenda);
  Application.CreateForm(TRelatorioVendas, RelatorioVendas);
  Application.Run;
end.
