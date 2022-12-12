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
    cbb1: TComboBox;
    edt1: TEdit;
    btn1: TButton;
    qryConsultaVendaidvenda: TAutoIncField;
    qryConsultaVendavalor: TFloatField;
    qryConsultaVendaidcliente: TIntegerField;
    qryConsultaVendadata_venda: TDateTimeField;
    qryConsultaVendanome: TStringField;
    qryConsultaVendacpf: TBCDField;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaVenda: TConsultaVenda;

implementation

{$R *.dfm}

procedure TConsultaVenda.btn1Click(Sender: TObject);
begin
  if Trim(edtConsulta.Text) <> EmptyStr then
    begin
      try
        qryConsultaCliente.SQL.Clear;
        qryConsultaCliente.SQL.Add('Select * from cliente');
        if cbbConsulta.Text = 'ID' then
          qryConsultaCliente.SQL.Add('where cliente.idcliente'+' = '+QuotedStr(Trim(edtConsulta.Text)))
        else
          qryConsultaCliente.SQL.Add('where '+LowerCase(cbbConsulta.Text)+' = '+QuotedStr(Trim(edtConsulta.Text)));
        qryConsultaCliente.Open;
        if qryConsultaCliente.IsEmpty then
          ShowMessage('Este ' + LowerCase(cbbConsulta.Text) + ' não se encontra no sistema!');
      except
        ShowMessage('Este ' + LowerCase(cbbConsulta.Text) + ' não se encontra no sistema!');
      end;

    end
  else
    begin
      qryConsultaCliente.SQL.Clear;
      qryConsultaCliente.SQL.Add('Select * from cliente');
      qryConsultaCliente.Open;
    end;
end;

end.
