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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaVenda: TConsultaVenda;

implementation

uses Loja, RelatorioVenda;

{$R *.dfm}

procedure TConsultaVenda.ConsultarVenda (Sender: TObject);
begin
  if (edtConsultaVenda.Text) <> EmptyStr then
  begin
    try
//      ID Venda
//      Data
//      ID Cliente
//      Nome Cliente
//      CPF
      qryConsultaVenda.Close;
      qryConsultaVenda.SQL.Clear;
      qryConsultaVenda.SQL.Add('select venda.*, cliente.nome, cliente.cpf from venda');
      qryConsultaVenda.SQL.Add('inner join cliente on cliente.idcliente = venda.idcliente');
      case cbbConsulta.ItemIndex of
      0:
        qryConsultaVenda.SQL.Add('where venda.idvenda = '+ QuotedStr(edtConsultaVenda.Text));
      1:
        qryConsultaVenda.SQL.Add('where venda.data_venda ='+ QuotedStr(edtConsultaVenda.Text));
      2:
        qryConsultaVenda.SQL.Add('where venda.idcliente ='+ QuotedStr(edtConsultaVenda.Text));
      3:
        qryConsultaVenda.SQL.Add('where cliente.nome ='+ QuotedStr(edtConsultaVenda.Text));
      4:
        qryConsultaVenda.SQL.Add('where cliente.cpf ='+ QuotedStr(edtConsultaVenda.Text));
      else
        ShowMessage('Preencha o filtro!');
      end;
      qryConsultaVenda.Open;
      if qryConsultaVenda.IsEmpty then
          ShowMessage('Este ' + LowerCase(cbbConsulta.Text) + ' não se encontra no sistema!');
    except
      on e: Exception do
      begin
        MessageDlg('Erro ao tentar procurar venda'+#13+e.Message, mtError, [mbok], 0);
      end;
    end;
  end
  else
  begin

  end;
end;

procedure TConsultaVenda.btnBuscarVendaClick(Sender: TObject);
begin
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

end.
