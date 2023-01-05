unit ConsultaVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DB, ADODB, StdCtrls;

type
  TConsultaVenda = class(TForm)
    pnlGeralConsultaVendas: TPanel;
    pnl1: TPanel;
    lblNomeTela: TLabel;
    qryConsultaVenda: TADOQuery;
    dsConsultaVenda: TDataSource;
    dbgrdConsultaVenda: TDBGrid;
    cbbConsulta: TComboBox;
    edtConsultaVenda: TEdit;
    btnBuscarVenda: TButton;
    qryConsultaVendaidvenda: TAutoIncField;
    qryConsultaVendavalor: TFloatField;
    qryConsultaVendaidcliente: TIntegerField;
    qryConsultaVendadata_venda: TDateTimeField;
    qryConsultaVendanome: TStringField;
    qryConsultaVendacpf: TBCDField;
    btnimprimirVenda: TButton;
    procedure btnBuscarVendaClick(Sender: TObject);
    procedure ConsultarVenda (Sender: TObject);
    procedure btnimprimirVendaClick(Sender: TObject);
    procedure edtConsultaVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure edtConsultaVendaKeyPress(Sender: TObject; var Key: Char);
    procedure edtConsultaVendaMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cbbConsultaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaVenda: TConsultaVenda;

implementation

uses Loja, RelatorioVenda, CadastroClientes;

{$R *.dfm}

procedure TConsultaVenda.ConsultarVenda (Sender: TObject);
begin
  if (edtConsultaVenda.Text) <> EmptyStr then
  begin
    try
      qryConsultaVenda.Close;
      qryConsultaVenda.SQL.Clear;
      qryConsultaVenda.SQL.Add('select venda.*, cliente.nome, cliente.cpf from venda');
      qryConsultaVenda.SQL.Add('inner join cliente on cliente.idcliente = venda.idcliente');
      case cbbConsulta.ItemIndex of
      0:
        qryConsultaVenda.SQL.Add('where venda.idvenda = '+ QuotedStr(edtConsultaVenda.Text));
      1:
        begin
          qryConsultaVenda.SQL.Clear;
          qryConsultaVenda.SQL.Add('select venda.*, cliente.nome, cliente.cpf,format(venda.data_venda,'+QuotedStr('dd/MM/yyyy')+') as datavenda from venda');
          qryConsultaVenda.SQL.Add('inner join cliente on cliente.idcliente = venda.idcliente');
          qryConsultaVenda.SQL.Add('where venda.data_venda ='+ QuotedStr(edtConsultaVenda.Text));
        end;
      2:
        qryConsultaVenda.SQL.Add('where venda.idcliente ='+ QuotedStr(edtConsultaVenda.Text));
      3:
        qryConsultaVenda.SQL.Add('where cliente.nome LIKE'+ LowerCase(QuotedStr('%'+edtConsultaVenda.Text+'%')));
      4:
        qryConsultaVenda.SQL.Add('where cliente.cpf ='+ QuotedStr(edtConsultaVenda.Text));
      else
        MessageDlg('Preencha o filtro!', mtError, [mbok], 0);
      end;
      qryConsultaVenda.Open;
      if qryConsultaVenda.IsEmpty then
      begin
        qryConsultaVenda.Close;
        btnimprimirVenda.Enabled := False;
        MessageDlg('Este ' + LowerCase(cbbConsulta.Text) + ' não se encontra no sistema!', mtError, [mbok], 0);
      end;
    except
      on e: Exception do
      begin
        qryConsultaVenda.Close;
        btnimprimirVenda.Enabled := False;
        MessageDlg('Erro ao tentar procurar venda'+#13+e.Message, mtError, [mbok], 0);
      end;
    end;
  end
  else
  begin
    qryConsultaVenda.Close;
    qryConsultaVenda.SQL.Clear;
    qryConsultaVenda.SQL.Add('select * from venda inner join cliente on cliente.idcliente = venda.idcliente');
    qryConsultaVenda.Open;
  end;
end;

procedure TConsultaVenda.btnBuscarVendaClick(Sender: TObject);
begin
  btnimprimirVenda.Enabled:=True;
  ConsultarVenda(nil);
end;

procedure TConsultaVenda.btnimprimirVendaClick(Sender: TObject);
begin
  try
    Application.CreateForm(TRelatorioVendas, RelatorioVendas);
    RelatorioVendas.qryRelatorioVenda.Close;
    RelatorioVendas.qryRelatorioVenda.Parameters.ParamByName('idvenda').Value := FloatToStr(ConsultaVenda.dbgrdConsultaVenda.Fields[0].Value);
    RelatorioVendas.qryRelatorioVenda.Open;
    RelatorioVendas.qckrpRelatorioVenda.Preview;
  finally
    RelatorioVendas.Free;
  end;
end;


procedure TConsultaVenda.edtConsultaVendaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    btnBuscarVendaClick(nil);
end;

procedure TConsultaVenda.FormActivate(Sender: TObject);
begin
  ConsultaVenda.AutoSize := True;
end;

procedure TConsultaVenda.edtConsultaVendaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if cbbConsulta.ItemIndex <> 3 then
    if not (Key in['0'..'9',#8, #27, #32]) then
      Key := #0;


  if (Length(edtConsultaVenda.Text)=50) and not(Key in[#8]) then
    Key := #0;

  if cbbConsulta.ItemIndex = 1 then
    if (Length(edtConsultaVenda.Text)=10) and not(Key in[#8])then
      Key := #0
    else
      if not(Key in[#8]) then
      begin
        if (Length(edtConsultaVenda.Text)=2) or (Length(edtConsultaVenda.Text)=5) then
          edtConsultaVenda.Text := edtConsultaVenda.Text + '/';
        edtConsultaVenda.SelStart := Length(edtConsultaVenda.Text);
      end;

end;

procedure TConsultaVenda.edtConsultaVendaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  CadastroClientes1.NaoCopiarColar(edtConsultaVenda);
end;

procedure TConsultaVenda.cbbConsultaChange(Sender: TObject);
begin
  edtConsultaVenda.Text := '';
end;

end.



