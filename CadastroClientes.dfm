object CadastroClientes1: TCadastroClientes1
  Left = 277
  Top = 197
  Width = 1051
  Height = 509
  Caption = 'CadastroClientes1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlGeralCC: TPanel
    Left = 0
    Top = 0
    Width = 545
    Height = 453
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object pnlBarraPesquisa: TPanel
      Left = 0
      Top = 0
      Width = 545
      Height = 37
      Align = alTop
      BevelOuter = bvNone
      Color = 13423300
      TabOrder = 0
      object lbl8: TLabel
        Left = 4
        Top = 4
        Width = 248
        Height = 25
        Caption = 'CADASTRO DE CLIENTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object pgcCadastroCliente: TPageControl
      Left = 0
      Top = 37
      Width = 545
      Height = 416
      ActivePage = ts2
      Align = alClient
      TabOrder = 1
      OnChange = pgcCadastroClienteChange
      object ts1: TTabSheet
        Caption = 'Consulta'
        object pnl2: TPanel
          Left = 8
          Top = 4
          Width = 517
          Height = 381
          Color = 14934999
          TabOrder = 4
        end
        object dbgrdConsultaCliente: TDBGrid
          Left = 20
          Top = 68
          Width = 493
          Height = 305
          DataSource = dsConsultaCliente
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'idcliente'
              Title.Caption = 'ID'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome'
              Title.Caption = 'Nome do usu'#225'rio'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cpf'
              Title.Caption = 'CPF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_nascimento'
              Title.Caption = 'Data de nasc.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Endere'#231'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Bairro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cidade'
              Visible = True
            end>
        end
        object cbbConsulta: TComboBox
          Left = 28
          Top = 16
          Width = 125
          Height = 28
          AutoDropDown = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 20
          ParentFont = False
          TabOrder = 1
          OnEnter = cbbConsultaEnter
          Items.Strings = (
            'Nome'
            'Cpf')
        end
        object edtConsulta: TEdit
          Left = 160
          Top = 16
          Width = 245
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyDown = edtConsultaKeyDown
        end
        object btnBuscar: TButton
          Left = 424
          Top = 16
          Width = 61
          Height = 33
          Caption = 'Buscar'
          TabOrder = 3
          OnClick = btnBuscarClick
        end
      end
      object ts2: TTabSheet
        Caption = 'Dados'
        ImageIndex = 1
        object pnl1: TPanel
          Left = 8
          Top = 4
          Width = 517
          Height = 365
          Color = 14934999
          TabOrder = 0
          object lbl1: TLabel
            Left = 80
            Top = 48
            Width = 29
            Height = 20
            Caption = 'Cod'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl2: TLabel
            Left = 172
            Top = 48
            Width = 42
            Height = 20
            Caption = 'Nome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl3: TLabel
            Left = 80
            Top = 100
            Width = 31
            Height = 20
            Caption = 'CPF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl4: TLabel
            Left = 284
            Top = 100
            Width = 121
            Height = 20
            Caption = 'Data nascimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl5: TLabel
            Left = 80
            Top = 152
            Width = 69
            Height = 20
            Caption = 'Endere'#231'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl6: TLabel
            Left = 80
            Top = 204
            Width = 42
            Height = 20
            Caption = 'Bairro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl7: TLabel
            Left = 240
            Top = 204
            Width = 50
            Height = 20
            Caption = 'Cidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object dbtxtidcli: TDBText
            Left = 80
            Top = 72
            Width = 57
            Height = 29
            DataField = 'idcliente'
            DataSource = dsDadosCliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object dbedtnomecli: TDBEdit
            Left = 172
            Top = 72
            Width = 245
            Height = 21
            DataField = 'nome'
            DataSource = dsDadosCliente
            Enabled = False
            TabOrder = 0
          end
          object dbedtcpfcli: TDBEdit
            Left = 80
            Top = 124
            Width = 193
            Height = 21
            DataField = 'cpf'
            DataSource = dsDadosCliente
            Enabled = False
            TabOrder = 1
          end
          object dbedtdatacli: TDBEdit
            Left = 284
            Top = 124
            Width = 133
            Height = 21
            DataField = 'data_nascimento'
            DataSource = dsDadosCliente
            Enabled = False
            TabOrder = 2
          end
          object dbedtendcli: TDBEdit
            Left = 80
            Top = 176
            Width = 337
            Height = 21
            DataField = 'Endere'#231'o'
            DataSource = dsDadosCliente
            Enabled = False
            TabOrder = 3
          end
          object dbedtbairrocli: TDBEdit
            Left = 80
            Top = 228
            Width = 149
            Height = 21
            DataField = 'Bairro'
            DataSource = dsDadosCliente
            Enabled = False
            TabOrder = 4
          end
          object dbedtcidadecli: TDBEdit
            Left = 240
            Top = 228
            Width = 177
            Height = 21
            DataField = 'Cidade'
            DataSource = dsDadosCliente
            Enabled = False
            TabOrder = 5
          end
          object btnInserir: TButton
            Left = 80
            Top = 316
            Width = 69
            Height = 49
            Caption = 'Inserir'
            TabOrder = 6
            OnClick = btnInserirClick
          end
          object btnSalvar: TButton
            Left = 216
            Top = 316
            Width = 69
            Height = 49
            Caption = 'Salvar'
            Enabled = False
            TabOrder = 7
            OnClick = btnSalvarClick
          end
          object btnExcluir: TButton
            Left = 284
            Top = 316
            Width = 69
            Height = 49
            Caption = 'Excluir'
            Enabled = False
            TabOrder = 8
            OnClick = btnExcluirClick
          end
          object btnCancelar: TButton
            Left = 352
            Top = 316
            Width = 69
            Height = 49
            Caption = 'Cancelar'
            TabOrder = 9
            OnClick = btnCancelarClick
          end
          object btnAlterar: TButton
            Left = 148
            Top = 316
            Width = 69
            Height = 49
            Caption = 'Alterar'
            Enabled = False
            TabOrder = 10
            OnClick = btnAlterarClick
          end
        end
      end
    end
  end
  object qryConsultaCliente: TADOQuery
    Connection = LojaMenu.conLoja
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'from cliente')
    Left = 840
    Top = 56
    object qryConsultaClienteidcliente: TAutoIncField
      FieldName = 'idcliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryConsultaClientenome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object qryConsultaClientecpf: TBCDField
      FieldName = 'cpf'
      Precision = 18
      Size = 0
    end
    object dtfldConsultaClientedata_nascimento: TDateField
      FieldName = 'data_nascimento'
      EditMask = '!99/99/00;1;_'
    end
    object qryConsultaClienteEndereo: TStringField
      FieldName = 'Endere'#231'o'
      Size = 50
    end
    object qryConsultaClienteBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 50
    end
    object qryConsultaClienteCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 50
    end
  end
  object dsConsultaCliente: TDataSource
    DataSet = qryConsultaCliente
    Left = 840
    Top = 100
  end
  object qryDadosCliente: TADOQuery
    Connection = LojaMenu.conLoja
    CursorType = ctStatic
    DataSource = dsConsultaCliente
    Parameters = <
      item
        Name = 'idcliente'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from cliente'
      'where cliente.idcliente = :idcliente')
    Left = 956
    Top = 52
    object qryDadosClienteidcliente: TAutoIncField
      FieldName = 'idcliente'
      ReadOnly = True
    end
    object qryDadosClientenome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object qryDadosClientecpf: TBCDField
      FieldName = 'cpf'
      Precision = 18
      Size = 0
    end
    object dtfldDadosClientedata_nascimento: TDateField
      FieldName = 'data_nascimento'
    end
    object qryDadosClienteEndereo: TStringField
      FieldName = 'Endere'#231'o'
      Size = 50
    end
    object qryDadosClienteBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 50
    end
    object qryDadosClienteCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 50
    end
  end
  object dsDadosCliente: TDataSource
    DataSet = qryDadosCliente
    Left = 956
    Top = 96
  end
end
