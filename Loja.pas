unit Loja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls, DB, ADODB;

type
  TLojaMenu = class(TForm)
    pnlGeral: TPanel;
    pnlBarraPesquisa: TPanel;
    pnlCadastro: TPanel;
    pnlVendas: TPanel;
    pnlOVendas: TPanel;
    pnlCadastroCliente: TPanel;
    pnlCadastroProduto: TPanel;
    pnlCadastroVenda: TPanel;
    pnlConsultaVendas: TPanel;
    pnlOCadastro: TPanel;
    lblLogo: TLabel;
    imgLogo: TImage;
    conLoja: TADOConnection;
    pnlRelatorio: TPanel;
    pnlORelatorio: TPanel;
    pnlRClientes: TPanel;
    pnlRVendas: TPanel;
    pnlRProdutos: TPanel;
    procedure pnlCadastroClick(Sender: TObject);
    procedure pnlGeralMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnlCadastroClienteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnlCadastroProdutoClick(Sender: TObject);
    procedure pnlVendasClick(Sender: TObject);
    procedure pnlCadastroVendaClick(Sender: TObject);
    procedure pnlConsultaVendasClick(Sender: TObject);
    procedure pnlRelatorioVendasClick(Sender: TObject);
    procedure pnlRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LojaMenu: TLojaMenu;

implementation

uses CadastroClientes, CadastroProduto, CadastroVenda, pesquisarClientes, ConsultaVendas, RelatorioVenda;


{$R *.dfm}

procedure TLojaMenu.pnlCadastroClick(Sender: TObject);
begin
  pnlOCadastro.Visible := True;
  pnlOVendas.Visible := False;
  pnlORelatorio.Visible := False;

end;

procedure TLojaMenu.pnlGeralMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);                         
begin
  pnlOCadastro.Visible := False;
  pnlOVendas.Visible := False;
  pnlORelatorio.Visible := False;
end;

procedure TLojaMenu.pnlCadastroClienteClick(Sender: TObject);
begin
  try
    Application.CreateForm(TCadastroClientes1, CadastroClientes1);
    CadastroClientes1.ShowModal;
  finally
    CadastroClientes1.Free;
  end;

end;

procedure TLojaMenu.FormCreate(Sender: TObject);
begin
  LojaMenu.AutoSize := True;
end;

procedure TLojaMenu.pnlCadastroProdutoClick(Sender: TObject);
begin
  try
    Application.CreateForm(TCadastroProdutos, CadastroProdutos);
    CadastroProdutos.ShowModal;
  finally
    CadastroProdutos.Free;
  end;
end;

procedure TLojaMenu.pnlVendasClick(Sender: TObject);
begin
  pnlOVendas.Visible := True;
  pnlOCadastro.Visible := False;
  pnlORelatorio.Visible := False;

end;

procedure TLojaMenu.pnlCadastroVendaClick(Sender: TObject);
begin
  try
    Application.CreateForm(TCadastroVendas, CadastroVendas);
    CadastroVendas.ShowModal;
  finally
    CadastroVendas.Free;
  end;
end;

procedure TLojaMenu.pnlConsultaVendasClick(Sender: TObject);
begin
  try
    Application.CreateForm(TConsultaVenda, ConsultaVenda);
    ConsultaVenda.ShowModal;
  finally
    ConsultaVenda.Free;
  end;
end;

procedure TLojaMenu.pnlRelatorioVendasClick(Sender: TObject);
begin
  try
    Application.CreateForm(TRelatorioVendas, RelatorioVendas);
    RelatorioVendas.ShowModal;
  finally
    RelatorioVendas.Free;
  end;
end;

procedure TLojaMenu.pnlRelatorioClick(Sender: TObject);
begin
  pnlORelatorio.Visible := True;
  pnlOVendas.Visible := False;
  pnlOCadastro.Visible := False;
end;

end.
