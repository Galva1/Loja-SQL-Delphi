object CadastroClientes1: TCadastroClientes1
  Left = 342
  Top = 166
  Width = 1081
  Height = 675
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
    Width = 541
    Height = 493
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object pnlBarraPesquisa: TPanel
      Left = 0
      Top = 0
      Width = 541
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
      Width = 541
      Height = 456
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
          Height = 417
          Color = 14934999
          TabOrder = 4
          object btnEditarCadCliente: TButton
            Left = 440
            Top = 378
            Width = 61
            Height = 33
            Caption = 'Editar'
            Enabled = False
            TabOrder = 0
            OnClick = btnEditarCadClienteClick
          end
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
          OnDblClick = dbgrdConsultaClienteDblClick
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
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 20
          ItemIndex = 0
          ParentFont = False
          TabOrder = 1
          Text = 'Nome'
          OnEnter = cbbConsultaEnter
          Items.Strings = (
            'Nome'
            'Cpf')
        end
        object edtConsulta: TEdit
          Left = 160
          Top = 16
          Width = 285
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
          Left = 452
          Top = 14
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
        object pnlCadastroCliente: TPanel
          Left = 8
          Top = 4
          Width = 517
          Height = 417
          Color = 14934999
          TabOrder = 0
          object lblCodCadastroCliente: TLabel
            Left = 80
            Top = 38
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
          object lblCadastroNomeCliente: TLabel
            Left = 172
            Top = 38
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
          object lblCadastroCPFCliente: TLabel
            Left = 80
            Top = 90
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
          object lblCadastroDataNascCliente: TLabel
            Left = 284
            Top = 90
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
          object lblCadastroEndCliente: TLabel
            Left = 80
            Top = 142
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
          object lblCadastroBairroCliente: TLabel
            Left = 80
            Top = 194
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
          object lblCadastroCidadeCliente: TLabel
            Left = 240
            Top = 194
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
            Top = 62
            Width = 57
            Height = 30
            DataField = 'idcliente'
            DataSource = dsDadosCliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl1: TLabel
            Left = 80
            Top = 246
            Width = 85
            Height = 20
            Caption = 'Observa'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object dbedtnomecli: TDBEdit
            Left = 172
            Top = 62
            Width = 245
            Height = 21
            Color = 15395562
            DataField = 'nome'
            DataSource = dsDadosCliente
            Enabled = False
            TabOrder = 0
            OnKeyPress = dbedtnomecliKeyPress
            OnMouseDown = dbedtnomecliMouseDown
          end
          object dbedtcpfcli: TDBEdit
            Left = 80
            Top = 114
            Width = 193
            Height = 21
            Color = 15395562
            DataField = 'cpf'
            DataSource = dsDadosCliente
            Enabled = False
            TabOrder = 1
            OnKeyPress = dbedtcpfcliKeyPress
            OnMouseDown = dbedtcpfcliMouseDown
          end
          object dbedtdatacli: TDBEdit
            Left = 284
            Top = 114
            Width = 133
            Height = 21
            Color = 15395562
            DataField = 'data_nascimento'
            DataSource = dsDadosCliente
            Enabled = False
            TabOrder = 2
            OnKeyPress = dbedtdatacliKeyPress
            OnMouseDown = dbedtdatacliMouseDown
          end
          object dbedtendcli: TDBEdit
            Left = 80
            Top = 166
            Width = 337
            Height = 21
            Color = 15395562
            DataField = 'Endere'#231'o'
            DataSource = dsDadosCliente
            Enabled = False
            TabOrder = 3
            OnMouseDown = dbedtendcliMouseDown
          end
          object dbedtbairrocli: TDBEdit
            Left = 80
            Top = 218
            Width = 149
            Height = 21
            Color = 15395562
            DataField = 'Bairro'
            DataSource = dsDadosCliente
            Enabled = False
            TabOrder = 4
            OnMouseDown = dbedtbairrocliMouseDown
          end
          object dbedtcidadecli: TDBEdit
            Left = 240
            Top = 218
            Width = 177
            Height = 21
            Color = 15395562
            DataField = 'Cidade'
            DataSource = dsDadosCliente
            Enabled = False
            TabOrder = 5
            OnMouseDown = dbedtcidadecliMouseDown
          end
          object btnInserir: TButton
            Left = 80
            Top = 348
            Width = 69
            Height = 49
            Caption = 'Inserir'
            TabOrder = 6
            OnClick = btnInserirClick
          end
          object btnSalvar: TButton
            Left = 216
            Top = 348
            Width = 69
            Height = 49
            Caption = 'Salvar'
            Enabled = False
            TabOrder = 7
            OnClick = btnSalvarClick
          end
          object btnExcluir: TButton
            Left = 284
            Top = 348
            Width = 69
            Height = 49
            Caption = 'Excluir'
            Enabled = False
            TabOrder = 8
            OnClick = btnExcluirClick
          end
          object btnCancelar: TButton
            Left = 352
            Top = 348
            Width = 69
            Height = 49
            Caption = 'Cancelar'
            TabOrder = 9
            OnClick = btnCancelarClick
          end
          object btnAlterar: TButton
            Left = 148
            Top = 348
            Width = 69
            Height = 49
            Caption = 'Alterar'
            Enabled = False
            TabOrder = 10
            OnClick = btnAlterarClick
          end
          object edtobservacaoCliente: TEdit
            Left = 80
            Top = 274
            Width = 345
            Height = 21
            Color = 15395562
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
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
      AutoGenerateValue = arAutoInc
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
    object qryConsultaClienteobservacao_cliente: TMemoField
      FieldName = 'observacao_cliente'
      BlobType = ftMemo
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
    Parameters = <
      item
        Name = 'idcliente'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from cliente'
      'where cliente.idcliente = :idcliente')
    Left = 956
    Top = 52
    object qryDadosClienteidcliente: TAutoIncField
      AutoGenerateValue = arDefault
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
      OnSetText = dtfldDadosClientedata_nascimentoSetText
      EditMask = '!99/99/0000;1;_'
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
    object qryDadosClienteobservacao_cliente: TMemoField
      FieldName = 'observacao_cliente'
      BlobType = ftMemo
    end
  end
  object dsDadosCliente: TDataSource
    DataSet = qryDadosCliente
    Left = 956
    Top = 96
  end
end
