object CadastroVendas: TCadastroVendas
  Left = 287
  Top = 37
  Width = 1112
  Height = 782
  Caption = 'Cadastro Vendas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlGeral: TPanel
    Left = 0
    Top = 40
    Width = 617
    Height = 629
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object lblNvenda: TLabel
      Left = 8
      Top = 244
      Width = 68
      Height = 20
      Caption = 'N'#186' Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblFormaPagamento: TLabel
      Left = 100
      Top = 244
      Width = 131
      Height = 20
      Caption = 'Forma pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 8
      Top = 579
      Width = 89
      Height = 20
      Caption = 'Observa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object pgcClienteEmissao: TPageControl
      Left = 0
      Top = 80
      Width = 617
      Height = 161
      ActivePage = tsCliente
      TabOrder = 2
      object tsCliente: TTabSheet
        Caption = 'Cliente'
        object lblcodcli: TLabel
          Left = 12
          Top = 16
          Width = 44
          Height = 16
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblnomecli: TLabel
          Left = 88
          Top = 16
          Width = 37
          Height = 16
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblcpfcli: TLabel
          Left = 12
          Top = 68
          Width = 26
          Height = 16
          Caption = 'CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblendcli: TLabel
          Left = 124
          Top = 68
          Width = 59
          Height = 16
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblbairrocli: TLabel
          Left = 344
          Top = 68
          Width = 36
          Height = 16
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbl1: TLabel
          Left = 444
          Top = 68
          Width = 44
          Height = 16
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dbedtcodCliente: TDBEdit
          Left = 12
          Top = 36
          Width = 65
          Height = 24
          Color = 15395562
          DataField = 'idcliente'
          DataSource = dsConsultaCliente
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object dbedtcpfcli: TDBEdit
          Left = 12
          Top = 88
          Width = 101
          Height = 24
          Color = 15395562
          DataField = 'cpf'
          DataSource = dsConsultaCliente
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object dbedtnomecli: TDBEdit
          Left = 88
          Top = 36
          Width = 245
          Height = 24
          Color = 15395562
          DataField = 'nome'
          DataSource = dsConsultaCliente
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object dbedtendcli: TDBEdit
          Left = 124
          Top = 88
          Width = 209
          Height = 24
          Color = 15395562
          DataField = 'Endere'#231'o'
          DataSource = dsConsultaCliente
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object dbedtbairrocli: TDBEdit
          Left = 344
          Top = 88
          Width = 89
          Height = 24
          Color = 15395562
          DataField = 'Bairro'
          DataSource = dsConsultaCliente
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object dbedtcidcli: TDBEdit
          Left = 444
          Top = 88
          Width = 145
          Height = 24
          Color = 15395562
          DataField = 'Cidade'
          DataSource = dsConsultaCliente
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object btnBuscar: TButton
          Left = 344
          Top = 32
          Width = 65
          Height = 31
          Caption = 'Buscar'
          TabOrder = 6
          OnClick = btnBuscarClick
        end
      end
    end
    object pnlsuperior: TPanel
      Left = 0
      Top = 0
      Width = 617
      Height = 41
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Color = 13423300
      TabOrder = 0
      object lblNomeTela: TLabel
        Left = 8
        Top = 8
        Width = 132
        Height = 25
        Caption = 'NOVA VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object pnlDataHora: TPanel
      Left = 0
      Top = 40
      Width = 617
      Height = 41
      BevelOuter = bvSpace
      Color = clWhite
      TabOrder = 1
      object lblData: TLabel
        Left = 16
        Top = 8
        Width = 35
        Height = 20
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblHora: TLabel
        Left = 156
        Top = 8
        Width = 35
        Height = 20
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object pnlDataAtual: TPanel
        Left = 56
        Top = 4
        Width = 89
        Height = 29
        Alignment = taLeftJustify
        Caption = 'DataAtual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object pnlHoraAtual: TPanel
        Left = 200
        Top = 4
        Width = 89
        Height = 29
        Alignment = taLeftJustify
        Caption = 'HoraAtual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object pgcItem: TPageControl
      Left = 0
      Top = 304
      Width = 617
      Height = 273
      ActivePage = tsItem
      TabOrder = 3
      object tsItem: TTabSheet
        Caption = 'Item'
        object lblCodProduto: TLabel
          Left = 32
          Top = 21
          Width = 74
          Height = 20
          Caption = 'Cod. Prod.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblDesc: TLabel
          Left = 112
          Top = 21
          Width = 71
          Height = 20
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblQTD: TLabel
          Left = 304
          Top = 21
          Width = 30
          Height = 20
          Caption = 'Qtd.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblValorTotal: TLabel
          Left = 388
          Top = 21
          Width = 111
          Height = 20
          Caption = 'Valor Total (R$)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dbgrdprodutos: TDBGrid
          Left = 8
          Top = 104
          Width = 589
          Height = 133
          DataSource = dsIncluirItem
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'idproduto'
              Title.Caption = 'ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nomeproduto'
              Title.Caption = 'Nome'
              Width = 260
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_item'
              Title.Caption = 'Valor (R$)'
              Width = 138
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'item_unidades'
              Title.Caption = 'Unidades'
              Width = 97
              Visible = True
            end>
        end
        object edtCodProduto: TEdit
          Left = 32
          Top = 44
          Width = 69
          Height = 28
          Color = 15395562
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '0'
          OnExit = edtCodProdutoExit
          OnKeyDown = edtCodProdutoKeyDown
          OnKeyPress = edtCodProdutoKeyPress
          OnMouseDown = edtCodProdutoMouseDown
        end
        object dbedtnome: TDBEdit
          Left = 112
          Top = 44
          Width = 181
          Height = 28
          Color = 15395562
          DataField = 'nome'
          DataSource = dsConsultaItem
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object edtqtdproduto: TEdit
          Left = 304
          Top = 44
          Width = 73
          Height = 28
          Color = 15395562
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = '0'
          OnChange = edtqtdprodutoChange
          OnExit = edtqtdprodutoExit
          OnKeyDown = edtqtdprodutoKeyDown
          OnKeyPress = edtqtdprodutoKeyPress
          OnMouseDown = edtqtdprodutoMouseDown
        end
        object pnlvalorTotal: TPanel
          Left = 388
          Top = 44
          Width = 113
          Height = 29
          Alignment = taLeftJustify
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object btnIncluir: TButton
          Left = 516
          Top = 4
          Width = 81
          Height = 41
          Caption = 'Incluir'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = btnIncluirClick
          OnKeyDown = btnIncluirKeyDown
        end
        object btnConsultaItem: TButton
          Left = 4
          Top = 20
          Width = 21
          Height = 21
          Caption = '?'
          Enabled = False
          TabOrder = 6
          OnClick = btnConsultaItemClick
        end
        object btnRemoverItemVenda: TButton
          Left = 516
          Top = 56
          Width = 81
          Height = 41
          Caption = 'Remover'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = btnRemoverItemVendaClick
        end
      end
    end
    object btnConfirmar: TButton
      Left = 407
      Top = 594
      Width = 97
      Height = 29
      Caption = 'Confirmar'
      Enabled = False
      TabOrder = 4
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TButton
      Left = 510
      Top = 594
      Width = 97
      Height = 29
      Caption = 'Cancelar'
      TabOrder = 5
      OnClick = btnCancelarClick
    end
    object dbedtNumeroVenda: TDBEdit
      Left = 8
      Top = 264
      Width = 69
      Height = 28
      Color = 15395562
      DataField = 'idvenda'
      DataSource = dsEmitirVenda
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object btnNovaVenda: TButton
      Left = 320
      Top = 252
      Width = 89
      Height = 41
      Caption = 'Nova venda'
      Enabled = False
      TabOrder = 7
      OnClick = btnNovaVendaClick
    end
    object dblkcbbidpagamento: TDBLookupComboBox
      Left = 100
      Top = 264
      Width = 181
      Height = 28
      Color = 15395562
      DataField = 'idpagamento'
      DataSource = dsEmitirVenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'idpagamento'
      ListField = 'nomepagamento'
      ListSource = dsPagamento
      ParentFont = False
      TabOrder = 8
    end
    object edtobservacaovenda: TEdit
      Left = 8
      Top = 602
      Width = 365
      Height = 21
      TabOrder = 9
      OnMouseDown = edtobservacaovendaMouseDown
    end
  end
  object qryConsultaCliente: TADOQuery
    Connection = LojaMenu.conLoja
    CursorType = ctStatic
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
    Left = 744
    Top = 116
    object qryConsultaClienteidcliente: TAutoIncField
      FieldName = 'idcliente'
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
    Left = 836
    Top = 116
  end
  object qryEmitirVenda: TADOQuery
    Connection = LojaMenu.conLoja
    CursorType = ctStatic
    AfterOpen = qryEmitirVendaAfterOpen
    DataSource = dsConsultaCliente
    Parameters = <>
    SQL.Strings = (
      'Select venda.*, pagamento.idpagamento, pagamento.nomepagamento'
      'from venda'
      
        'inner join pagamento on pagamento.idpagamento = venda.idpagament' +
        'o'
      'where 1 = 0')
    Left = 724
    Top = 336
    object qryEmitirVendaidvenda: TAutoIncField
      FieldName = 'idvenda'
      ReadOnly = True
    end
    object qryEmitirVendavalor: TFloatField
      FieldName = 'valor'
    end
    object qryEmitirVendaidcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object qryEmitirVendadata_venda: TDateField
      FieldName = 'data_venda'
    end
    object qryEmitirVendaidpagamento: TIntegerField
      FieldName = 'idpagamento'
    end
    object qryEmitirVendanomepagamento: TWideStringField
      FieldName = 'nomepagamento'
      FixedChar = True
      Size = 50
    end
    object qryEmitirVendaobservacao_venda: TMemoField
      FieldName = 'observacao_venda'
      BlobType = ftMemo
    end
  end
  object dsEmitirVenda: TDataSource
    DataSet = qryEmitirVenda
    Left = 800
    Top = 328
  end
  object dsConsultaItem: TDataSource
    DataSet = qryConsultaItem
    Left = 992
    Top = 284
  end
  object qryConsultaItem: TADOQuery
    Connection = LojaMenu.conLoja
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'from produto'
      ''
      '')
    Left = 936
    Top = 284
    object qryConsultaItemidproduto: TAutoIncField
      FieldName = 'idproduto'
      ReadOnly = True
    end
    object qryConsultaItemnome: TWideStringField
      FieldName = 'nome'
      FixedChar = True
      Size = 50
    end
    object qryConsultaItemvalor_produto: TFloatField
      FieldName = 'valor_produto'
    end
  end
  object dsIncluirItem: TDataSource
    DataSet = qryIncluirItem
    Left = 800
    Top = 384
  end
  object qryIncluirItem: TADOQuery
    Connection = LojaMenu.conLoja
    CursorType = ctStatic
    AfterOpen = qryIncluirItemAfterOpen
    Parameters = <>
    SQL.Strings = (
      'Select item_venda.*'
      'from item_venda'
      'where 1 = 0')
    Left = 724
    Top = 384
    object qryIncluirItemidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object qryIncluirItemidvenda: TAutoIncField
      FieldName = 'idvenda'
    end
    object qryIncluirItemitem_unidades: TIntegerField
      FieldName = 'item_unidades'
    end
    object qryIncluirItemvalor_item: TFloatField
      FieldName = 'valor_item'
    end
    object qryIncluirItemnomeproduto: TStringField
      FieldName = 'nomeproduto'
      FixedChar = True
      Size = 30
    end
    object qryIncluirItemiditem_venda: TAutoIncField
      FieldName = 'iditem_venda'
      ReadOnly = True
    end
  end
  object dsPagamento: TDataSource
    DataSet = qryPagamento
    Left = 996
    Top = 380
  end
  object qryPagamento: TADOQuery
    Connection = LojaMenu.conLoja
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'from pagamento')
    Left = 920
    Top = 384
    object qryPagamentonomepagamento: TWideStringField
      FieldName = 'nomepagamento'
      FixedChar = True
      Size = 50
    end
    object qryPagamentoidpagamento: TAutoIncField
      FieldName = 'idpagamento'
      ReadOnly = True
    end
  end
end
