object ConsultaVenda: TConsultaVenda
  Left = 331
  Top = 107
  Width = 1088
  Height = 563
  Caption = 'Consulta Vendas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlGeralConsultaVendas: TPanel
    Left = 216
    Top = 28
    Width = 517
    Height = 413
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object pnl1: TPanel
      Left = 0
      Top = 0
      Width = 517
      Height = 45
      Align = alTop
      BevelOuter = bvNone
      Color = 13423300
      TabOrder = 0
      object lblNomeTela: TLabel
        Left = 8
        Top = 8
        Width = 199
        Height = 25
        Caption = 'CONSULTA VENDAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object dbgrdConsultaVenda: TDBGrid
      Left = 8
      Top = 128
      Width = 501
      Height = 229
      DataSource = dsConsultaVenda
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'idvenda'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idcliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_venda'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpf'
          Visible = True
        end>
    end
    object cbbConsulta: TComboBox
      Left = 8
      Top = 64
      Width = 93
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = 'ID Venda'
      OnChange = cbbConsultaChange
      Items.Strings = (
        'ID Venda'
        'Data'
        'ID Cliente'
        'Nome Cliente'
        'CPF')
    end
    object edtConsultaVenda: TEdit
      Left = 112
      Top = 64
      Width = 321
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyDown = edtConsultaVendaKeyDown
      OnKeyPress = edtConsultaVendaKeyPress
      OnMouseDown = edtConsultaVendaMouseDown
    end
    object btnBuscarVenda: TButton
      Left = 448
      Top = 60
      Width = 53
      Height = 33
      Caption = 'Pesquisar'
      TabOrder = 4
      OnClick = btnBuscarVendaClick
    end
    object btnimprimirVenda: TButton
      Left = 412
      Top = 372
      Width = 89
      Height = 29
      Caption = 'Imprimir'
      Enabled = False
      TabOrder = 5
      OnClick = btnimprimirVendaClick
    end
  end
  object qryConsultaVenda: TADOQuery
    Connection = LojaMenu.conLoja
    CursorType = ctStatic
    DataSource = RelatorioVendas.dsRelatorioVenda
    Parameters = <>
    SQL.Strings = (
      'select venda.*, cliente.nome, cliente.cpf'
      'from venda'
      'inner join cliente on cliente.idcliente = venda.idcliente')
    Left = 812
    Top = 88
    object qryConsultaVendaidvenda: TAutoIncField
      FieldName = 'idvenda'
      ReadOnly = True
    end
    object qryConsultaVendavalor: TFloatField
      FieldName = 'valor'
    end
    object qryConsultaVendadata_venda: TDateTimeField
      FieldName = 'data_venda'
    end
    object qryConsultaVendaidcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object qryConsultaVendanome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object qryConsultaVendacpf: TBCDField
      FieldName = 'cpf'
      Precision = 18
      Size = 0
    end
  end
  object dsConsultaVenda: TDataSource
    DataSet = qryConsultaVenda
    Left = 812
    Top = 132
  end
end
