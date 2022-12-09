object CadastroProdutos: TCadastroProdutos
  Left = 468
  Top = 179
  Width = 798
  Height = 563
  Caption = 'CadastroProduto'
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
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Color = 13423300
      TabOrder = 0
      object lbl8: TLabel
        Left = 4
        Top = 4
        Width = 263
        Height = 25
        Caption = 'CADASTRO DE PRODUTOS'
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
      Top = 41
      Width = 545
      Height = 412
      ActivePage = ts2
      Align = alClient
      TabOrder = 1
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
        object dbgrdConsultaProduto: TDBGrid
          Left = 20
          Top = 68
          Width = 493
          Height = 305
          DataSource = dsConsultaProduto
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
              FieldName = 'idproduto'
              Title.Caption = 'ID'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome'
              Title.Caption = 'Nome do produto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_produto'
              Title.Caption = 'Valor'
              Width = 112
              Visible = True
            end>
        end
        object cbbConsultaProduto: TComboBox
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
          Items.Strings = (
            'Nome'
            'ID')
        end
        object edtConsultaProduto: TEdit
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
          OnKeyDown = edtConsultaProdutoKeyDown
        end
        object btnBuscarProduto: TButton
          Left = 424
          Top = 16
          Width = 61
          Height = 29
          Caption = 'Buscar'
          TabOrder = 3
          OnClick = btnBuscarProdutoClick
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
            Left = 228
            Top = 24
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
            Left = 224
            Top = 84
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
          object lbl7: TLabel
            Left = 228
            Top = 144
            Width = 37
            Height = 20
            Caption = 'Valor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object dbtxtcodpro: TDBText
            Left = 208
            Top = 48
            Width = 69
            Height = 29
            Alignment = taCenter
            DataField = 'idproduto'
            DataSource = dsDadosProduto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object dbedtnomepro: TDBEdit
            Left = 132
            Top = 108
            Width = 245
            Height = 21
            DataField = 'nome'
            DataSource = dsDadosProduto
            Enabled = False
            TabOrder = 0
          end
          object dbedtvalorpro: TDBEdit
            Left = 184
            Top = 172
            Width = 121
            Height = 21
            DataField = 'valor_produto'
            DataSource = dsDadosProduto
            Enabled = False
            TabOrder = 1
          end
          object btnInserir: TButton
            Left = 84
            Top = 252
            Width = 69
            Height = 49
            Caption = 'Inserir'
            TabOrder = 2
            OnClick = btnInserirClick
          end
          object btnSalvar: TButton
            Left = 220
            Top = 252
            Width = 69
            Height = 49
            Caption = 'Salvar'
            TabOrder = 3
            OnClick = btnSalvarClick
          end
          object btnExcluir: TButton
            Left = 288
            Top = 252
            Width = 69
            Height = 49
            Caption = 'Excluir'
            TabOrder = 4
            OnClick = btnExcluirClick
          end
          object btnCancelar: TButton
            Left = 356
            Top = 252
            Width = 69
            Height = 49
            Caption = 'Cancelar'
            TabOrder = 5
            OnClick = btnCancelarClick
          end
          object btnAlterar: TButton
            Left = 152
            Top = 252
            Width = 69
            Height = 49
            Caption = 'Alterar'
            TabOrder = 6
            OnClick = btnAlterarClick
          end
        end
      end
    end
  end
  object qryConsultaProduto: TADOQuery
    Connection = LojaMenu.conLoja
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from produto')
    Left = 680
    Top = 48
    object qryConsultaProdutoidproduto: TAutoIncField
      FieldName = 'idproduto'
      ReadOnly = True
    end
    object qryConsultaProdutonome: TWideStringField
      FieldName = 'nome'
      FixedChar = True
      Size = 50
    end
    object qryConsultaProdutovalor_produto: TFloatField
      FieldName = 'valor_produto'
    end
  end
  object dsConsultaProduto: TDataSource
    DataSet = qryConsultaProduto
    Left = 680
    Top = 92
  end
  object dsDadosProduto: TDataSource
    DataSet = qryDadosProduto
    Left = 640
    Top = 188
  end
  object qryDadosProduto: TADOQuery
    Connection = LojaMenu.conLoja
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from produto')
    Left = 640
    Top = 144
    object AutoIncField1: TAutoIncField
      FieldName = 'idproduto'
      ReadOnly = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'nome'
      FixedChar = True
      Size = 50
    end
    object FloatField1: TFloatField
      FieldName = 'valor_produto'
    end
  end
end
