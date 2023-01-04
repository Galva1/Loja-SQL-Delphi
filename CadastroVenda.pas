unit CadastroVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, Mask, DBCtrls, DB, ADODB,
  Grids, DBGrids;

type
  TCadastroVendas = class(TForm)
    pnlGeral: TPanel;
    pnlsuperior: TPanel;
    lblNomeTela: TLabel;
    pnlDataHora: TPanel;
    pgcClienteEmissao: TPageControl;
    tsCliente: TTabSheet;
    dbedtcodCliente: TDBEdit;
    dbedtcpfcli: TDBEdit;
    dbedtnomecli: TDBEdit;
    dbedtendcli: TDBEdit;
    dbedtbairrocli: TDBEdit;
    dbedtcidcli: TDBEdit;
    lblcodcli: TLabel;
    lblnomecli: TLabel;
    lblcpfcli: TLabel;
    lblendcli: TLabel;
    lblbairrocli: TLabel;
    lbl1: TLabel;
    qryConsultaCliente: TADOQuery;
    dsConsultaCliente: TDataSource;
    pgcItem: TPageControl;
    tsItem: TTabSheet;
    btnConfirmar: TButton;
    btnCancelar: TButton;
    lblData: TLabel;
    lblHora: TLabel;
    pnlDataAtual: TPanel;
    pnlHoraAtual: TPanel;
    dbgrdprodutos: TDBGrid;
    qryEmitirVenda: TADOQuery;
    dsEmitirVenda: TDataSource;
    dsConsultaItem: TDataSource;
    qryConsultaItem: TADOQuery;
    qryConsultaItemnome: TWideStringField;
    qryConsultaItemvalor_produto: TFloatField;
    dbedtNumeroVenda: TDBEdit;
    lblNvenda: TLabel;
    lblFormaPagamento: TLabel;
    edtCodProduto: TEdit;
    dbedtnome: TDBEdit;
    edtqtdproduto: TEdit;
    pnlvalorTotal: TPanel;
    btnIncluir: TButton;
    lblCodProduto: TLabel;
    lblDesc: TLabel;
    lblQTD: TLabel;
    lblValorTotal: TLabel;
    qryConsultaItemidproduto: TAutoIncField;
    dsIncluirItem: TDataSource;
    qryIncluirItem: TADOQuery;
    btnNovaVenda: TButton;
    qryConsultaClienteidcliente: TAutoIncField;
    qryConsultaClientenome: TStringField;
    qryConsultaClientecpf: TBCDField;
    dtfldConsultaClientedata_nascimento: TDateField;
    qryConsultaClienteEndereo: TStringField;
    qryConsultaClienteBairro: TWideStringField;
    qryConsultaClienteCidade: TWideStringField;
    dblkcbbidpagamento: TDBLookupComboBox;
    dsPagamento: TDataSource;
    qryPagamento: TADOQuery;
    qryPagamentonomepagamento: TWideStringField;
    qryPagamentoidpagamento: TAutoIncField;
    qryEmitirVendaidvenda: TAutoIncField;
    qryEmitirVendavalor: TFloatField;
    qryEmitirVendaidcliente: TIntegerField;
    qryEmitirVendadata_venda: TDateField;
    qryEmitirVendaidpagamento: TIntegerField;
    qryEmitirVendanomepagamento: TWideStringField;
    qryIncluirItemidproduto: TIntegerField;
    qryIncluirItemitem_unidades: TIntegerField;
    qryIncluirItemvalor_item: TFloatField;
    lbl2: TLabel;
    qryEmitirVendaobservacao_venda: TMemoField;
    edtobservacaovenda: TEdit;
    qryIncluirItemidvenda: TAutoIncField;
    qryIncluirItemnomeproduto: TStringField;
    qryIncluirItemiditem_venda: TAutoIncField;
    btnRemoverItemVenda: TButton;
    btnBuscar: TButton;
    btnConsultaItem: TSpeedButton;
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtCodProdutoExit(Sender: TObject);
    procedure edtqtdprodutoExit(Sender: TObject);
    procedure edtqtdprodutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnNovaVendaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure qryIncluirItemAfterOpen(DataSet: TDataSet);
    procedure btnConfirmarClick(Sender: TObject);
    procedure qryEmitirVendaAfterOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCodProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure edtqtdprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure btnIncluirKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConsultaItemClick(Sender: TObject);
    procedure edtCodProdutoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtqtdprodutoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtobservacaovendaMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnRemoverItemVendaClick(Sender: TObject);
    procedure InseriuObjeto(Sender: TObject);
    procedure edtqtdprodutoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultaItem1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroVendas: TCadastroVendas;

implementation

uses pesquisarClientes, Loja, CadastroProduto, CadastroClientes;

{$R *.dfm}

procedure TCadastroVendas.btnBuscarClick(Sender: TObject);
begin
  try
    Application.CreateForm(TpesquisarCliente, pesquisarCliente);
    pesquisarCliente.ShowModal;
  finally
    pesquisarCliente.Free;
  end;
end;

procedure TCadastroVendas.FormCreate(Sender: TObject);
begin
  pnlDataAtual.Caption := '  ' + DateToStr(Date);
  pnlHoraAtual.Caption := '  ' + TimeToStr(Time);
  qryEmitirVenda.Connection.Connected := true;
  qryEmitirVenda.Connection.BeginTrans;
  
end;

procedure TCadastroVendas.FormActivate(Sender: TObject);
begin
  CadastroVendas.AutoSize := True;
end;

procedure TCadastroVendas.edtCodProdutoExit(Sender: TObject);
begin
  with qryConsultaItem do
    begin
      try
        Close;
        SQL[2] := 'where idproduto = ' + QuotedStr(Trim(edtCodProduto.Text));
        Open;
        if (dbedtnome.Text = EmptyStr) then
          if (edtCodProduto.Text <> '0') and (edtCodProduto.Text <> EmptyStr) then
            if MessageDlg('Produto não encontrado no sistema!'+#13+'Gostaria de inserir?', mtInformation, [mbYes, mbNo], 0) = mrYes then
              begin
                try
                  Application.CreateForm(TCadastroProdutos, CadastroProdutos);
                  CadastroProdutos.pgcCadastroProduto.Pages[0].Destroy;
                  CadastroProdutos.ShowModal;
                  edtCodProduto.Text := CadastroProdutos.dbtxtcodpro.Caption;
                  if CadastroProdutos.dbtxtcodpro.Caption <> EmptyStr then
                    edtCodProdutoExit(nil)
                  else
                    edtCodProduto.Text := '0';

                finally
                  CadastroProdutos.Free;
                end;
              end
              else
                InseriuObjeto(nil);

      except
        on e: Exception do
        begin
          MessageDlg('Erro ao tentar incluir produto'+#13+e.Message, mtError, [mbok], 0);
        end;
      end;
    end;
    if pnlvalorTotal.Caption <> '0' then
      CadastroVendas.edtqtdprodutoExit(nil);
    if edtqtdproduto.Text <> '0' then
      CadastroVendas.edtqtdprodutoExit(nil);
end;

procedure TCadastroVendas.edtqtdprodutoExit(Sender: TObject);
begin
  pnlvalorTotal.Caption := FloatToStr( StrToIntDef(edtqtdproduto.text,0) * qryConsultaItemvalor_produto.AsFloat );
end;

procedure TCadastroVendas.edtqtdprodutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    edtqtdprodutoExit(nil);
end;

procedure TCadastroVendas.edtCodProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    edtCodProdutoExit(nil);
  if pnlvalorTotal.Caption <> '0' then
    CadastroVendas.edtqtdprodutoExit(nil);
end;

procedure TCadastroVendas.InseriuObjeto(Sender: TObject);
begin
  edtCodProduto.Text := '0';
  edtqtdproduto.Text := '0';
  qryConsultaItem.Close;
  qryConsultaItem.SQL[2] := 'where idproduto = ' + QuotedStr(Trim(edtCodProduto.Text));
  qryConsultaItem.Open;
  pnlvalorTotal.Caption := '0';
end;

procedure TCadastroVendas.btnIncluirClick(Sender: TObject);
begin
  if not qryIncluirItem.Active then
    qryIncluirItem.Open;
  if (edtCodProduto.Text <> '0') or (edtCodProduto.Text <> EmptyStr)then
  begin
    if ((edtqtdproduto.Text = '0') or (edtqtdproduto.Text = EmptyStr)) then
    begin
      MessageDlg('Digite uma quantidade válida.', mtError, [mbok], 0);
      if qryIncluirItem.IsEmpty then
        qryIncluirItem.Close;
    end
    else
    begin
      qryIncluirItem.Open;
      try
        qryIncluirItem.Insert;
        qryIncluirItemidvenda.Value           := qryEmitirVendaidvenda.Value;
        qryIncluirItemitem_unidades.Value     := StrToInt(edtqtdproduto.Text);
        qryIncluirItemnomeproduto.AsString    := dbedtnome.Text;
        qryIncluirItemvalor_item.Value        := qryConsultaItemvalor_produto.Value;
        qryIncluirItemidproduto.value         := StrToInt(edtCodProduto.text);
        qryIncluirItem.Post;
        if qryEmitirVenda.State = dsbrowse then
          qryEmitirVenda.Edit;

        qryEmitirVendavalor.Value := qryEmitirVendavalor.Value + (qryIncluirItemvalor_item.Value * qryIncluirItemitem_unidades.Value);
        qryEmitirVenda.Post;
        btnConfirmar.Enabled := True;
        btnRemoverItemVenda.Enabled := True;
        InseriuObjeto(nil);

      except
        on e: Exception do
        begin
          qryIncluirItem.Cancel;
          MessageDlg('Erro ao tentar incluir item'+#13+e.Message, mtError, [mbok], 0);
        end;

      end;
    end;
  end
  else
    MessageDlg('Insira um código de produto.', mtError, [mbok], 0);
end;

procedure TCadastroVendas.btnNovaVendaClick(Sender: TObject);
begin
  if not qryEmitirVenda.Active then
    qryEmitirVenda.Open;

  if not qryConsultaCliente.Active then
    Exit;

  if not qryPagamento.Active then
    qryPagamento.Open;

  try
    dblkcbbidpagamento.Color          := clWindow;
    edtCodProduto.Color               := clWindow;
    edtqtdproduto.Color               := clWindow;
    edtCodProduto.Enabled             := True;
    edtqtdproduto.Enabled             := True;
    btnConsultaItem.Enabled           := True;
    dblkcbbidpagamento.SetFocus;
    btnIncluir.Enabled                := True;
    qryEmitirVenda.Insert;
    qryEmitirVendaidcliente.AsInteger := qryConsultaClienteidcliente.AsInteger;
    qryEmitirVendadata_venda.Value    := Now();
    QryEmitirVendavalor.Value         := 0;
    qryEmitirVenda.Post;
    btnNovaVenda.Enabled := False;
  except
    on e:Exception do
    begin
      qryEmitirVenda.CancelUpdates;
      MessageDlg('Erro ao tentar iniciar venda' + #13 + e.Message, mtError, [mbok], 0);
    end;
  end;
end;

procedure TCadastroVendas.btnCancelarClick(Sender: TObject);
begin
  if dbedtNumeroVenda.Text <> '' then
  begin
    case Application.MessageBox('Deseja realmente excluir essa venda?', 'Exclusão de venda', MB_YESNO + MB_ICONQUESTION)  of
    IDYES:
      begin
        try
          qryEmitirVenda.Connection.RollbackTrans;
          //qryEmitirVenda.Connection.Connected := False;
          MessageDlg('A venda foi cancelada com sucesso!', mtConfirmation, [mbok], 0);
          CadastroVendas.Close;
        except
          MessageDlg('Não foi possível cancelar a sua venda.', mtWarning, [mbok], 0);
        end;
      end;
    IDNO:
      begin
        Exit;
      end;
    end;
  end
  else
  begin
    CadastroVendas.Close;
  end;

end;

procedure TCadastroVendas.qryIncluirItemAfterOpen(DataSet: TDataSet);
begin
  qryIncluirItem.Properties['Unique Table'].Value := 'item_venda';
end;

procedure TCadastroVendas.btnConfirmarClick(Sender: TObject);
begin
  case Application.MessageBox('Confirmar venda?', 'Confirmação de venda', MB_YESNO + MB_ICONQUESTION)  of
    IDYES:
      begin
        if qryIncluirItem.IsEmpty then
          MessageDlg('Inclua algum item para finalizar a venda', mtInformation, [mbOK], 0)
        else
        begin
          if not(dblkcbbidpagamento.Text = '') then
          begin
            try
              qryEmitirVenda.Edit;
              qryEmitirVendaobservacao_venda.Value := edtobservacaovenda.Text;
              qryEmitirVenda.Post;
              MessageDlg('A venda foi concluida com sucesso!', mtConfirmation, [mbok], 0);
              qryEmitirVenda.Connection.CommitTrans;
              CadastroVendas.Close;
              qryEmitirVenda.Connection.Connected := False;
            except
              on e:Exception do
              begin
                MessageDlg('Erro ao tentar concluir sua venda!' + #13 + e.Message, mtError, [mbok], 0);
              end;
            end;
          end
          else
            MessageDlg('Insira uma forma de pagamento!', mtError, [mbOK], 0);
        end;
      end;
    IDNO:
      begin
        Exit;
      end;
  end;
end;

procedure TCadastroVendas.qryEmitirVendaAfterOpen(DataSet: TDataSet);
begin
  qryEmitirVenda.Properties['Unique Table'].Value := 'venda';
end;

procedure TCadastroVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if qryEmitirVenda.Connection.InTransaction then
  begin
    if qryEmitirVenda.State in [dsedit, dsinsert] then
      qryEmitirVenda.CancelUpdates;
    qryEmitirVenda.Connection.RollbackTrans;
  end;

end;

procedure TCadastroVendas.edtCodProdutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in['0'..'9',#8, #27, #32]) then
  begin
    Beep;
    Key := #0;
  end;
  if (Length(edtCodProduto.Text) = 7) and (not(Key in [#8]))then
    Key := #0;
end;

procedure TCadastroVendas.edtqtdprodutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (not(Key in['0'..'9',#8, #27, #32])) then
    Key := #0;

  if (Length(edtqtdproduto.Text)=5) and (not (Key in [#8])) then
    Key := #0;
end;

procedure TCadastroVendas.btnIncluirKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    btnIncluirClick(nil);
end;

procedure TCadastroVendas.btnConsultaItemClick(Sender: TObject);
begin
  try
    Application.CreateForm(TCadastroProdutos, CadastroProdutos);
    CadastroProdutos.lblCadastroProdutoLogo.Caption := 'CONSULTA DE PRODUTOS';
    CadastroProdutos.pgcCadastroProduto.Pages[1].Destroy;
    CadastroProdutos.btnEditarCadProduto.Destroy;
    CadastroProdutos.ShowModal;
    if CadastroProdutos.qryConsultaProduto.Active then
    begin
      CadastroVendas.edtCodProduto.Text := CadastroProdutos.qryConsultaProdutoidproduto.AsString;
      edtCodProdutoExit(nil);
      edtqtdproduto.SetFocus;
    end;
  finally
    CadastroProdutos.Free;
  end;
end;

procedure TCadastroVendas.edtCodProdutoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  CadastroClientes1.NaoCopiarColar(edtCodProduto);
end;

procedure TCadastroVendas.edtqtdprodutoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  CadastroClientes1.NaoCopiarColar(edtqtdproduto);
end;

procedure TCadastroVendas.edtobservacaovendaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  CadastroClientes1.NaoCopiarColar(edtobservacaovenda);
end;

procedure TCadastroVendas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['v'] then
    Key := #0;
end;

procedure TCadastroVendas.btnRemoverItemVendaClick(Sender: TObject);
begin
  if qryIncluirItem.Active then
  begin
    if qryIncluirItem.State in [dsBrowse] then
    begin
      if MessageDlg('Deseja excluir o registro '+Trim(qryIncluirItem.FieldByName('nomeproduto').AsString)+'?', mtConfirmation, mbYesNoCancel, 0) = mrYes then
      begin
        if qryEmitirVenda.State = dsbrowse then
          qryEmitirVenda.Edit;
        qryEmitirVendavalor.Value := qryEmitirVendavalor.Value - (qryIncluirItemvalor_item.Value * qryIncluirItemitem_unidades.Value);
        qryEmitirVenda.Post;
        qryIncluirItem.Delete;
        if qryIncluirItem.IsEmpty then
        begin
          btnRemoverItemVenda.Enabled := False;
          btnConfirmar.Enabled := False;
        end;
      end;
    end;
  end;
end;

procedure TCadastroVendas.edtqtdprodutoChange(Sender: TObject);
begin
  edtqtdprodutoExit(nil);
end;

procedure TCadastroVendas.FormShow(Sender: TObject);
begin
  btnBuscar.SetFocus;
end;

procedure TCadastroVendas.btnConsultaItem1Click(Sender: TObject);
begin
  if dbedtNumeroVenda.Text <> EmptyStr then
    try
      Application.CreateForm(TCadastroProdutos, CadastroProdutos);
      CadastroProdutos.lblCadastroProdutoLogo.Caption := 'CONSULTA DE PRODUTOS';
      CadastroProdutos.pgcCadastroProduto.Pages[1].Destroy;
      CadastroProdutos.btnEditarCadProduto.Destroy;
      CadastroProdutos.ShowModal;
      if CadastroProdutos.qryConsultaProduto.Active then
      begin
        CadastroVendas.edtCodProduto.Text := CadastroProdutos.qryConsultaProdutoidproduto.AsString;
        edtCodProdutoExit(nil);
        edtqtdproduto.SetFocus;
      end;
    finally
      CadastroProdutos.Free;
    end;
end;

end.
