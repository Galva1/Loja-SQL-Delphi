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
    pnl9: TPanel;
    pnl10: TPanel;
    pnlOCadastro: TPanel;
    lblLogo: TLabel;
    imgLogo: TImage;
    conLoja: TADOConnection;
    procedure pnlCadastroClick(Sender: TObject);
    procedure pnlGeralMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnlCadastroClienteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnlCadastroProdutoClick(Sender: TObject);
    procedure pnlVendasClick(Sender: TObject);
    procedure pnl9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LojaMenu: TLojaMenu;

implementation

uses CadastroClientes, CadastroProduto, CadastroVenda, pesquisarClientes;


{$R *.dfm}

procedure TLojaMenu.pnlCadastroClick(Sender: TObject);
begin
  pnlOCadastro.Visible := True;
  pnlOVendas.Visible := False;

end;

procedure TLojaMenu.pnlGeralMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);                         
begin
  pnlOCadastro.Visible := False;
  pnlOVendas.Visible := False;
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
end;

procedure TLojaMenu.pnl9Click(Sender: TObject);
begin
  try
    Application.CreateForm(TCadastroVendas, CadastroVendas);
    CadastroVendas.ShowModal;
  finally
    CadastroVendas.Free;
  end;
end;

end.                                    
