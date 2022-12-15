unit CadastroProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Loja, DB, ADODB, Mask, DBCtrls, StdCtrls, Grids, DBGrids,
  ComCtrls, ExtCtrls;

type
  TCadastroProdutos = class(TForm)
    pnlGeralCC: TPanel;
    pnlBarraPesquisa: TPanel;
    lbl8: TLabel;
    pgcCadastroCliente: TPageControl;
    ts1: TTabSheet;
    pnl2: TPanel;
    dbgrdConsultaProduto: TDBGrid;
    cbbConsultaProduto: TComboBox;
    edtConsultaProduto: TEdit;
    btnBuscarProduto: TButton;
    ts2: TTabSheet;
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl7: TLabel;
    dbedtnomepro: TDBEdit;
    dbedtvalorpro: TDBEdit;
    btnInserir: TButton;
    btnSalvar: TButton;
    btnExcluir: TButton;
    btnCancelar: TButton;
    btnAlterar: TButton;
    qryConsultaProduto: TADOQuery;
    dsConsultaProduto: TDataSource;
    qryConsultaProdutoidproduto: TAutoIncField;
    qryConsultaProdutonome: TWideStringField;
    qryConsultaProdutovalor_produto: TFloatField;
    dsDadosProduto: TDataSource;
    qryDadosProduto: TADOQuery;
    AutoIncField1: TAutoIncField;
    WideStringField1: TWideStringField;
    FloatField1: TFloatField;
    dbtxtcodpro: TDBText;
    procedure btnBuscarProdutoClick(Sender: TObject);
    procedure ConsultarProduto(Sender:TObject);
    procedure edtConsultaProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure AtivarDesativarBotoes(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroProdutos: TCadastroProdutos;

implementation

{$R *.dfm}

procedure TCadastroProdutos.ConsultarProduto(Sender:TObject);
begin
  if Trim(edtConsultaProduto.Text) <> EmptyStr then
    begin
      try
        qryConsultaProduto.SQL.Clear;
        qryConsultaProduto.SQL.Add('Select * from produto');
        if cbbConsultaProduto.Text= 'ID' then
          qryConsultaProduto.SQL.Add('where idproduto = '+QuotedStr(Trim(edtConsultaProduto.Text)))
        else
          qryConsultaProduto.SQL.Add('where '+LowerCase(cbbConsultaProduto.Text)+' = '+QuotedStr(Trim(edtConsultaProduto.Text)));
          qryConsultaProduto.Open;
        if qryConsultaProduto.IsEmpty then
          ShowMessage('Este ' + LowerCase(cbbConsultaProduto.Text) + ' não se encontra no sistema!');
      except
        ShowMessage('Este ' + LowerCase(cbbConsultaProduto.Text) + ' não se encontra no sistema!');
      end;

    end
  else
    begin
      qryConsultaProduto.SQL.Clear;
      qryConsultaProduto.SQL.Add('Select * from produto');
      qryConsultaProduto.Open;
    end;
end;

procedure TCadastroProdutos.btnBuscarProdutoClick(Sender: TObject);
begin

case cbbConsultaProduto.ItemIndex of
  0:
    ConsultarProduto(nil);
  1:
    ConsultarProduto(nil);
  else
    ShowMessage('Selecione um filtro!')
  end;
end;

procedure TCadastroProdutos.edtConsultaProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    btnBuscarProdutoClick(nil);
end;

procedure TCadastroProdutos.FormCreate(Sender: TObject);
begin
  CadastroProdutos.AutoSize := True;
end;

procedure TCadastroProdutos.AtivarDesativarBotoes(Sender: TObject);
begin
  btnInserir.Enabled := qryDadosProduto.State in [dsBrowse];
  btnAlterar.Enabled := qryDadosProduto.State in [dsBrowse];
  btnExcluir.Enabled := qryDadosProduto.State in [dsBrowse];
  btnSalvar.Enabled  := qryDadosProduto.State in [dsInsert, dsEdit];
  btnCancelar.Enabled:= qryDadosProduto.State in [dsInsert, dsEdit];
end;


procedure TCadastroProdutos.btnInserirClick(Sender: TObject);
begin
  dbedtnomepro.Enabled := True;
  dbedtvalorpro.Enabled := True;
  qryDadosProduto.Active := True;
  qryDadosProduto.Insert;
  dbedtnomepro.SetFocus;
  AtivarDesativarBotoes(nil);
end;

procedure TCadastroProdutos.btnAlterarClick(Sender: TObject);
begin
  if qryDadosProduto.Active then
  begin
    qryDadosProduto.Edit;
    dbedtnomepro.SetFocus;
    AtivarDesativarBotoes(nil);
  end
  else
    ShowMessage('Não há registro para alterar!');
end;

procedure TCadastroProdutos.btnSalvarClick(Sender: TObject);
begin
  if qryDadosProduto.Active then
  begin
    try
      qryDadosProduto.Post;
      showMessage('O Registro foi salvo com sucesso!');
      AtivarDesativarBotoes(nil);
    except
      ShowMessage('Preencha os campos vazios!');
    end;
  end
  else
    ShowMessage('Não há registro para salvar!');
end;

procedure TCadastroProdutos.btnExcluirClick(Sender: TObject);
begin
  if qryDadosProduto.Active then
  begin
    case Application.MessageBox('Deseja realmente excluir esse registro?', 'Exclusão de registro', MB_YESNO + MB_ICONQUESTION)  of
    IDYES:
      begin
        qryDadosProduto.Delete;
        qryDadosProduto.Active := False;
        ShowMessage('O Registro foi excluído com sucesso!');

      end;
    IDNO:
      begin
        Exit;
      end;
    end;
  end
  else
    ShowMessage('Não há registro para excluir!');
end;

procedure TCadastroProdutos.btnCancelarClick(Sender: TObject);
begin
  if qryDadosProduto.Active then
  begin
    dbedtnomepro.Enabled := False;
    dbedtvalorpro.Enabled := False;
    qryDadosProduto.Cancel;
    AtivarDesativarBotoes(nil);
    if dbtxtcodpro.Caption <> EmptyStr then
      qryDadosProduto.Active := False;
  end;
end;

end.
