object CadastroVendas: TCadastroVendas
  Left = 232
  Top = 147
  Width = 1301
  Height = 653
  Caption = 'CadastroVendas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlGeral: TPanel
    Left = 80
    Top = 12
    Width = 617
    Height = 565
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object lbl2: TLabel
      Left = 20
      Top = 252
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
    object lbl3: TLabel
      Left = 120
      Top = 252
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
    object lbl4: TLabel
      Left = 324
      Top = 252
      Width = 85
      Height = 20
      Caption = 'Vencimento'
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
        object btnBuscar: TSpeedButton
          Left = 344
          Top = 32
          Width = 45
          Height = 28
          Caption = 'Buscar'
          OnClick = btnBuscarClick
        end
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
        Width = 199
        Height = 25
        Caption = 'EMISS'#195'O DE VENDA'
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
    object pgc1: TPageControl
      Left = 0
      Top = 308
      Width = 617
      Height = 213
      ActivePage = tsItem
      TabOrder = 3
      object tsItem: TTabSheet
        Caption = 'Item'
        object lblCodProduto: TLabel
          Left = 12
          Top = 5
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
          Top = 5
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
          Top = 5
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
          Top = 5
          Width = 76
          Height = 20
          Caption = 'Valor Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dbgrdprodutos: TDBGrid
          Left = 8
          Top = 76
          Width = 593
          Height = 105
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
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nomeproduto'
              Width = 259
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_item'
              Width = 132
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'item_unidades'
              Width = 111
              Visible = True
            end>
        end
        object edtCodProduto: TEdit
          Left = 12
          Top = 28
          Width = 81
          Height = 28
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
        end
        object dbedtnome: TDBEdit
          Left = 112
          Top = 28
          Width = 173
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
          Top = 28
          Width = 65
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = '0'
          OnExit = edtqtdprodutoExit
          OnKeyDown = edtqtdprodutoKeyDown
        end
        object pnlvalorTotal: TPanel
          Left = 388
          Top = 28
          Width = 105
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
        object btn1: TButton
          Left = 512
          Top = 20
          Width = 81
          Height = 41
          Caption = 'Incluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = btn1Click
        end
      end
    end
    object btnConfirmar: TButton
      Left = 408
      Top = 528
      Width = 97
      Height = 29
      Caption = 'Confirmar'
      TabOrder = 4
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TButton
      Left = 516
      Top = 528
      Width = 97
      Height = 29
      Caption = 'Cancelar'
      TabOrder = 5
      OnClick = btnCancelarClick
    end
    object dtpvencimento: TDateTimePicker
      Left = 324
      Top = 272
      Width = 149
      Height = 28
      Date = 44902.670463946760000000
      Time = 44902.670463946760000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MinDate = 44902.000000000000000000
      ParentFont = False
      TabOrder = 6
    end
    object dbedtNumeroVenda: TDBEdit
      Left = 20
      Top = 272
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
      TabOrder = 7
    end
    object btnNovaVenda: TButton
      Left = 512
      Top = 264
      Width = 89
      Height = 41
      Caption = 'Nova venda'
      TabOrder = 8
      OnClick = btnNovaVendaClick
    end
    object dblkcbbidpagamento: TDBLookupComboBox
      Left = 112
      Top = 272
      Width = 181
      Height = 28
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
      TabOrder = 9
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
    DataSource = dsConsultaCliente
    Parameters = <>
    SQL.Strings = (
      
        'Select venda.*, cliente.*, item_venda.idpagamento, pagamento.idp' +
        'agamento, pagamento.nomepagamento'
      'from venda'
      'inner join cliente on cliente.idcliente = venda.idvenda'
      'inner join item_venda on item_venda.idvenda = venda.idvenda'
      
        'inner join pagamento on pagamento.idpagamento = item_venda.idpag' +
        'amento'
      'where 1 = 0')
    Left = 724
    Top = 332
    object qryEmitirVendaidvenda: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'idvenda'
      ReadOnly = True
    end
    object qryEmitirVendavalor: TFloatField
      FieldName = 'valor'
    end
    object qryEmitirVendaidcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object qryEmitirVendadata_venda: TDateTimeField
      FieldName = 'data_venda'
    end
    object qryEmitirVendanome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object qryEmitirVendacpf: TBCDField
      FieldName = 'cpf'
      Precision = 18
      Size = 0
    end
    object dtfldEmitirVendadata_nascimento: TDateField
      FieldName = 'data_nascimento'
    end
    object qryEmitirVendaEndereo: TStringField
      FieldName = 'Endere'#231'o'
      Size = 50
    end
    object qryEmitirVendaBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 50
    end
    object qryEmitirVendaCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object qryEmitirVendaidpagamento: TIntegerField
      FieldName = 'idpagamento'
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
    Active = True
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
    Parameters = <
      item
        Name = 'idvenda'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select '
      'item_venda.*'
      'from item_venda'
      
        'inner join pagamento on pagamento.idpagamento = item_venda.idpag' +
        'amento'
      'where item_venda.idvenda = :idvenda')
    Left = 724
    Top = 384
    object qryIncluirItemiditem_venda: TAutoIncField
      FieldName = 'iditem_venda'
      ReadOnly = True
    end
    object qryIncluirItemidvenda: TIntegerField
      FieldName = 'idvenda'
    end
    object qryIncluirItemidproduto: TIntegerField
      FieldName = 'idproduto'
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
    object qryIncluirItemidpagamento: TIntegerField
      FieldName = 'idpagamento'
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
