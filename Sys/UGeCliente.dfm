inherited frmGeCliente: TfrmGeCliente
  Left = 400
  Top = 237
  Caption = 'Cadastro de Clientes'
  ClientHeight = 535
  ClientWidth = 844
  OldCreateOrder = True
  OnClose = FormClose
  ExplicitWidth = 860
  ExplicitHeight = 574
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 531
    Width = 844
    ExplicitTop = 494
    ExplicitWidth = 844
  end
  inherited Bevel3: TBevel
    Top = 492
    Width = 844
    ExplicitTop = 455
    ExplicitWidth = 844
  end
  inherited pgcGuias: TPageControl
    Width = 844
    Height = 492
    OnChange = pgcGuiasChange
    ExplicitWidth = 844
    ExplicitHeight = 492
    inherited tbsTabela: TTabSheet
      ExplicitWidth = 836
      ExplicitHeight = 463
      inherited Bevel4: TBevel
        Top = 397
        Width = 836
        ExplicitTop = 360
        ExplicitWidth = 836
      end
      inherited dbgDados: TDBGrid
        Width = 836
        Height = 397
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo '
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome / Raz'#227'o Social '
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEFANT'
            Title.Caption = 'Nome Fantasia '
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ'
            Title.Caption = 'CPF / CNPJ '
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Title.Caption = 'Cidade (UF) '
            Width = 150
            Visible = True
          end>
      end
      inherited pnlFiltros: TPanel
        Top = 401
        Width = 836
        ExplicitTop = 401
        ExplicitWidth = 836
        object Bevel6: TBevel [0]
          Left = 460
          Top = 4
          Width = 4
          Height = 54
          Align = alRight
          Shape = bsSpacer
        end
        object lblClienteDesativado: TLabel [1]
          Left = 2
          Top = 41
          Width = 127
          Height = 13
          Caption = '* Clientes desativados'
          Font.Charset = ANSI_CHARSET
          Font.Color = 7303023
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        inherited grpBxFiltro: TGroupBox
          Left = 464
          Width = 368
          ExplicitLeft = 464
          ExplicitWidth = 368
          DesignSize = (
            368
            54)
          inherited lbltFiltrar: TLabel
            Width = 42
            Caption = 'Cliente:'
            Visible = False
            ExplicitWidth = 42
          end
          inherited edtFiltrar: TEdit
            Left = 167
            Width = 152
            TabOrder = 2
            ExplicitLeft = 167
            ExplicitWidth = 152
          end
          inherited btnFiltrar: TcxButton
            Left = 323
            ExplicitLeft = 323
          end
          object CmbBxFiltrarTipo: TComboBox
            Left = 8
            Top = 21
            Width = 153
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 0
            Text = 'por C'#243'digo / Raz'#227'o'
            OnKeyPress = CmbBxFiltrarTipoKeyPress
            Items.Strings = (
              'por C'#243'digo / Raz'#227'o'
              'por CPF / CNPJ'
              'por Cidade'
              'por Telefones')
          end
        end
        object GrpBxBloqueio: TGroupBox
          Left = 4
          Top = 4
          Width = 456
          Height = 54
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object Bevel7: TBevel
            Left = 450
            Top = 15
            Width = 4
            Height = 37
            Align = alRight
            Shape = bsSpacer
          end
          object Bevel9: TBevel
            Left = 2
            Top = 15
            Width = 4
            Height = 37
            Align = alLeft
            Shape = bsSpacer
          end
          object dbmMotivoBloqueio: TDBMemo
            Left = 6
            Top = 15
            Width = 444
            Height = 37
            Hint = 'O cliente encontra-se bloqueado por haver t'#237'tulos em atraso.'
            TabStop = False
            Align = alClient
            BorderStyle = bsNone
            Color = clBtnFace
            Ctl3D = False
            DataField = 'BLOQUEADO_MOTIVO'
            DataSource = DtSrcTabela
            ParentCtl3D = False
            ParentShowHint = False
            ReadOnly = True
            ScrollBars = ssVertical
            ShowHint = True
            TabOrder = 0
          end
        end
      end
    end
    inherited tbsCadastro: TTabSheet
      ExplicitWidth = 836
      ExplicitHeight = 463
      inherited Bevel8: TBevel
        Top = 113
        Width = 836
        ExplicitTop = 113
        ExplicitWidth = 836
      end
      object Bevel5: TBevel [1]
        Left = 0
        Top = 233
        Width = 836
        Height = 4
        Align = alTop
        Shape = bsSpacer
      end
      inherited GrpBxDadosNominais: TGroupBox
        Width = 836
        Height = 113
        ExplicitWidth = 836
        ExplicitHeight = 113
        object lblCNPJ: TLabel [1]
          Left = 192
          Top = 24
          Width = 58
          Height = 13
          Caption = 'CPF / CNPJ:'
          FocusControl = dbCNPJ
        end
        object lblRazao: TLabel [2]
          Left = 352
          Top = 24
          Width = 101
          Height = 13
          Caption = 'Nome / Raz'#227'o Social:'
          FocusControl = dbRazao
        end
        object lblIE: TLabel [3]
          Left = 264
          Top = 64
          Width = 115
          Height = 13
          Caption = 'RG / Inscri'#231#227'o Estadual:'
          FocusControl = dbIE
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblIM: TLabel [4]
          Left = 408
          Top = 64
          Width = 93
          Height = 13
          Caption = 'Inscri'#231#227'o Municipal:'
          FocusControl = dbIM
        end
        object lblDataCadastro: TLabel [5]
          Left = 728
          Top = 24
          Width = 84
          Height = 13
          Caption = 'Data Cadastro:'
          FocusControl = dbDataCadastro
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblVendedor: TLabel [6]
          Left = 552
          Top = 64
          Width = 111
          Height = 13
          Caption = 'Vendedor respons'#225'vel:'
          FocusControl = dbVendedor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblTipoCNPJ: TLabel [7]
          Left = 696
          Top = 64
          Width = 52
          Height = 13
          Caption = 'Tipo CNPJ:'
          Enabled = False
          FocusControl = dbTipoCNPJ
        end
        object lblNomeFantasia: TLabel [8]
          Left = 16
          Top = 64
          Width = 75
          Height = 13
          Caption = 'Nome Fantasia:'
          FocusControl = dbNomeFantasia
        end
        inherited dbCodigo: TDBEdit
          Color = clMoneyGreen
          DataField = 'CODIGO'
        end
        object dbPessoaFisica: TDBCheckBox
          Left = 88
          Top = 42
          Width = 97
          Height = 17
          Caption = 'Pessoa F'#237'sica'
          DataField = 'PESSOA_FISICA'
          DataSource = DtSrcTabela
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbRazao: TDBEdit
          Left = 352
          Top = 40
          Width = 369
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = DtSrcTabela
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object dbIE: TDBEdit
          Left = 264
          Top = 80
          Width = 137
          Height = 21
          CharCase = ecUpperCase
          DataField = 'INSCEST'
          DataSource = DtSrcTabela
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object dbIM: TDBEdit
          Left = 408
          Top = 80
          Width = 137
          Height = 21
          CharCase = ecUpperCase
          DataField = 'INSCMUN'
          DataSource = DtSrcTabela
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object dbDataCadastro: TDBEdit
          Left = 728
          Top = 40
          Width = 89
          Height = 21
          TabStop = False
          Color = clMoneyGreen
          DataField = 'DTCAD'
          DataSource = DtSrcTabela
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object dbVendedor: TDBLookupComboBox
          Left = 552
          Top = 80
          Width = 137
          Height = 21
          DataField = 'VENDEDOR_COD'
          DataSource = DtSrcTabela
          DropDownRows = 10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'COD'
          ListField = 'NOME'
          ListSource = dtsVendedor
          ParentFont = False
          TabOrder = 8
        end
        object dbTipoCNPJ: TDBLookupComboBox
          Left = 696
          Top = 80
          Width = 121
          Height = 21
          DataField = 'TIPO'
          DataSource = DtSrcTabela
          DropDownRows = 10
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'CODIGO'
          ListField = 'DESCRICAO'
          ListSource = dtsTipoCnpj
          ParentFont = False
          TabOrder = 9
        end
        object dbNomeFantasia: TDBEdit
          Left = 16
          Top = 80
          Width = 241
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOMEFANT'
          DataSource = DtSrcTabela
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object dbCNPJ: TJvDBComboEdit
          Left = 192
          Top = 40
          Width = 153
          Height = 21
          ButtonHint = 'Consultar CPF/CNPJ junto a Receita Federal (Ctrl + P).'
          CharCase = ecUpperCase
          ClickKey = 16464
          DataField = 'CNPJ'
          DataSource = DtSrcTabela
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            180000000000000600000000000000000000000000000000000000FF0000FF00
            00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF009993
            9D203040938B9300FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
            FF0000FF0000FF0000FF0000FF009696963333338E8E8E00FF0000FF00B0A090
            6048306048306048306048306048306048306048306048306048305048403050
            604078C03048609C989D00FF009C9C9C43434343434343434343434343434343
            43434343434343434343434646465151518888884C4C4C99999900FF00B0A090
            FFFFFFB0A090B0A090B0A090B0A090B0A090B0A090B0A0909088803050703080
            D04098E050B0F050687000FF009C9C9CFFFFFF9C9C9C9C9C9C9C9C9C9C9C9C9C
            9C9C9C9C9C9C9C9C868686565656909090A4A4A4B9B9B968686800FF00B0A090
            FFFFFFFFFFFFFFF8FFF0F0F0D0D8D090989070686060686050586040709040A0
            E060C8FF7090A0B7B3B500FF009C9C9CFFFFFFFFFFFFFAFAFAF0F0F0D4D4D494
            9494666666646464595959747474A9A9A9CECECE919191B4B4B400FF00B0A090
            FFFFFFFFFFFFFFFFFFE0E0E0909090B0A8A0D0C0B0D0B0A08078705058506090
            B07098B0A6AAAE00FF0000FF009C9C9CFFFFFFFFFFFFFFFFFFE0E0E0909090A6
            A6A6BCBCBCAEAEAE7676765454549494949B9B9BAAAAAA00FF0000FF00B0A090
            FFFFFFFFFFFFFFFFFFB0B0B0C0B8B0FFF0E0FFE8E0F0D8C0F0D0B0807870988D
            92A8ADB100FF0000FF0000FF009C9C9CFFFFFFFFFFFFFFFFFFB0B0B0B6B6B6EC
            ECECE7E7E7D3D3D3C9C9C97676768F8F8FADADAD00FF0000FF0000FF00C0A890
            FFFFFFFFFFFFFFFFFFA09890F0E8E0FFF8F0FFF0F0FFE8E0F0D8D0D0B0A06267
            6000FF0000FF0000FF0000FF00A3A3A3FFFFFFFFFFFFFFFFFF969696E6E6E6F6
            F6F6F1F1F1E7E7E7D8D8D8AEAEAE64646400FF0000FF0000FF0000FF00C0A8A0
            FFFFFFFFFFFFFFFFFFA0A090F0E8E0FFFFFFFFF8F0FFF0F0FFE8E0E0C0B0716F
            6F00FF0000FF0000FF0000FF00A8A8A8FFFFFFFFFFFFFFFFFF9B9B9BE6E6E6FF
            FFFFF6F6F6F1F1F1E7E7E7BEBEBE6F6F6F00FF0000FF0000FF0000FF00C0B0A0
            FFFFFFFFFFFFFFFFFFC0C8C0C0C0C0FFFFFFFFFFFFFFF8F0FFF0E0B0A090A5A0
            A000FF0000FF0000FF0000FF00ACACACFFFFFFFFFFFFFFFFFFC4C4C4C0C0C0FF
            FFFFFFFFFFF6F6F6ECECEC9C9C9CA0A0A000FF0000FF0000FF0000FF00D0B0A0
            FFFFFFFFFFFFFFFFFFF0F8FFC0B8B0C0C0C0F0E8E0F0E8E0B0B0A070706000FF
            0000FF0000FF0000FF0000FF00AEAEAEFFFFFFFFFFFFFFFFFFF9F9F9B6B6B6C0
            C0C0E6E6E6E6E6E6ABABAB6B6B6B00FF0000FF0000FF0000FF0000FF00D0B8A0
            FFFFFFFFFFFFFFFFFFFFFFFFF0F8FFC0C8C0A0A09090908090909060504000FF
            0000FF0000FF0000FF0000FF00B3B3B3FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9C4
            C4C49B9B9B8B8B8B9090904C4C4C00FF0000FF0000FF0000FF0000FF00D0B8B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A09060483060483060483000FF
            0000FF0000FF0000FF0000FF00B8B8B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF9C9C9C43434343434343434300FF0000FF0000FF0000FF0000FF00D0C0B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A890D0C8C060483000FF0000FF
            0000FF0000FF0000FF0000FF00BCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFA3A3A3C6C6C643434300FF0000FF0000FF0000FF0000FF0000FF00E0C0B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A8A060483000FF0000FF0000FF
            0000FF0000FF0000FF0000FF00BEBEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFA8A8A843434300FF0000FF0000FF0000FF0000FF0000FF0000FF00E0C0B0
            E0C0B0E0C0B0E0C0B0E0C0B0D0C0B0D0B8B0D0B0A000FF0000FF0000FF0000FF
            0000FF0000FF0000FF0000FF00BEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBCBCBCB8
            B8B8AEAEAE00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
            00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
            0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
            FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00}
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 2
          OnButtonClick = dbCNPJButtonClick
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 117
        Width = 836
        Height = 116
        Align = alTop
        Caption = 'Endere'#231'o'
        TabOrder = 1
        object lblCidade: TLabel
          Left = 176
          Top = 24
          Width = 37
          Height = 13
          Caption = 'Cidade:'
        end
        object lblEstado: TLabel
          Left = 16
          Top = 24
          Width = 37
          Height = 13
          Caption = 'Estado:'
        end
        object lblBairro: TLabel
          Left = 456
          Top = 24
          Width = 32
          Height = 13
          Caption = 'Bairro:'
        end
        object lblLogradouro: TLabel
          Left = 16
          Top = 64
          Width = 59
          Height = 13
          Caption = 'Logradouro:'
        end
        object lblCEP: TLabel
          Left = 696
          Top = 24
          Width = 23
          Height = 13
          Caption = 'CEP:'
          FocusControl = dbCEP
        end
        object lblNumero: TLabel
          Left = 456
          Top = 64
          Width = 41
          Height = 13
          Caption = 'N'#250'mero:'
          FocusControl = dbNumero
        end
        object lblComplemento: TLabel
          Left = 528
          Top = 64
          Width = 69
          Height = 13
          Caption = 'Complemento:'
          FocusControl = dbComplemento
        end
        object lblPais: TLabel
          Left = 696
          Top = 64
          Width = 23
          Height = 13
          Caption = 'Pa'#237's:'
        end
        object dbNumero: TDBEdit
          Left = 456
          Top = 80
          Width = 65
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMERO_END'
          DataSource = DtSrcTabela
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object dbComplemento: TDBEdit
          Left = 528
          Top = 80
          Width = 161
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTO'
          DataSource = DtSrcTabela
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object dbEstado: TJvDBComboEdit
          Left = 16
          Top = 40
          Width = 153
          Height = 21
          ButtonHint = 'Pesquisar Estado (Ctrl+P)'
          CharCase = ecUpperCase
          ClickKey = 16464
          Color = clMoneyGreen
          DataField = 'EST_NOME'
          DataSource = DtSrcTabela
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000000000000000000000000000000000001DE6B51DE6B5
            1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5B1AD
            AC203040ACA5A21DE6B5C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C3C3C3C3C3C3C37F7F7F7F7F7FACA5A2C3C3C31DE6B5B0A090
            6048306048306048306048306048306048306048306048306048305048403050
            604078C0304860B1ACA6C3C3C37F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC3C3C3C3C3C3B1ACA61DE6B5B0A090
            FFFFFFB0A090B0A090B0A090B0A090B0A090B0A090B0A0909088803050703080
            D04098E050B0F0506870C3C3C37F7F7FFFFFFFC3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C39088807F7F7FC3C3C3C3C3C3C3C3C37F7F7F1DE6B5B0A090
            FFFFFFFFFFFFFFF8FFF0F0F0D0D8D090989070686060686050586040709040A0
            E060C8FF7090A0C5BEB5C3C3C37F7F7FFFFFFFFFFFFFFFF8FFF0F0F0D0D8D07F
            7F7F7F7F7F7F7F7F505860C3C3C3C3C3C3C3C3C37090A0C5BEB51DE6B5B0A090
            FFFFFFFFFFFFFFFFFFE0E0E0909090B0A8A0D0C0B0D0B0A08078705058506090
            B07098B0AEAEAA1DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFE0E0E07F7F7F7F
            7F7FD0C0B0D0B0A0807870505850C3C3C37098B0AEAEAAC3C3C31DE6B5B0A090
            FFFFFFFFFFFFFFFFFFB0B0B0C0B8B0FFF0E0FFE8E0F0D8C0F0D0B08078709D8F
            8CAEAFAA1DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            F0E0FFE8E0F0D8C0F0D0B08078709D8F8CAEAFAAC3C3C3C3C3C31DE6B5C0A890
            FFFFFFFFFFFFFFFFFFA09890F0E8E0FFF8F0FFF0F0FFE8E0F0D8D0D0B0A06367
            5E1DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            F8F0FFF0F0FFE8E0F0D8D0D0B0A063675EC3C3C3C3C3C3C3C3C31DE6B5C0A8A0
            FFFFFFFFFFFFFFFFFFA0A090F0E8E0FFFFFFFFF8F0FFF0F0FFE8E0E0C0B0716E
            6C1DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            FFFFFFF8F0FFF0F0FFE8E0E0C0B0716E6CC3C3C3C3C3C3C3C3C31DE6B5C0B0A0
            FFFFFFFFFFFFFFFFFFC0C8C0C0C0C0FFFFFFFFFFFFFFF8F0FFF0E0B0A090A69C
            951DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            FFFFFFFFFFFFF8F0FFF0E0B0A090A69C95C3C3C3C3C3C3C3C3C31DE6B5D0B0A0
            FFFFFFFFFFFFFFFFFFF0F8FFC0B8B0C0C0C0F0E8E0F0E8E0B0B0A07070601DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFF0F8FF7F7F7F7F
            7F7FF0E8E0F0E8E0B0B0A0707060C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0B8A0
            FFFFFFFFFFFFFFFFFFFFFFFFF0F8FFC0C8C0A0A0909090809090906050401DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFF0F8FF7F
            7F7FA0A0907F7F7F909090605040C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0B8B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A0906048306048306048301DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7F604830604830604830C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0C0B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A890D0C8C06048301DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7FC3C3C3604830C3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B5E0C0B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A8A0604830E0C6B71DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7F7F7F7F7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B5E0C0B0
            E0C0B0E0C0B0E0C0B0E0C0B0D0C0B0D0B8B0D0B0A0E0C7B91DE6B51DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B51DE6B5
            1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3}
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          OnButtonClick = dbEstadoButtonClick
        end
        object dbCidade: TJvDBComboEdit
          Left = 176
          Top = 40
          Width = 273
          Height = 21
          ButtonHint = 'Pesquisar Cidade (Ctrl+P)'
          CharCase = ecUpperCase
          ClickKey = 16464
          Color = clMoneyGreen
          DataField = 'CID_NOME'
          DataSource = DtSrcTabela
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000000000000000000000000000000000001DE6B51DE6B5
            1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5B1AD
            AC203040ACA5A21DE6B5C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C3C3C3C3C3C3C37F7F7F7F7F7FACA5A2C3C3C31DE6B5B0A090
            6048306048306048306048306048306048306048306048306048305048403050
            604078C0304860B1ACA6C3C3C37F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC3C3C3C3C3C3B1ACA61DE6B5B0A090
            FFFFFFB0A090B0A090B0A090B0A090B0A090B0A090B0A0909088803050703080
            D04098E050B0F0506870C3C3C37F7F7FFFFFFFC3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C39088807F7F7FC3C3C3C3C3C3C3C3C37F7F7F1DE6B5B0A090
            FFFFFFFFFFFFFFF8FFF0F0F0D0D8D090989070686060686050586040709040A0
            E060C8FF7090A0C5BEB5C3C3C37F7F7FFFFFFFFFFFFFFFF8FFF0F0F0D0D8D07F
            7F7F7F7F7F7F7F7F505860C3C3C3C3C3C3C3C3C37090A0C5BEB51DE6B5B0A090
            FFFFFFFFFFFFFFFFFFE0E0E0909090B0A8A0D0C0B0D0B0A08078705058506090
            B07098B0AEAEAA1DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFE0E0E07F7F7F7F
            7F7FD0C0B0D0B0A0807870505850C3C3C37098B0AEAEAAC3C3C31DE6B5B0A090
            FFFFFFFFFFFFFFFFFFB0B0B0C0B8B0FFF0E0FFE8E0F0D8C0F0D0B08078709D8F
            8CAEAFAA1DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            F0E0FFE8E0F0D8C0F0D0B08078709D8F8CAEAFAAC3C3C3C3C3C31DE6B5C0A890
            FFFFFFFFFFFFFFFFFFA09890F0E8E0FFF8F0FFF0F0FFE8E0F0D8D0D0B0A06367
            5E1DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            F8F0FFF0F0FFE8E0F0D8D0D0B0A063675EC3C3C3C3C3C3C3C3C31DE6B5C0A8A0
            FFFFFFFFFFFFFFFFFFA0A090F0E8E0FFFFFFFFF8F0FFF0F0FFE8E0E0C0B0716E
            6C1DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            FFFFFFF8F0FFF0F0FFE8E0E0C0B0716E6CC3C3C3C3C3C3C3C3C31DE6B5C0B0A0
            FFFFFFFFFFFFFFFFFFC0C8C0C0C0C0FFFFFFFFFFFFFFF8F0FFF0E0B0A090A69C
            951DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            FFFFFFFFFFFFF8F0FFF0E0B0A090A69C95C3C3C3C3C3C3C3C3C31DE6B5D0B0A0
            FFFFFFFFFFFFFFFFFFF0F8FFC0B8B0C0C0C0F0E8E0F0E8E0B0B0A07070601DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFF0F8FF7F7F7F7F
            7F7FF0E8E0F0E8E0B0B0A0707060C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0B8A0
            FFFFFFFFFFFFFFFFFFFFFFFFF0F8FFC0C8C0A0A0909090809090906050401DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFF0F8FF7F
            7F7FA0A0907F7F7F909090605040C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0B8B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A0906048306048306048301DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7F604830604830604830C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0C0B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A890D0C8C06048301DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7FC3C3C3604830C3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B5E0C0B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A8A0604830E0C6B71DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7F7F7F7F7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B5E0C0B0
            E0C0B0E0C0B0E0C0B0E0C0B0D0C0B0D0B8B0D0B0A0E0C7B91DE6B51DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B51DE6B5
            1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3}
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 1
          OnButtonClick = dbCidadeButtonClick
        end
        object dbBairro: TJvDBComboEdit
          Left = 456
          Top = 40
          Width = 233
          Height = 21
          ButtonHint = 'Pesquisar Bairro (Ctrl+P)'
          CharCase = ecUpperCase
          ClickKey = 16464
          Color = clMoneyGreen
          DataField = 'BAIRRO'
          DataSource = DtSrcTabela
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000000000000000000000000000000000001DE6B51DE6B5
            1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5B1AD
            AC203040ACA5A21DE6B5C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C3C3C3C3C3C3C37F7F7F7F7F7FACA5A2C3C3C31DE6B5B0A090
            6048306048306048306048306048306048306048306048306048305048403050
            604078C0304860B1ACA6C3C3C37F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC3C3C3C3C3C3B1ACA61DE6B5B0A090
            FFFFFFB0A090B0A090B0A090B0A090B0A090B0A090B0A0909088803050703080
            D04098E050B0F0506870C3C3C37F7F7FFFFFFFC3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C39088807F7F7FC3C3C3C3C3C3C3C3C37F7F7F1DE6B5B0A090
            FFFFFFFFFFFFFFF8FFF0F0F0D0D8D090989070686060686050586040709040A0
            E060C8FF7090A0C5BEB5C3C3C37F7F7FFFFFFFFFFFFFFFF8FFF0F0F0D0D8D07F
            7F7F7F7F7F7F7F7F505860C3C3C3C3C3C3C3C3C37090A0C5BEB51DE6B5B0A090
            FFFFFFFFFFFFFFFFFFE0E0E0909090B0A8A0D0C0B0D0B0A08078705058506090
            B07098B0AEAEAA1DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFE0E0E07F7F7F7F
            7F7FD0C0B0D0B0A0807870505850C3C3C37098B0AEAEAAC3C3C31DE6B5B0A090
            FFFFFFFFFFFFFFFFFFB0B0B0C0B8B0FFF0E0FFE8E0F0D8C0F0D0B08078709D8F
            8CAEAFAA1DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            F0E0FFE8E0F0D8C0F0D0B08078709D8F8CAEAFAAC3C3C3C3C3C31DE6B5C0A890
            FFFFFFFFFFFFFFFFFFA09890F0E8E0FFF8F0FFF0F0FFE8E0F0D8D0D0B0A06367
            5E1DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            F8F0FFF0F0FFE8E0F0D8D0D0B0A063675EC3C3C3C3C3C3C3C3C31DE6B5C0A8A0
            FFFFFFFFFFFFFFFFFFA0A090F0E8E0FFFFFFFFF8F0FFF0F0FFE8E0E0C0B0716E
            6C1DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            FFFFFFF8F0FFF0F0FFE8E0E0C0B0716E6CC3C3C3C3C3C3C3C3C31DE6B5C0B0A0
            FFFFFFFFFFFFFFFFFFC0C8C0C0C0C0FFFFFFFFFFFFFFF8F0FFF0E0B0A090A69C
            951DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            FFFFFFFFFFFFF8F0FFF0E0B0A090A69C95C3C3C3C3C3C3C3C3C31DE6B5D0B0A0
            FFFFFFFFFFFFFFFFFFF0F8FFC0B8B0C0C0C0F0E8E0F0E8E0B0B0A07070601DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFF0F8FF7F7F7F7F
            7F7FF0E8E0F0E8E0B0B0A0707060C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0B8A0
            FFFFFFFFFFFFFFFFFFFFFFFFF0F8FFC0C8C0A0A0909090809090906050401DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFF0F8FF7F
            7F7FA0A0907F7F7F909090605040C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0B8B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A0906048306048306048301DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7F604830604830604830C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0C0B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A890D0C8C06048301DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7FC3C3C3604830C3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B5E0C0B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A8A0604830E0C6B71DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7F7F7F7F7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B5E0C0B0
            E0C0B0E0C0B0E0C0B0E0C0B0D0C0B0D0B8B0D0B0A0E0C7B91DE6B51DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B51DE6B5
            1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3}
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 2
          OnButtonClick = dbBairroButtonClick
        end
        object dbLogradouro: TJvDBComboEdit
          Left = 16
          Top = 80
          Width = 433
          Height = 21
          ButtonHint = 'Pesquisar Logradouro (Ctrl+P)'
          CharCase = ecUpperCase
          ClickKey = 16464
          Color = clMoneyGreen
          DataField = 'LOGRADOURO'
          DataSource = DtSrcTabela
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000000000000000000000000000000000001DE6B51DE6B5
            1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5B1AD
            AC203040ACA5A21DE6B5C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C3C3C3C3C3C3C37F7F7F7F7F7FACA5A2C3C3C31DE6B5B0A090
            6048306048306048306048306048306048306048306048306048305048403050
            604078C0304860B1ACA6C3C3C37F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC3C3C3C3C3C3B1ACA61DE6B5B0A090
            FFFFFFB0A090B0A090B0A090B0A090B0A090B0A090B0A0909088803050703080
            D04098E050B0F0506870C3C3C37F7F7FFFFFFFC3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C39088807F7F7FC3C3C3C3C3C3C3C3C37F7F7F1DE6B5B0A090
            FFFFFFFFFFFFFFF8FFF0F0F0D0D8D090989070686060686050586040709040A0
            E060C8FF7090A0C5BEB5C3C3C37F7F7FFFFFFFFFFFFFFFF8FFF0F0F0D0D8D07F
            7F7F7F7F7F7F7F7F505860C3C3C3C3C3C3C3C3C37090A0C5BEB51DE6B5B0A090
            FFFFFFFFFFFFFFFFFFE0E0E0909090B0A8A0D0C0B0D0B0A08078705058506090
            B07098B0AEAEAA1DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFE0E0E07F7F7F7F
            7F7FD0C0B0D0B0A0807870505850C3C3C37098B0AEAEAAC3C3C31DE6B5B0A090
            FFFFFFFFFFFFFFFFFFB0B0B0C0B8B0FFF0E0FFE8E0F0D8C0F0D0B08078709D8F
            8CAEAFAA1DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            F0E0FFE8E0F0D8C0F0D0B08078709D8F8CAEAFAAC3C3C3C3C3C31DE6B5C0A890
            FFFFFFFFFFFFFFFFFFA09890F0E8E0FFF8F0FFF0F0FFE8E0F0D8D0D0B0A06367
            5E1DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            F8F0FFF0F0FFE8E0F0D8D0D0B0A063675EC3C3C3C3C3C3C3C3C31DE6B5C0A8A0
            FFFFFFFFFFFFFFFFFFA0A090F0E8E0FFFFFFFFF8F0FFF0F0FFE8E0E0C0B0716E
            6C1DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            FFFFFFF8F0FFF0F0FFE8E0E0C0B0716E6CC3C3C3C3C3C3C3C3C31DE6B5C0B0A0
            FFFFFFFFFFFFFFFFFFC0C8C0C0C0C0FFFFFFFFFFFFFFF8F0FFF0E0B0A090A69C
            951DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            FFFFFFFFFFFFF8F0FFF0E0B0A090A69C95C3C3C3C3C3C3C3C3C31DE6B5D0B0A0
            FFFFFFFFFFFFFFFFFFF0F8FFC0B8B0C0C0C0F0E8E0F0E8E0B0B0A07070601DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFF0F8FF7F7F7F7F
            7F7FF0E8E0F0E8E0B0B0A0707060C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0B8A0
            FFFFFFFFFFFFFFFFFFFFFFFFF0F8FFC0C8C0A0A0909090809090906050401DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFF0F8FF7F
            7F7FA0A0907F7F7F909090605040C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0B8B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A0906048306048306048301DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7F604830604830604830C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0C0B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A890D0C8C06048301DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7FC3C3C3604830C3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B5E0C0B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A8A0604830E0C6B71DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7F7F7F7F7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B5E0C0B0
            E0C0B0E0C0B0E0C0B0E0C0B0D0C0B0D0B8B0D0B0A0E0C7B91DE6B51DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B51DE6B5
            1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3}
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 4
          OnButtonClick = dbLogradouroButtonClick
        end
        object dbPais: TJvDBComboEdit
          Left = 696
          Top = 80
          Width = 121
          Height = 21
          ButtonHint = 'Pesquisar Pa'#237's (Ctrl+P)'
          CharCase = ecUpperCase
          ClickKey = 16464
          Color = clMoneyGreen
          DataField = 'PAIS_NOME'
          DataSource = DtSrcTabela
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000000000000000000000000000000000001DE6B51DE6B5
            1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5B1AD
            AC203040ACA5A21DE6B5C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C3C3C3C3C3C3C37F7F7F7F7F7FACA5A2C3C3C31DE6B5B0A090
            6048306048306048306048306048306048306048306048306048305048403050
            604078C0304860B1ACA6C3C3C37F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC3C3C3C3C3C3B1ACA61DE6B5B0A090
            FFFFFFB0A090B0A090B0A090B0A090B0A090B0A090B0A0909088803050703080
            D04098E050B0F0506870C3C3C37F7F7FFFFFFFC3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C39088807F7F7FC3C3C3C3C3C3C3C3C37F7F7F1DE6B5B0A090
            FFFFFFFFFFFFFFF8FFF0F0F0D0D8D090989070686060686050586040709040A0
            E060C8FF7090A0C5BEB5C3C3C37F7F7FFFFFFFFFFFFFFFF8FFF0F0F0D0D8D07F
            7F7F7F7F7F7F7F7F505860C3C3C3C3C3C3C3C3C37090A0C5BEB51DE6B5B0A090
            FFFFFFFFFFFFFFFFFFE0E0E0909090B0A8A0D0C0B0D0B0A08078705058506090
            B07098B0AEAEAA1DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFE0E0E07F7F7F7F
            7F7FD0C0B0D0B0A0807870505850C3C3C37098B0AEAEAAC3C3C31DE6B5B0A090
            FFFFFFFFFFFFFFFFFFB0B0B0C0B8B0FFF0E0FFE8E0F0D8C0F0D0B08078709D8F
            8CAEAFAA1DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            F0E0FFE8E0F0D8C0F0D0B08078709D8F8CAEAFAAC3C3C3C3C3C31DE6B5C0A890
            FFFFFFFFFFFFFFFFFFA09890F0E8E0FFF8F0FFF0F0FFE8E0F0D8D0D0B0A06367
            5E1DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            F8F0FFF0F0FFE8E0F0D8D0D0B0A063675EC3C3C3C3C3C3C3C3C31DE6B5C0A8A0
            FFFFFFFFFFFFFFFFFFA0A090F0E8E0FFFFFFFFF8F0FFF0F0FFE8E0E0C0B0716E
            6C1DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            FFFFFFF8F0FFF0F0FFE8E0E0C0B0716E6CC3C3C3C3C3C3C3C3C31DE6B5C0B0A0
            FFFFFFFFFFFFFFFFFFC0C8C0C0C0C0FFFFFFFFFFFFFFF8F0FFF0E0B0A090A69C
            951DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            FFFFFFFFFFFFF8F0FFF0E0B0A090A69C95C3C3C3C3C3C3C3C3C31DE6B5D0B0A0
            FFFFFFFFFFFFFFFFFFF0F8FFC0B8B0C0C0C0F0E8E0F0E8E0B0B0A07070601DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFF0F8FF7F7F7F7F
            7F7FF0E8E0F0E8E0B0B0A0707060C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0B8A0
            FFFFFFFFFFFFFFFFFFFFFFFFF0F8FFC0C8C0A0A0909090809090906050401DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFF0F8FF7F
            7F7FA0A0907F7F7F909090605040C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0B8B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A0906048306048306048301DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7F604830604830604830C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0C0B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A890D0C8C06048301DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7FC3C3C3604830C3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B5E0C0B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A8A0604830E0C6B71DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7F7F7F7F7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B5E0C0B0
            E0C0B0E0C0B0E0C0B0E0C0B0D0C0B0D0B8B0D0B0A0E0C7B91DE6B51DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B51DE6B5
            1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3}
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 7
        end
        object dbCEP: TJvDBMaskEdit
          Left = 696
          Top = 40
          Width = 120
          Height = 21
          DataField = 'CEP'
          DataSource = DtSrcTabela
          MaxLength = 10
          TabOrder = 3
          EditMask = '99.999-999;0; '
        end
      end
      object pgcMaisDados: TPageControl
        Left = 0
        Top = 237
        Width = 836
        Height = 226
        ActivePage = tbsContato
        Align = alClient
        TabOrder = 2
        TabStop = False
        object tbsContato: TTabSheet
          Caption = '&1. Contato'
          object lblFoneFixo: TLabel
            Left = 8
            Top = 0
            Width = 69
            Height = 13
            Caption = 'Telefone Fixo:'
            FocusControl = dbFoneFixo
          end
          object lblEmail: TLabel
            Left = 488
            Top = 0
            Width = 32
            Height = 13
            Caption = 'E-mail:'
            FocusControl = dbEmail
          end
          object lblHome: TLabel
            Left = 8
            Top = 40
            Width = 58
            Height = 13
            Caption = 'Home page:'
            FocusControl = dbHome
          end
          object lblFoneCelular: TLabel
            Left = 168
            Top = 0
            Width = 82
            Height = 13
            Caption = 'Telefone Celular:'
            FocusControl = dbFoneCelular
          end
          object lblFoneComercial: TLabel
            Left = 328
            Top = 0
            Width = 95
            Height = 13
            Caption = 'Telefone Comercial:'
            FocusControl = dbFoneComercial
          end
          object dbFoneFixo: TDBEdit
            Left = 8
            Top = 16
            Width = 153
            Height = 21
            CharCase = ecUpperCase
            DataField = 'FONE'
            DataSource = DtSrcTabela
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object dbEmail: TDBEdit
            Left = 488
            Top = 16
            Width = 305
            Height = 21
            CharCase = ecLowerCase
            DataField = 'EMAIL'
            DataSource = DtSrcTabela
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object dbHome: TDBEdit
            Left = 8
            Top = 56
            Width = 473
            Height = 21
            CharCase = ecLowerCase
            DataField = 'SITE'
            DataSource = DtSrcTabela
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnKeyPress = ProximoCampoKeyPress
          end
          object dbFoneCelular: TDBEdit
            Left = 168
            Top = 16
            Width = 153
            Height = 21
            CharCase = ecUpperCase
            DataField = 'FONECEL'
            DataSource = DtSrcTabela
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object dbFoneComercial: TDBEdit
            Left = 328
            Top = 16
            Width = 153
            Height = 21
            CharCase = ecUpperCase
            DataField = 'FONECOMERC'
            DataSource = DtSrcTabela
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
        object tbsDadosAdcionais: TTabSheet
          Caption = '&2. Outras Informa'#231#245'es'
          ImageIndex = 2
          object dbNFeDevolucao: TDBCheckBox
            Left = 12
            Top = 114
            Width = 321
            Height = 17
            Caption = 'Permitir emiss'#227'o de NF-e de Devolu'#231#227'o para o cliente'
            DataField = 'EMITIR_NFE_DEVOLUCAO'
            DataSource = DtSrcTabela
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object GrpBxCustosOper: TGroupBox
            Left = 5
            Top = 8
            Width = 321
            Height = 97
            Align = alCustom
            Caption = 'Custos Operacionais nas Vendas para o cliente'
            TabOrder = 0
            object lblFrete: TLabel
              Left = 16
              Top = 48
              Width = 30
              Height = 13
              Caption = 'Frete:'
              FocusControl = dbFrete
            end
            object lblOutros: TLabel
              Left = 120
              Top = 48
              Width = 37
              Height = 13
              Caption = 'Outros:'
              FocusControl = dbOutros
            end
            object imgAjuda: TImage
              Left = 273
              Top = 15
              Width = 41
              Height = 41
              Cursor = crHandPoint
              Hint = 'D'#250'vidas sobre estes dados?'#13#10'Clique aqui!'
              Center = True
              Picture.Data = {
                055449636F6E0000010008002020100001000400E80200008600000020200200
                01000100300100006E0300003030000001000800A80E00009E04000020200000
                01000800A808000046130000101000000100080068050000EE1B000030300000
                01002000A8250000562100002020000001002000A8100000FE46000010100000
                0100200068040000A65700002800000020000000400000000100040000000000
                0000000000000000000000000000000000000000000000000000000000800000
                00808000800000008000800080800000C0C0C000808080000000FF0000FF0000
                00FFFF00FF000000FF00FF00FFFF0000FFFFFF00111111111111111111188111
                1111111111111111111111111188811111111111111111111111111110088111
                1111111111111111111111110F088111111111111111111111111110FF088111
                11111111111111111111180FFF08811111111111111111111188880FFF088888
                11111111111111118880007FFF08888888111111111111180007FFFFFF700088
                88811111111111007FFFFFFFFFFFF700888811111111107FFFFFFFFFFFFFFFF7
                0888811111110FFFFFFFFFFFFFFFFFFFF08888111110FFFFFFFFF7CC7FFFFFFF
                FF088881118FFFFFFFFFFCCCCFFFFFFFFFF08881187FFFFFFFFFFCCCCFFFFFFF
                FFF7088818FFFFFFFFFFF7CC7FFFFFFFFFFF088887FFFFFFFFFFFFFFFFFFFFFF
                FFFF70888FFFFFFFFFFFFFCCFFFFFFFFFFFFF0888FFFFFFFFFFFFFCC7FFFFFFF
                FFFFF0888FFFFFFFFFFFFFCCCFFFFFFFFFFFF0888FFFFFFFFFFFFF7CCCFFFFFF
                FFFFF0888FFFFFFFFF7CC7FCCCCFFFFFFFFFF08187FFFFFFFFCCCCF7CCCCFFFF
                FFFF708118FFFFFFFFCCCCFFCCCCFFFFFFFF0811187FFFFFFFCCFFFFCCCCFFFF
                FFF70111118FFFFFFF7C7FFCCCC7FFFFFFF011111118FFFFFFF7CCCCCC7FFFFF
                FF01111111118FFFFFFFFFFFFFFFFFFFF01111111111187FFFFFFFFFFFFFFFF7
                81111111111111887FFFFFFFFFFFF78811111111111111118887FFFFFF788811
                1111111111111111111888888881111111111111FFFFE7FFFFFFC7FFFFFF87FF
                FFFF07FFFFFE07FFFFF807FFFFC000FFFF00003FFE00001FFC00000FF8000007
                F0000003E0000001C00000018000000080000000000000000000000000000000
                000000000000000000000001000000018000000380000007C000000FE000001F
                F000003FF800007FFC0000FFFF0003FFFFE01FFF280000002000000040000000
                0100010000000000000000000000000000000000000000000000000000000000
                FFFFFF00000000FFFFFFFFFFFFFF9FFFFFFF5FFFFFFEDFFFFFFDDFFFFFFDDFFF
                FFE1DFFFFF0FC3FFFC7FF8FFF9FFFE7FF7FFFFBFEFFCFFDFDFF87FEF9FF87FE7
                BFFCFFF73FFFFFF37FFCFFFB7FFCFFFB7FFC7FFB7FFE3FFB7FE61FFB3FC30FF3
                BFC30FF79FCF0FE7DFEE1FEFEFF03FDFF7FFFFBFF9FFFE7FFC7FF8FFFF0FC3FF
                FFE01FFFFFFFFFFFFFFFFFFFFFFF9FFFFFFF1FFFFFFE1FFFFFFC1FFFFFFC1FFF
                FFE01FFFFF0003FFFC0000FFF800007FF000003FE000001FC000000F80000007
                8000000700000003000000030000000300000003000000030000000300000003
                8000000780000007C000000FE000001FF000003FF800007FFC0000FFFF0003FF
                FFE01FFF28000000300000006000000001000800000000000000000000000000
                000000000000000000000000000000006037240083635400BAA8A00098320000
                9632000095310000933100008C2E0000822C00007E2A00007B28000074260000
                6D2400006522000060200000862D01008C32050099390900923A0E007C330E00
                9A3F1200893910006E2F1000A44A1D00AD562B008C472300C06436005A301B00
                8D4E2E00D57849005E34200062392500E78D5F00653E2A00FB9D6F0069422F00
                6B463400A46D5100704C3A00745140007855440087695A008B6E5F008A6D5E00
                8E72640094796C009B827500ECEAE900EAE8E700B0643A006A3E25009E5E3C00
                D78E6700B47A5A00CB9C8300D6AA9200DBB59F00A78C7D00794D3100E8A37A00
                D19A7700E2C5B400875A3B0091654700C68E6A00CA9A7900E2BCA200E4B89600
                F2EEEB00A2734B00B5835A00A3795800AC846200D6A47D00ECCCB100ECD0BA00
                FFF3E900FDF1E700FFF9F400F9F3EE00B17C4C00B38C6A00EEC29900BB987800
                F3CDAA00EAC5A400EBC8A900F8D7B900F9DBBF00FFE3C900FFE3CA00FFE5CD00
                F8E0CA00FFE9D500E5D4C500FBE9D900E8D9CB00DACDC100FDEFE200F8EADE00
                FDF5EE00BA906800C2997100D5AD8500E2B78E00B6947300D6B08A00C5A38100
                C8A68400C2A18000CAA88600B7987900BD9D7E00DAB59200CEAC8C00B7997C00
                EFC8A300D3B29100DCBA9800F8D2AC00E0BD9B00C3A58800E4C2A000FED8B300
                FAD5B100C6A98C00B99E8300FFDBB700C9AD9100FEDAB800FFDDBA00FAD8B600
                EBCBAB00D2B59900FFDEBD00F4D4B500D5B99E00FFDFBE00FEDDBD00FCDCBC00
                E1C4A800DDC1A500D6BCA200CDB49C00FFE1C300E4C9AE00BAA48E00FFE1C400
                FFE2C500FFE3C700D8C0A800F1D7BD00FFE4C900E6CDB500C0AB9700F9DFC500
                C9B6A300FDE6CF00E1CDB900FFE9D300FFEAD500E3D0BD00F9E5D100CDBCAC00
                FFEBD700D9C8B700FFEBD800EAD8C600F3E0CE00FFEDDC00FAE8D700E7D7C700
                FFEEDD00FFEEDE00FCECDC00FFF1E300EDE0D300FFF2E500F2E6DA00FDF1E500
                DBD2C900FFF5EB00FAF0E600EDE4DB00FFF6ED00FFF7EF00EAE3DC00F3ECE500
                E3DDD700FFF9F300FFFAF500FFFBF700FAF6F200F4F1EE00FEFDFC00FCFBFA00
                F9F8F700F4F3F200EDECEB00FFDBB500FFE0C000F7D9BA00FFE2C300FCDFC000
                FFE5CA00FFE6CB00FFE6CC00D9C4AE00FFE8CE00FFE7CE00FFE8D000F1DBC400
                FFEAD300F2DEC900E7D4C000FFECD800FFEDDA00FFEEDB00D0C2B300FFF0E000
                EBDDCE00D0C5B900FBEEE000FFF3E600FFF5EA00F1E9E000F3E5D500FFF2E300
                DFD8D000FFF8F000FAF3EB00EEE9E300FFEDD600EBE7E200FCF9F500FFEFD800
                E5E1DB00F6F4F100E6E4E100FFF2DE00FFF4E300FFFBF300FBFAF800F7F6F400
                FFFBF000FFFAE700FFFEF900FFFCEB00FFFFF100FFFFF700FFFFFC00F1F1F000
                FFFFFF00EDEDED00FFFFFF000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000002F2E2D00000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000002F4640282D000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000002B514A51272D00000000000000000000000000000000000000000000
                0000000000000000000000000000000000000002514A6851272D000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00002846426B6951272D00000000000000000000000000000000000000000000
                000000000000000000000000000000000029514268696951272D000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                293F6C6F69536947272D00000000000000000000000000000000000000000000
                0000000000000000000000000000000224486C684453696624022D0000000000
                000000000000000000000000000000000000000000000000000000002B292422
                40546C6B53537252202228020000000000000000000000000000000000000000
                0000000000000000002C29404849495270716D725353726746331F2024280000
                00000000000000000000000000000000000000000000002C4848527470707054
                716C7677755372736E6647461C1F222800000000000000000000000000000000
                00000000002F49527F7F7F716E6C6D6F73767975787579766F6E717152511C1F
                242900000000000000000000000000000000000052527F7F7A7E818176727779
                797B557D7C78757972736F6C6E7152461C20272D000000000000000000000000
                0000005274937A818689797B7B85787D7D7D7C7C7C7C7D557B797776737A6E54
                47201F252C000000000000000000000000006A939381868F8D85888484828280
                4A181B533C78C87C7D78757B7776737A6E663F1F252D00000000000000000000
                0070939B908F8D4BCA8C8B878783834A0A1018231B328080C8C87C78857B7776
                7E7A663F1F272D00000000000000000074939B909792CACCC9C9C9C98A8A8732
                0C09060510095380808080807C785679767E7A663B0129020000000000000071
                939B90979A599494CB919191C9C9C9340D0A07080C0B69878383838383808457
                79867E7A661C2202000000000000819B9B9DD09A9C5A96969595959594919141
                0E0F0E0E0D147D8A8787878383838384858E86817A471F27020000000000939B
                9DD09A9CCDCD5B5A99999696969595581A0F0F0F0E3DC9C9C9C98A8787878787
                84858E86816E3B222A00000000819B9DD09F9C5C5CCFCFCDCDCD5A5A5A5A5A96
                963D414155CBCB91919191C9C9C98A8A8ACA858E8681661F282D0000009B9DA4
                9FD49ED3D3D2D2D25C5CCFCDCDCDCD5B5A5A5A5A5A9696959595919191919191
                91C988928F906C1F252D0000909DA4A6D7A3A0A0A0D3D3D3D3D2D2D2D25CCFCF
                CE594456CD5B5A5A5A969695969594949494CC4B8D899049222D000090A4DBA2
                D6A1A1A1A1A1A0A0A0D3D3D3D3D3D2D2D2440632CE5CCDCDCD5A5A5A5A969695
                959696989A8E896E222B00009DA4A65FA3D9A5A7A5A5A1A1A1D5A0A0A0A0D3D3
                D3440618D2D2D25C5CCFCDCDCD5A5B999996CD9C4C929773222B0000A4DB6261
                60AAD9D9D9D8D8A7A5A5A1A5A1A0A0A0A057070544D3D2D3D2D2D25CCF5CCECD
                CD5BCE5B989A9789222B0000DBDB62DDAFAEADAAAAAAAAD9D9D8D8D8A5A5A5A1
                A1A113061844A0D3D3D3D3D2D2D2D2D2D25CD1D2989AD097222B0000DEDE62DD
                AEB0DCAEAEAEAEADADAAAAD9D9D9D8D8A7A74208071E3C9CA0A0A0A0D3D3D3D3
                D3D2D3A0D49AD0D0222B0000DEDEB5B163B2B0B0DCDCDCDCAEAEAEADADAAAAAA
                D9D95D14081223214BA5A1A1A0D5A0A0A0A0A1E9D4A2D0D0222D0000DEDEB5B1
                B4E1B2B2B2B0B0B0DCDCDCDCAEAEAEAEAEADAA360C07181E1B4BA5A5A5A5A1A1
                5EA1E9ECD6D7A697252D0000DE62E5B84EB94DE0B2B2B2B2E4B0B0B0B0DCDCDC
                DCDCAE4B0D1005181518D9D9D8D8A7A5A5A5F0F0D6D79F8F282D0000A6B5E5B8
                B7F5B6E14D4D4D4DE0E0B2B2AB47353C4AB0DCDC140C0507111043AAAAAAAAD9
                D9DAF6F0A9A8A2862A000000A6B5E5BBBCF2F5B6B6B6E14D4D4D4DE03609191E
                1572B0B0340D0607090A42AEAEADADAAAAF1F9ABA9A85F712F00000000B5E5ED
                E265FAE6B9B9B9B9B9B6B64D0C0905111042E0E0340D07060A0A42B0DCDCDCDC
                E4F9F8E3DDAC9F2A00000000005FE5BDEA45FBF7E6E6BABABABAB9B90D0A0410
                0A374D4D1D0D07070B0B42B2B0B0B0B2F9FDDFE3DD61893A000000000000E5BD
                BBBCC1FDFB4FE6E6E6E6BABA1D0D08091A64B6640D0C07080C0C4CE0E0B2E0F9
                FDF564E3DDA23A00000000000000E5BDEDE845BFFDFDBFBEBEBEBEBE370E0A10
                39BAB9370D0B100C0D34E1E14DE1FAFDF7DFB3B1DD8F030000000000000000BD
                EDEF30C2C0FDFDF7BF4F4F4FBE260D10193837100B0C0E0E1D64B6B6BAFDFDFD
                B7E2B8B19F9300000000000000000000BDEFEFC7C2F7FDFDFDF7C0C0BFBF3716
                080606080C0F175264BABEF7FDFDFDB7BCB8B85F9B0000000000000000000000
                00EDEFEAC7EEF7FDFDFDFDFBF7C0BFBF3E373737373E4F4FFAFDFDFDFDFBE7BC
                E2B861A40000000000000000000000000000EDEF3145EEC5FDFDFDFDFDFDF7C0
                C0C0C0C0C0C0FBFDFDFDFDFDBE5045E8EA61A600000000000000000000000000
                000000BB3130FEFCF4F3FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD4FC15045BCE8
                61B5000000000000000000000000000000000000B1EAC7FEFCC6F4C5C3FDFDFD
                FDFDFDFDFDFDFDFDEBC1EEC24545B8AC00000000000000000000000000000000
                000000000000B130FEFEFCFCC6C5C4C3FBFBFBC3FBF7F3F4C6C24545E8DDB100
                000000000000000000000000000000000000000000000000B1E8C7C7FEFCC6C6
                C6C6C6C6C6C6C6FCFC45E2B1B100000000000000000000000000000000000000
                0000000000000000000000B1BBEA30C7C7C7C7C73030EAB8B3B1000000000000
                000000000000000000000000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFE3
                FFFF0000FFFFFF83FFFF0000FFFFFF03FFFF0000FFFFFE03FFFF0000FFFFFC03
                FFFF0000FFFFF803FFFF0000FFFFF003FFFF0000FFFFE001FFFF0000FFFF0000
                FFFF0000FFF800003FFF0000FFE000000FFF0000FF80000003FF0000FF000000
                00FF0000FE000000007F0000FC000000003F0000F8000000001F0000F0000000
                000F0000E0000000000F0000C000000000070000C00000000007000080000000
                0003000080000000000300000000000000030000000000000003000000000000
                0003000000000000000300000000000000030000000000000003000000000000
                0003000000000000000300000000000000030000000000000007000000000000
                0007000080000000000F000080000000000F0000C0000000001F0000C0000000
                001F0000E0000000003F0000F0000000007F0000F800000000FF0000FC000000
                01FF0000FE00000003FF0000FF0000000FFF0000FFC000001FFF0000FFF00000
                7FFF0000FFFE0003FFFF00002800000020000000400000000100080000000000
                000000000000000000000000000000000000000000000000FEFDFD00FAF9F900
                F9F8F800F5F4F400EEEDED00751C00006A1A00005C180000802400007B240000
                74220000872900008E2D02006D2C0F0094310100772903009B3907009C3B0C00
                A13F0F00903D1400AB4A1B0078351400883E1A00A64E200099481F00A8532800
                C866350097533000A65C3600BC8A7000CB998000EEECEB00EDEBEA00EBE9E800
                E6E4E3007D310900C86F4000D0835A00C8876200BE886900C58E7100C7957900
                BE968000AC6C4600AD7C5D00F7B28800F3EEEB00CEA18400DBAF9000CAA58D00
                FAEDE400F9F6F400E3AF8A00D4B39A00EDE5DF00CAC6C300F0C49F00CEB49E00
                F3D5BC00F9DDC600F2DCCA00EBD7C600F9ECE1007A746F00F3E8DF00F9F0E900
                AC886800BF9A7800B8977900E2BB980088736100C3A78D00B79D8500F0D1B500
                FBDCC000FFE0C4006F635800F9E2CD00D5C6B8008B817800D7C9BC00FCECDE00
                EFE1D400D2C6BB00F1E5DA00EDE3DA00D2A27300C4996D00B9936D00BE9A7600
                B8957300C8A37E00B3917100DBB48C00CFA98400886F5700E9C09600BD9C7B00
                B7977800AB8D7000EBC39B00B8987900D2AF8B00BE9E7E00DBB89500CFAE8D00
                F5CEA800E7C29F00ECC8A400D8B69600F9D3AE00F7D1AC00FDD8B200E9C7A400
                BDA18500B69B8000E3C2A200FEDAB600ECCBAB00FFDDBA00FBD9B700F4D3B200
                D9BB9E00A58E7800FDDBB900CAAF9400E7C8AA00FFDEBD00FCDCBC00FFDFBF00
                FFE0C100FCDDBE00F8D9BB00FFE1C300BCA69000FFE2C5008F7F6F00FFE3C800
                FFE4C900F6DCC300FFE5CC00CAB5A100645A5000F9E0C80085786B00FFE7CF00
                FFE8D100DAC6B200FFE9D300CBB9A800FFEAD500A7998B00FFEBD800FFECD900
                CEBFB000FFEDDB00FFEDDC00FFEEDD00F2E1D100FFEFDF00FDEDDD00FFF0E100
                FFF1E300ECDFD200EBE4DD00E8E1DA00F2EBE400DCD6D000FFF9F300EBE6E100
                AAA7A400FEFAF600F6F2EE00FDFBF900E3E1DF00FBFAF900967D6300C4A48200
                B5997C00D1B39200C8AB8D00FFDCB500FDDCB900E2C7AB00FFE3C600BEAA9500
                FFE5CA00E2CBB300CEB9A300FFE6CC00D7C3AD00BDAB9800FFE8CE00D2BFAA00
                E5D1BC00C3B3A200C2B2A100FFEBD600F9E6D100D6C5B300FAE9D600DBCDBE00
                B1A79C00CEC3B700A9A09600FFF2E400DBD0C400FFF3E600FFF4E800FFF5EA00
                DDD5CC00FFE1BF00FFE2C100FFE3C300FFE4C400FFE7CB00FFEEDA006E686100
                FFF5E900FFF8F000FAF5EF00FFEBD200FEEDD600B2A69700FFF0DD00FFF3E300
                524F4B005B585400FFF7ED00EDE9E400FFF3E100FFF4E400FCF5EB00FCF8F200
                FFFDFA00FFFAF100E1DED900FCF7ED00FFFDF90076757300FFFEFC00FFF5DF00
                FFFAEA00FFFBEE00FFFCF300FFFDF500FFFFF800FFFFFB00F0F1F100FFFFFF00
                EDEDED006C6C6C005E5E5E0056565600FFFFFF00000000000000000000000000
                000000000000DADA000000000000000000000000000000000000000000000000
                0000000000DA43DA000000000000000000000000000000000000000000000000
                00000000DA58574D000000000000000000000000000000000000000000000000
                000000DA595E574D000000000000000000000000000000000000000000000000
                0000DA5C5F6157DA000000000000000000000000000000000000000000000000
                00DAB3B25E655FDA00000000000000000000000000000000000000000000DADA
                DAB3B3B246655F60FEDA000000000000000000000000000000000000DADA6463
                664568676565675A2D60E3FD00000000000000000000000000007C5D747373B2
                5F6A6E6C706B466AB26859608FFC00000000000000000000006474487E367B75
                777A706FB6B66B6C696AB562434DFD000000000000000000B3877E7B7F7A797D
                82391D252E357871706D46B4484460FD0000000000000074873AB83B82838282
                D52C061315196F7876766F726EB56260FD000000000049BABDBC4BB988868683
                D61C070C0B246BD478787876777BB5688FFD00000049C0BDBC3CBB8A8A8AB988
                D8300808082CD78282808080B7777B7E5BE4000000BA96BC9092BE8DBB8B8A8A
                8BBE31283084884C868383828281777BB547FD0049C4C83E939392929292BE8D
                8D8DC14B8BBE8A8A8888884C868685B83A7CF0008E9BC3C7C697979595939393
                92DE4A1835DF8DBB8A8A8A8A88B9884ABF484040964F3E9A9A9A99C697979795
                93C64A0F27F293BEBE8D8D8D8B8BBB8CBC3A5040CC51A4A09E9D9D9C9A9A9999
                C6C6DF191246DF9792929292BEBEC190BCBF9840CCCA53A3A2A0A0A09E9E9C9C
                9A9AE730091B2E909A9593939392DE4EC394E040CCCF55D1CECEA2A3A2A2A0A2
                E8E2E83D170D1B268CD997979795DFC7C3BFE04054D355E5D2D0D0D0CECED052
                3B3CA1F32D06110F2DE89C9A9999F2C93EC2CB4054A856EEECD2D2D1D1D1DB28
                1A252AF6320B0F091C4EE29D9CE1F3C794C2AB4000A8A642F7DCE5E5E5E53F10
                0D0C1DF4360B0F0A193DD1A0A0F4F39FBFC5C5000054EDA7ACF1A9DCDCDC4216
                0C091EFA2B070F061C52D1A3F4F83FA4CACDC5000000EDAAADEBFAACA9A9F643
                07143D331C0B0A0730F6DBF5FAE955A4C5C50000000054AFE6ADF1FAEBACEB42
                2D091A1A06080E2BF5ECEBFAEA4156C83800000000000054232234F1FAFAF1FA
                EF3E1F292A3A56FAFAFAFAEAA737CF3800000000000000005423FB04B0FAFAFA
                FAFAFAFAFAFAFAFAFAEBDD2FE6CAC50000000000000000000054AA20F9040201
                FAFAFAFAFAFAFAAE34AD2FA5D3000000000000000000000000000054E605F904
                03B0B0B0AEB034042FE6EDC500000000000000000000000000000000000054AA
                21FBFBFB0520E656560000000000000000000000FFFFCFFFFFFF8FFFFFFF0FFF
                FFFE0FFFFFFC0FFFFFF80FFFFFC003FFFF0000FFFC00003FF800001FF000000F
                E0000007C0000003800000038000000100000001000000000000000000000000
                000000000000000000000000000000008000000180000001C0000003C0000007
                E000000FF000001FF800007FFE0000FFFFC007FF280000001000000020000000
                0100080000000000000000000000000000000000000000000000000000000000
                640000005C00000057000000490000008D1D0000904E3600701F0000A73B0F00
                9D3A1100853E210088340F00A5461900B9714D00C59A8400BD988500EFEDEC00
                C8754700AB7A5E00BD886A00CB896000C5997F00C2A79700CEA08200E2C5B200
                DCB69900D2B39D00E3B69300D3A98800E8BF9F00F1D1B600CAB8A900F6E2D100
                F5F0EC00CFAF9200C1A48A00EDCDAF00DEC6B000EBD3BE00AB856100C39B7300
                B1906E00DCB79200EAC49F00C3A486006F5E4D00F3CEAA00937E6900B1998100
                A28C76006E605200D6BBA000FCDCBD00EDD2B800FFE4CA00D6C0AB00FFE6CD00
                E3CDB700DDC7B200FFE9D300FFEAD500D9C7B50083786D00B5A79900877D7300
                FFEEDE00D4C6B800FBECDD00FFF2E500F0E5DA00DDD3C900FCF1E600807B7600
                F4EFEA00F5F1ED00856D5400BE9E7C00C4A68500AB9074009E856B00B5997C00
                C6A98900C2A58700E4C3A000DEBF9D00FFDDB800E4C5A500FFDEBA00675A4C00
                B9A28900E5CAAD00DCC3A900FFE3C500FBE1C400B8A59000FFE7CD00FFE8CE00
                FFEBD600FFEDD900FFEEDC00D2C9BF00FFE1BC00FFE5C600FFE9CF00FFEAD000
                FFEBD400847D7500CFC5B900FFF4E700F4EFE900EDE8E200FFE3BF00FFE8CB00
                FFEBD100FFECD400FFF1DF00FFF3E300FFF7ED00EFECE800FFE8C700FFEACD00
                FFEBCF00FFF0DA00FFF1DD00FAF0E100FFF7EB005D5B5800FFE7C000FFEFD600
                FFF2DE00FFEFD200FFF6E700FFFEFC00E3E2E000FFEFCE00FFF8E700FFF4D700
                FFF8E400FFF9E900FFFBE600FFFEEF00FFFFE900FFFFF600FFFFF800FFFFFB00
                FFFFFD00F8F9F900F6F9FA00FAFCFE00F5F5F600EBEBEC00FFFFFF0070707000
                6B6B6B00656565005D5D5D005C5C5C005252520044444400FFFFFF0000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000003E3E3E0000000000000000000000003E28273E000000000000000000
                00003E302A4F99000000000000000000402F31512B4C589D9800000000004E4E
                2322542E7F534D292D9C0000004E595B34861B09115557562C4B9B00005E3978
                70881C040765776F2452329A5E3D7271386780191E825C5C665A509E1F207B61
                3C698B141D8D5F36705D337E6B43744163738F170C79893B6860256A64477D44
                6C83818C0B083587627A3A48646D8E75971505261201138F8A7C376A00858490
                970F02180A031A9791453F000064969797970E0D061697974A42000000006410
                949797979797972146000000000000006476959392496E6400000000FF1F0000
                FE1F7C5DFC1F73B2F0076E6CC003466A80015960800000000000000000000000
                0000744800007B750000706F80016B6C8003B562C007FD00F00F000028000000
                3000000060000000010020000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000552A1502552A1508552A1513552A151D552A1519552A150C
                552A150300000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000552A1502552A150A552A1520552A1542552A1556552A1543552A151E
                552A1508552A1501000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                552A1502552A150C552A152B552A1565552A1596552A15A0552A1575552A1532
                552A150C552A1501000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000552A1501552A1502
                552A1511552A1544552A1595946037DF8D5933E8552A15CF552A1590552A153C
                552A150E552A1501000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000552A1504552A151A
                552A1558552A15AEB07A47F9D5A87BFFB27A46FB552A15D9552A1594552A153E
                552A150F552A1501000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000552A1503552A1525552A1579
                552A15B9AF7A48FAD0A77DFFDAAF85FFB17947FC552A15D8552A1594552A153F
                552A150F552A1501000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000552A1501552A150100000000552A1501552A1518552A1582552A15D0
                9A673DF3C9A27AFFDAB186FFE1B58AFFB17948FC552A15D8552A1592552A153E
                552A150F552A1501000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000000000552A1501
                552A1502552A1504552A1504552A1503552A1510552A156E552A15CDAC794AFA
                C69F78FFD5AD85FFE5BA8FFFE3B88EFFB27C4BFC552A15D5552A1590552A1540
                552A1513552A1504552A15010000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000552A1501552A1502552A1506552A150A
                552A1509552A1506552A1507552A150F552A154E572C16C67C4E30EEC6A27EFE
                CDA882FFE0B78EFFEFC398FFE2B990FFB58152FD552A15D8552A159A552A1557
                552A152A552A1516552A150D552A1506552A1502552A15010000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000552A1501552A1502552A1507552A1510552A151F552A152D
                552A152C552A1530552A1543552A156C562B16BD5C311BEA9E7556F7C6A37FFF
                D1AC86FFE7BE93FFEDC399FFDFB891FFBE8D62FE582D17E7552A15C1552A1592
                552A1569552A154D552A1536552A1520552A1510552A1507552A1502552A1501
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000552A1502552A1506552A1510552A1521552A153D552A155E552A1581
                552A1595552A15AE582D17CE592E18E660351FF48E6448F9BB9777FEC5A381FF
                D5B08AFFEDC49AFFEBC29AFFDCB691FFB38966FE5D321CF5552A15E7552A15D2
                552A15BB552A15A4552A1585552A155E552A153D552A1521552A1510552A1506
                552A150200000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000000000552A1501
                552A1503552A150A552A151C552A153A552A155F552A158B552A15B05A2F19CF
                805234EA9F7453F7A78161FBA98365FDB08D6EFEB79778FFBE9D7DFFC8A684FF
                D9B490FFEEC59CFFE8C099FFDAB48FFFC29971FFA3734AFE663920F9552A15F3
                552A15EC552A15E1552A15CE552A15B0552A158B552A155F552A153A552A151C
                552A150A552A1503552A15010000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000552A1501552A1504
                552A150F552A1527552A1551552A1583552A15AF986A46E8A37752F7AF8B68FD
                B7987BFFB89879FFB89879FFB89979FFBA997AFFBE9D7DFFC6A483FFD2B08DFF
                E0BC96FFF1C8A2FFE8C19AFFDCB691FFCDAB88FFC3A281FFB7916AFFB18458FF
                A47449FE552A15F8552A15F2552A15E6552A15D1552A15AF552A1583552A1551
                552A1527552A150F552A1504552A150100000000000000000000000000000000
                0000000000000000000000000000000000000000552A1501552A1506552A1514
                552A1532552A1561592E189BAC825AF4B18D6AFFB89C81FFB89D82FFB99E82FF
                BC9E80FFC0A07FFFC5A381FFC8A583FFCAA886FFCEAC8CFFD6B492FFDFBB99FF
                EEC7A2FFF8D0A9FFF0CAA3FFE2BD98FFD5B290FFC9A887FFC1A181FFBD9D7EFF
                BB9C7BFFB48B61FFAA7B50FE572C16F9552A15F2552A15E3552A15C7552A1599
                552A1561552A1532552A1514552A1506552A1501000000000000000000000000
                00000000000000000000000000000000552A1501552A1505552A1515552A1539
                552A156FAB815AE4B18F6DFEB89E85FFBBA086FFBFA489FFC5A88CFFC9AC8EFF
                CDAF91FFD3B291FFD8B592FFDCBA96FFDFBD9BFFE2C09DFFE7C3A0FFF4CDA9FF
                FBD5ADFFFED6AFFFFBD3ACFFEEC8A2FFE2BD9AFFD8B593FFCFAE8CFFC9A887FF
                C3A384FFBFA081FFBD9E7FFFB48B63FFA3744BFE552A15F8552A15ED552A15D4
                552A15A7552A156F552A1539552A1515552A1505552A15010000000000000000
                00000000000000000000000000000000552A1504552A1512552A15376C40277D
                B28C68F7B69A7EFFBBA288FFC0A68CFFC8AC92FFD0B497FFD8B99CFFDDBD9FFF
                E1C1A2FFE5C4A4FFEECCABFFF4D1ADFFF8D4B0FFFAD5B0FFFCD6B2FFFED8B3FF
                FFD9B3FFFFD9B3FFFFD9B2FFFCD5B0FFF4CFA9FFE7C39FFFE1BD9AFFDBB897FF
                D3B290FFCCAB8BFFC5A686FFC0A182FFBB9975FFB3855AFF60341DFA552A15F1
                552A15DB552A15AF552A1572552A1537552A1512552A15040000000000000000
                000000000000000000000000552A1502552A150C552A152CA174519DB59371FC
                BAA38BFFBEA58DFFC7AD93FFD0B59AFFDABDA0FFE2C3A6FFEBCCADFFF5D4B2FF
                F9D7B5FFFBD9B7FFFDDAB8FFFEDAB8FFFFDCB7FFDBA27BFF9F4B1FFFC26536FF
                FFC394FFE6A175FFF9D0A9FFFFDAB4FFFED9B3FFFBD6B0FFF6D2ACFFEDC9A5FF
                E4C19EFFDDBB99FFD4B492FFCCAC8CFFC4A587FFC1A284FFB88D64FF845535FC
                552A15F3552A15DD552A15AC552A1568552A152C552A150C552A150200000000
                0000000000000000552A1501552A1507552A1520AB805C99B59677FDBAA48DFF
                C0A891FFCBB299FFD7BCA2FFE1C5A9FFEDCFB1FFF8D9B9FFFCDCBCFFFEDDBDFF
                FFDEBDFFFFDEBCFFFFDDBBFFFFDDBBFFDAA37DFF7E2A00FF852E02FFA94E20FF
                FA9D6EFFC36638FFB26438FFFFDAB7FFFFDBB6FFFFDBB5FFFFDAB5FFFDD7B3FF
                F8D3AFFFEECCA8FFE4C2A0FFDBBA99FFD0B091FFC6A88AFFC2A385FFBA926AFF
                895B39FD552A15F3552A15D7552A15A0552A1558552A1520552A1507552A1501
                0000000000000000552A1504552A1514A074526DB79779FCBAA490FFC0AA93FF
                CCB49DFFDAC0A6FFE5CAAFFFF6D8BBFFFCDFBFFFFFE0C1FFFFE0C1FFFFDFC0FF
                FFDFC0FFFFDFBFFFFFDFBEFFFFDFBDFFAA663FFF762700FF822B00FF943100FF
                943302FF862F03FF822C00FFEBBC96FFFFDCB8FFFFDCB8FFFFDBB7FFFFDBB7FF
                FFDBB7FFFDD9B4FFF7D3AFFFE8C6A4FFDEBE9DFFD2B394FFC7A98BFFC2A587FF
                B9916AFF75482CFC552A15EF552A15CD552A158C552A1542552A1514552A1504
                00000000552A1501552A1509552A1528B9997AF6BCA892FFC0AB96FFCCB69FFF
                DAC2A9FFE6CCB3FFF8DCC0FFFEE1C4FFFFE1C4FFFFE2C3FFFFE1C3FFFFE0C3FF
                FFE1C2FFFFE0C1FFFFE0C1FFFFE0C0FF9D5A34FF6B2300FF7F2A00FF933100FF
                8D2F00FF772700FF792800FFE2B08AFFFFDEBCFFFFDDBBFFFFDCBBFFFFDCBAFF
                FFDCB9FFFFDCB9FFFFDBB8FFF9D6B4FFEAC9A8FFDFBF9FFFD2B496FFC7AB8DFF
                C3A78AFFB99067FF552A15F9552A15E7552A15B8552A156B552A1528552A1509
                552A1501552A1503552A1512BF9C7BD8BDA893FFC1AD99FFCCB8A1FFDAC3ACFF
                E7CEB5FFF9DEC3FFFEE3C8FFFFE3C7FFFFE3C7FFFFE2C6FFFFE2C5FFFFE2C5FF
                FFE2C5FFFFE1C4FFFFE1C3FFFFE1C2FFC68D69FF632100FF622000FF662200FF
                672200FF6C2400FF7E330DFFF8D3B3FFFFDFBEFFFFDEBDFFFFDEBDFFFFDEBCFF
                FFDDBBFFFFDDBBFFFFDDBAFFFFDCBAFFFAD8B6FFEACAAAFFDFC0A2FFD3B598FF
                C9AD90FFC6A788FFB2865DFE552A15F4552A15D6552A1594552A1542552A1512
                552A1503552A1506BB906D5ABDA58CFEC2AF9CFFCCB7A3FFDAC4AEFFE6CFB7FF
                F8DFC6FFFEE5CBFFFFE5CAFFFFE4CAFFFFE3C9FFFFE4C9FFFFE4C8FFFFE3C7FF
                FFE3C7FFFFE3C7FFFFE2C6FFFFE2C5FFF8D7B9FF894926FF5E1F00FF5E1F00FF
                612000FF672200FFD19975FFFFE0C1FFFFDFC1FFFFDFC0FFFFE0C0FFFFDFBFFF
                FFDEBEFFFFDEBEFFFFDEBDFFFFDEBDFFFFDEBCFFFAD8B7FFEACBABFFDFC1A4FF
                D3B79AFFCBAF93FFC39F7CFF794C30FB552A15E8552A15B4552A1560552A1521
                552A1506552A150CC1A384E5C2B09EFFC9B6A3FFD7C2AEFFE5CEB9FFF7DFC7FF
                FEE5CDFFFFE6CDFFFFE6CCFFFFE6CCFFFFE5CBFFFFE5CAFFFFE5CAFFFFE3C9FF
                FFE3C9FFFFE3C8FFFFE3C8FFFFE3C8FFFFE3C7FFFFE3C7FFD09A78FFC68E6BFF
                C78E6BFFF2CCACFFFFE2C3FFFFE2C3FFFFE1C3FFFFE0C3FFFFE1C2FFFFE0C2FF
                FFE0C1FFFFE0C0FFFFE0C0FFFFDFBFFFFFDFBEFFFFDFBEFFF8D9B9FFE9CBADFF
                DDC1A4FFD1B59AFFCBB195FFBA9169FF552A15F2552A15CE552A1583552A1534
                552A150C875D4118C0A992FEC5B4A2FFD1BEACFFE0CCB8FFF0DAC4FFFDE6CFFF
                FFE8D0FFFFE7D0FFFFE7CEFFFFE6CEFFFFE6CEFFFFE6CDFFFFE6CDFFFFE6CCFF
                FFE5CBFFFFE5CBFFFFE5CBFFFFE5CBFFFFE3CAFFFFE3C9FFFFE3C9FFFFE3C8FF
                FFE3C8FFFFE3C8FFFFE3C7FFFFE3C6FFFFE2C6FFFFE2C5FFFFE2C5FFFFE1C3FF
                FFE1C3FFFFE1C3FFFFE1C2FFFFE0C2FFFFE0C2FFFFE1C2FFFFE0C0FFF3D4B7FF
                E6C9ADFFD8BDA2FFCEB49AFFC6A483FF5A2E19F8552A15DF552A159D552A1544
                552A1511CCAB8CB6C6B6A6FFCBBAA9FFD9C6B4FFE7D4C0FFFAE4CEFFFFE8D2FF
                FFE8D2FFFFE8D2FFFFE8D1FFFFE8D0FFFFE8D0FFFFE8D0FFFFE7CFFFFFE6CEFF
                FFE7CEFFFFE6CEFFFFE6CDFFFFE6CCFFFFE6CCFFFFE6CBFFF9DABEFFE4B694FF
                ECC3A4FFFFE5CAFFFFE3CAFFFFE3C9FFFFE3C9FFFFE3C8FFFFE3C7FFFFE3C7FF
                FFE2C6FFFFE3C6FFFFE2C5FFFFE1C5FFFFE2C4FFFFE1C4FFFFE2C4FFFCDEC0FF
                ECCFB2FFE0C5A9FFD4BAA0FFCFB59DFFAC815EFD552A15E6552A15A9552A154B
                552A1513C9AE95EDC9BAABFFD2C2B1FFE1CFBDFFF0DDC9FFFEEAD4FFFFEAD5FF
                FFEAD5FFFFEAD4FFFFEAD4FFFFE9D3FFFFE9D2FFFFE9D2FFFFE8D1FFFFE8D1FF
                FFE8D1FFFFE8D0FFFFE7D0FFFFE7CEFFFFE7CFFFFFE7CEFFE3B696FF943100FF
                B36338FFFFE6CBFFFFE5CCFFFFE5CBFFFFE5CBFFFFE5CAFFFFE3C9FFFFE3C9FF
                FFE3C8FFFFE3C8FFFFE3C7FFFFE3C7FFFFE2C6FFFFE2C6FFFFE3C6FFFFE3C6FF
                F3D8BCFFE7CCB1FFDBC2A7FFD3BAA1FFC5A07CFF552A15E8552A15AD552A154E
                552A1514CAB5A0FCCDBDB0FFD8C9B8FFE7D5C5FFF8E5D3FFFFEDD9FFFFEBD7FF
                FFEBD8FFFFEBD7FFFFEBD6FFFFEAD5FFFFEAD5FFFFEAD5FFFFEAD3FFFFE9D3FF
                FFE9D3FFFFE9D2FFFFE9D2FFFFE8D1FFFFE8D1FFFFE8D0FFE3B799FF943100FF
                A44A1CFFFFE6CEFFFFE6CEFFFFE6CEFFFFE5CDFFFFE5CCFFFFE6CCFFFFE5CBFF
                FFE5CAFFFFE5CAFFFFE3C9FFFFE4CAFFFFE4C9FFFFE4C9FFFFE3C7FFFFE5CAFF
                FBDFC4FFECD1B8FFE0C8AEFFD7BEA7FFD0AD8FFF552A15E9552A15AE552A154F
                552A1514CCBBABFFCFC1B3FFDBCCBEFFEAD9CAFFFBE9D9FFFFEEDCFFFFECDAFF
                FFEDDAFFFFECDAFFFFECD9FFFFECD8FFFFEBD8FFFFEBD7FFFFEBD6FFFFEAD6FF
                FFEBD6FFFFEAD5FFFFE9D3FFFFE9D3FFFFE9D3FFFFE9D3FFEBC7AAFF923000FF
                963200FFE4B899FFFFE8D0FFFFE7CFFFFFE7D0FFFFE7CFFFFFE6CEFFFFE7CEFF
                FFE6CDFFFFE6CCFFFFE5CDFFFFE6CBFFFFE5CBFFFFE5CAFFFFE4CAFFFFE6CBFF
                FFE4CBFFEFD6BDFFE3CBB3FFD9C2AAFFD5B99CFF552A15E9552A15AE552A154F
                552A1514CEC1B3FFCFC3B6FFDCCEC0FFEBDCCDFFFCECDCFFFFEFDEFFFFEEDDFF
                FFEDDDFFFFEEDCFFFFEDDCFFFFEDDBFFFFECDAFFFFECDAFFFFECD9FFFFECD8FF
                FFECD8FFFFEBD7FFFFEBD7FFFFEBD7FFFFEAD6FFFFEAD5FFFFEAD5FF923A0EFF
                953100FFA34717FFE4B595FFFFE8D2FFFFE8D1FFFFE8D1FFFFE7D0FFFFE7D0FF
                FFE7CFFFFFE7CFFFFFE7CEFFFFE7CEFFFFE6CEFFFFE6CEFFFFE6CDFFFFE8CEFF
                FFE7CFFFF1D8BFFFE5CDB6FFDAC2ACFFD8C0A7FF552A15E9552A15AE552A154F
                552A1514CFC4B8FFD0C4B8FFDDD0C3FFECDED0FFFDEEDFFFFFF1E2FFFFEFE0FF
                FFEFDFFFFFEEDEFFFFEEDEFFFFEEDEFFFFEEDDFFFFEEDDFFFFEEDCFFFFEDDBFF
                FFEDDAFFFFECDAFFFFECDAFFFFECD8FFFFECD8FFFFEBD8FFFFEBD8FFCA9474FF
                8A2E00FF933201FFDB7E4FFFE8A67EFFF9DEC6FFFFE9D3FFFFE9D3FFFFE8D3FF
                FFE8D2FFFFE8D1FFFFE8D0FFFFE8D0FFFFE8D0FFFFE7D0FFFFE7CFFFFFE9D0FF
                FFE9D2FFF1DAC2FFE5CEB7FFDAC4AEFFDAC4ADFF552A15E8552A15AD552A154E
                552A1514CFC3B8FFD0C5BBFFDDD2C6FFECDFD3FFFDEFE2FFFFF2E4FFFFF0E2FF
                FFF0E2FFFFF0E1FFFFEFE0FFFFF0E0FFFFEFE0FFFFEEDFFFFFEFDEFFFFEEDEFF
                FFEEDDFFFFEEDDFFFFEDDCFFFFEDDBFFFFEDDBFFFFEDDAFFFFEDDAFFF8E0CCFF
                7F340EFF8C2E00FF993909FFFB9D6FFFE78D5FFFEDC9B0FFFFEBD6FFFFEAD5FF
                FFEAD5FFFFE9D3FFFFEAD3FFFFE9D3FFFFE9D3FFFFE9D2FFFFE8D2FFFFEBD4FF
                FFECD5FFF2DCC5FFE5D0BAFFDAC6B1FFD8C3ACFF552A15E6552A15A9552A154B
                552A1513CEC4B7FFD1C8BEFFDED4C9FFEDE1D5FFFDF1E5FFFFF5E8FFFFF2E5FF
                FFF2E5FFFFF2E4FFFFF1E3FFFFF1E2FFFFF0E3FFFFF0E1FFFFF0E1FFFFEFE0FF
                FFEFE0FFFFEFDFFFFFEFDFFFFFEEDEFFFFEEDEFFFFEEDEFFFFEEDDFFFFEDDCFF
                B17758FF762700FF913000FFA64617FFD7794AFFBB6135FFECCAB0FFFFEBD7FF
                FFEBD7FFFFEBD6FFFFEBD6FFFFEBD5FFFFEAD5FFFFE9D5FFFFEAD4FFFFEDD7FF
                FFEFD8FFF2DDC8FFE7D3BEFFDBC9B4FFD7C0A9FF552A15DF552A159D552A1544
                552A1511D0C3B6FCD4CBC3FFE0D7CEFFEEE3D9FFFDF1E7FFFFF8ECFFFFF3E8FF
                FFF3E7FFFFF2E6FFFFF2E6FFFFF3E5FFFFF2E5FFFFF2E3FFFFF1E3FFFFF1E3FF
                FFF1E2FFFFF0E2FFFFF0E1FFFFF0E1FFFFF0E0FFFFF0E0FFFFEFE0FFFFEFDEFF
                EACBB4FF6B2300FF852C00FF953200FFA84B1DFF9C4013FF9E4D22FFFFECDAFF
                FFECDAFFFFECD9FFFFECD8FFFFEBD8FFFFEBD7FFFFEAD7FFFFEBD6FFFFF2DDFF
                FFF2DEFFF3DFCAFFE8D4C1FFDECCB9FFD6BCA3FF552A15CE552A1583552A1534
                552A150CD6C5B4ECD8D0C8FFE1D9D0FFEDE4DBFFF9EFE6FFFFFBF0FFFFF6EBFF
                FFF4EAFFFFF3E9FFFFF4E8FFFFF3E8FFFFF3E8FFFFF3E6FFFFF3E6FFFFF2E6FF
                FFF2E5FFF9E6D7FFBF805EFFD78E67FFEBA27BFFD49F81FFFFF0E2FFFFF1E1FF
                FFF0E0FF77320FFF742600FF953200FF933303FF893004FF852D01FFE2BCA2FF
                FFEEDCFFFFEDDCFFFFEDDBFFFFEDDBFFFFECDAFFFFECDAFFFFEEDBFFFFFAE7FF
                FFF2DEFFF3E0CEFFEAD7C5FFE2D0BDFFD2B498FD552A15B4552A1560552A1521
                552A1506DEC9B2B1DBD4CDFFE0D9D1FFEBE2DBFFF4EBE4FFFFFCF3FFFFFAF1FF
                FFF5ECFFFFF5ECFFFFF5EBFFFFF4EAFFFFF3EAFFFFF3E9FFFFF3E9FFFFF3E8FF
                FFF3E7FFB77C5CFF832D01FFB25526FFCD7042FF983D10FFDCB297FFFFF1E3FF
                FFF1E3FF9C5E3DFF6F2500FF943100FF933100FF812B00FF802A00FFCB9779FF
                FFEEDEFFFFEFDFFFFFEEDDFFFFEEDDFFFFEDDDFFFFEEDCFFFFF4E3FFFFFFF0FF
                FBE9D7FFF2E0CEFFE9D8C6FFE4D3C2FFBB987BF2552A1594552A1542552A1512
                552A1503DFBFA109DBD1C9FDDED8D2FFE7E0D9FFF1E9E2FFFDF5EEFFFFFFF8FF
                FFF8F1FFFFF6EDFFFFF7EDFFFFF6EDFFFFF6EDFFFFF6ECFFFFF6EBFFFFF5EBFF
                FFF3EAFF732600FF822B00FF953200FF8E3305FF842D01FFCD9A7DFFFFF3E6FF
                FFF3E6FF9D5F3EFF6F2500FF933100FF943100FF7D2A00FF7D2900FFCA977AFF
                FFF0E2FFFFF0E1FFFFF0E1FFFFEFE0FFFFEFE0FFFFF2E2FFFFFFF2FFFFFCEBFF
                F6E6D5FFEEDECEFFE7D8C7FFE1CBB7FF5C311BBA552A156B552A1528552A1509
                552A150100000000DECDBEDFDDD8D3FFE3DDD8FFEDE7E0FFF5F0E9FFFFFFFCFF
                FFFFF9FFFFF8F1FFFFF8F0FFFFF7F0FFFFF7EFFFFFF7EFFFFFF7EEFFFFF6EDFF
                FFF6EDFF6B2300FF7D2900FF983200FF862C00FF7D2900FFCD9A7FFFFFF3EAFF
                FFF3E9FF904E2DFF6F2500FF933100FF923000FF7A2800FF7A2800FFCA987CFF
                FFF2E5FFFFF1E3FFFFF1E3FFFFF1E3FFFFF2E4FFFFFFF0FFFFFFFFFFFCEEDFFF
                F3E5D6FFEBDCCEFFE7D8CAFFD3B79CF9552A158C552A1542552A1514552A1504
                0000000000000000EACFB542DDD6CEFDE0DCD8FFE9E3DEFFF2ECE7FFFBF6F1FF
                FFFFFFFFFFFFFCFFFFF9F4FFFFF8F1FFFFF8F1FFFFF8F1FFFFF8F0FFFFF7EFFF
                FFF8EFFF8B4D2EFF6C2400FF8E2F00FF832B00FF8F441FFFF9EADEFFFFF6EBFF
                F8E9DCFF6E2400FF722600FF933100FF8A2E00FF752700FF762700FFEBCFBCFF
                FFF3E7FFFFF3E6FFFFF2E6FFFFF3E6FFFFFFF3FFFFFFFFFFFFFCEFFFF7EADCFF
                F0E3D5FFE9DCCFFFE3D1BEFF8A6248B8552A1558552A1520552A1507552A1501
                000000000000000000000000E3D3C3CAE1DDD9FFE5E1DDFFEDE8E4FFF4EFEBFF
                FFFAF5FFFFFFFFFFFFFFFEFFFFFAF5FFFFF9F3FFFFF9F3FFFFF9F3FFFFF8F2FF
                FFF8F2FFC69A82FF642100FF7E2A00FF852C00FFDBB59FFFFFF7EFFFFFF6EEFF
                CA9A80FF6E2400FF7A2800FF872D00FF712500FF6E2400FFA0613FFFFFF5EAFF
                FFF4EAFFFFF4E9FFFFF6EAFFFFFFF6FFFFFFFFFFFFFFFAFFF9EEE1FFF3E7DBFF
                EDE1D4FFE9DCCEFFD1B49BEE552A1568552A152C552A150C552A150200000000
                00000000000000000000000000000000E3D9CFEFE3E1DDFFE7E3E1FFEEEAE7FF
                F5F1EDFFFFFCF8FFFFFFFFFFFFFFFFFFFFFDF8FFFFFAF5FFFFFAF4FFFFF9F4FF
                FFF9F4FFFFF9F3FFA46D51FF702500FF852C00FFA7572FFFD6AA92FFD09D82FF
                882D00FF782800FF712500FF642100FF662200FF8D4E2EFFF8E9DEFFFFF5ECFF
                FFF5ECFFFFF9EFFFFFFFFEFFFFFFFFFFFFFFFFFFFAEFE4FFF4EADFFFEEE4D9FF
                EBE1D5FFE2CDB9FA552A1572552A1537552A1512552A15040000000000000000
                00000000000000000000000000000000EDD3BA3BE5DED6F8E4E2E0FFE8E5E2FF
                EEECE9FFF5F2EFFFFFFEFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF8FFFFFBF7FF
                FFFBF6FFFFFAF5FFFFFAF5FFC89C84FF893910FF8D2F00FF953100FF953100FF
                892D00FF722600FF612000FF6E2F10FFB9886FFFF8ECE1FFFFF7F0FFFFFAF2FF
                FFFFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFAF1E7FFF4EBE2FFEEE5DDFFECE2D9FF
                E6D5C5FD936D5390552A1539552A1515552A1505552A15010000000000000000
                0000000000000000000000000000000000000000EDD6C165E5E0DAF9E4E3E1FF
                E8E6E4FFEFEDEBFFF6F4F1FFFFFDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFCFFFFFCF9FFFFFBF7FFFFFAF6FFFFFAF6FFE3C5B4FFCE9E85FFCE9E85FF
                CC9D84FFC99B84FFE0C4B3FFFFF9F4FFFFFAF4FFFFFEF7FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFCFFFAF3EBFFF5EDE5FFEFE7E0FFECE3DBFFE7D9CCFD
                B593799F552A1532552A1514552A1506552A1501000000000000000000000000
                000000000000000000000000000000000000000000000000ECD6BF5AE5DFD9F6
                E6E5E3FFEAE9E7FFF0EFEDFFF6F4F3FFFAF9F6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFDF9FFFFFBF8FFFFFBF7FFFFFBF7FFFFFBF7FF
                FFFBF6FFFFFAF7FFFFFCF7FFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFEF9F2FFFAF3EDFFF5EFE9FFF0E9E3FFEDE6DFFFE8D9CCFBB6947A8E
                552A1527552A150F552A1504552A150100000000000000000000000000000000
                00000000000000000000000000000000000000000000000000000000EACFB615
                E7DFD6E6E9E7E7FFEBEAEAFFEFEEEDFFF3F1F1FFF7F6F4FFFBFAF8FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF9F5FF
                FAF6F1FFF7F2EEFFF4EEE9FFF1EBE6FFEEE8E1FFE4D5C6EF80584049552A151C
                552A150A552A1503552A15010000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000EBDCCCB1EAE7E4FBECECEBFFEEEEEDFFF1F0F0FFF4F3F2FFF7F7F5FF
                F9F8F7FFFDFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFCF9F5FFFAF6F3FFF7F4F0FF
                F4F1EDFFF2EEEAFFF1ECE9FFEDE5DCFCDFC9B6C3552A1521552A1510552A1506
                552A150200000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000D3B69D05EDE0D5CFECEAE7FCEDEDEDFFEEEDEEFFF0F0EFFF
                F2F2F1FFF5F4F4FFF8F8F7FFFCFBFAFFFEFDFCFFFFFEFDFFFFFEFCFFFFFEFCFF
                FFFDFCFFFFFEFCFFFEFDFAFFFBF9F7FFF8F5F4FFF5F3F2FFF3F1EEFFF2EFEDFF
                F1EFECFFEFE9E2FDE7D7C6D9673D2823552A1510552A1507552A1502552A1501
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000552A1501EEDFD0B8EDE9E3F4EDECEBFF
                ECECECFFEEEEEEFFF1F1F1FFF3F2F3FFF3F3F3FFF3F2F2FFF3F3F2FFF3F3F3FF
                F4F3F3FFF4F3F2FFF4F3F2FFF4F3F1FFF2F1EFFFF1EFEEFFF0EDEAFFEFE7DEF6
                E7D6C5C1552A1516552A150D552A1506552A1502552A15010000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000000000EDD4BC1F
                EBDCCCA9E9E1D7E3EBE6E2F8EBEAE9FEECECEBFFECECECFFECECECFFECECECFF
                ECECECFFECEAEBFFECEAE8FEECE6E2F9EDE2D6E4EAD7C7AEBFA1882C552A150C
                552A1507552A1503552A15010000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000FFFFFF80FFFF0000FFFFFF007FFF0000FFFFFE007FFF0000FFFFF800
                7FFF0000FFFFF8007FFF0000FFFFF0007FFF0000FFFF20007FFF0000FFFC0000
                3FFF0000FFE0000007FF0000FF80000001FF0000FF00000000FF0000FC000000
                003F0000F8000000001F0000F0000000000F0000E000000000070000E0000000
                00070000C0000000000300008000000000010000800000000001000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000080000000000100008000000000010000C000000000030000E0000000
                00070000E000000000070000F0000000000F0000F8000000001F0000FC000000
                003F0000FF00000000FF0000FF80000001FF0000FFE0000007FF0000FFFC0000
                3FFF000028000000200000004000000001002000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000009000000370000005C0000001B
                0000000200000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000085D42275E916940C91F160DA30000002B
                0000000400000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000046E4E2E5FC19466F4D3A171FE2D2012B00000002B
                0000000400000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000175553440B4895EE7D9B28BFFD0A070FA2C1F12AF0000002B
                0000000400000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000100000005
                00000007644B331AC0966BDFD0AA85FFE9C096FFD0A173FB31251AB100000031
                0000000300000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000100000008000000100000001D00000034
                000000408269518AC5A481FBDCB58DFFEEC49AFFD0A67DFC30271FB600000055
                0000001C0000000E000000020000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000010000000C000000250000004916100B744D3E30A6564739BC
                735F4BCCB09275F2C5A381FFE3BC95FFEAC29BFFCDA884FC66503BD6000000A9
                00000089000000670000002E0000000F00000004000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000005000000251F1912635D4833BB886B4DE0A78768F2B69676FCB79778FD
                B89779FFBE9D7EFFD0AE8BFFE9C29CFFEAC29CFFD4AF8BFFBD9975FD9D7A56F1
                806040E415100BBC0000009F00000068000000330000000C0000000000000000
                000000000000000000000000000000000000000000000000000000000000000B
                30261C477A5F44B8B18F6EFAB89B7FFFBBA085FFBEA185FFC5A583FFCBA986FF
                CFAE8CFFD8B594FFE7C29FFFF8D1AAFFF4CEA7FFE0BB98FFCEAD8CFFC1A282FF
                BD9D7EFFB7926CFF7E6042E22C2116BF000000930000004C0000001400000001
                0000000000000000000000000000000000000000000000000000000D56443169
                A38465ECB59B80FFC0A68EFFCAAE93FFD5B699FFDCBC9DFFE3C2A2FFEDCBA8FF
                F5D3B0FFF6D1ACFFFBD3AEFFFFDBB4FFFFDCB5FFF5CFAAFFE6C29EFFDBB895FF
                D0AF8FFFC7A98AFFBC9D7DFFAD8A64F9533E2AD2000000A30000006100000019
                000000010000000000000000000000000000000000000008896C5080B39678F8
                BCA58DFFC9B097FFD8BBA0FFE7C8AAFFF3D3B3FFFBD9B7FFFDDBB9FFFFDFBEFF
                F0C49FFFA55832FFC67041FFF7AE81FFE8B289FFFFDEB9FFFDD8B2FFF7D2ADFF
                ECC8A4FFDFBD9AFFD1B392FFC5A78AFFBF9A78FF795C3FE0050403A70000005C
                000000110000000000000000000000000000000290735662B4997EF9BCA792FF
                CEB59DFFE1C6ABFFF3D6B8FFFEDFBFFFFFE0C1FFFFDFBFFFFFDFBEFFFFE2C1FF
                AC6A43FF741D00FFA13F0FFFAB4A1BFF9A481DFFF9D3AEFFFFDDB9FFFFDBB7FF
                FFDAB6FFF8D4AFFFE9C7A4FFD7B797FFC7AA8DFFBD9C7BFF71563CDD000000A0
                0000004500000007000000000000000078624C2CB3977DF0BDAA96FFCEB8A1FF
                E3CAB0FFF9DCC0FFFFE3C6FFFFE2C4FFFFE1C3FFFFE1C3FFFFE0C1FFFFE3C3FF
                995834FF6C1F00FF872B00FF762100FF7D3109FFF5CCA8FFFFE1BFFFFFDCBBFF
                FFDDBAFFFFDDBAFFFDD9B6FFECCAA9FFD8B99BFFC8AD90FFC19F7DFF413324CD
                0000008A00000026000000032E251D05BA9B7DBCBDAB98FFCEB9A4FFE2CBB4FF
                F8DFC5FFFFE5CAFFFFE3C9FFFFE3C8FFFFE3C7FFFFE3C6FFFFE2C6FFFFE7CAFF
                D0A07FFF5D1B00FF571700FF5B1500FFAB6D49FFFFE4C4FFFFDFBFFFFFDFBFFF
                FFDEBDFFFFDEBDFFFFDEBCFFFDDCB9FFEBCCACFFD9BB9EFFCAAF93FFB5916EF6
                17120DB40303035700000013BD9B7A3CBEA993FDCAB8A6FFE0CAB4FFF7DFC7FF
                FFE7CFFFFFE6CCFFFFE5CCFFFFE5CAFFFFE4CAFFFFE3C9FFFFE3C8FFFFE4C9FF
                FFE6CBFFDBAF90FFBF8A6AFFD2A384FFFCDDBEFFFFE3C5FFFFE0C3FFFFE1C2FF
                FFE0C1FFFFE0C0FFFFDFBFFFFFDFBFFFFCDCBCFFEACCAEFFD7BBA0FFC8AC8EFE
                725A44D81211108400000028C7A98B92C3B3A2FFD7C3B1FFEFDAC4FFFFE8D2FF
                FFE8D1FFFFE7CFFFFFE7CFFFFFE7CFFFFFE7CEFFFFE6CCFFFFE5CDFFFFE5CBFF
                FFE5CCFFFFE8CDFFFCDBBFFFFFE4C9FFFFE6CCFFFFE3C7FFFFE3C7FFFFE3C5FF
                FFE2C5FFFFE2C5FFFFE0C4FFFFE1C3FFFFE2C3FFF8D9BBFFE3C7AAFFCFB79EFF
                A3876DEC2E2A26A808080842C6B09AEECEBFB0FFE3D0BEFFF9E5D0FFFFEBD6FF
                FFEAD5FFFFEAD4FFFFE9D3FFFFE9D2FFFFE8D1FFFFE8D1FFFFE8D0FFFFE7CFFF
                FFEBD2FFF2CFB3FFA64E20FFDEAC8AFFFFEFD7FFFFE5CBFFFFE5CAFFFFE3C9FF
                FFE3C8FFFFE3C8FFFFE3C7FFFFE2C6FFFFE3C6FFFEE2C5FFEDD2B6FFDBC3AAFF
                C1A78BF84D463FBF0E0E0D65CAB7A7F8D5C6B8FFECDACAFFFEECD9FFFFECD9FF
                FFECD9FFFFEBD7FFFFEBD6FFFFEAD6FFFFEAD4FFFFEAD4FFFFE9D3FFFFE8D2FF
                FFECD6FFF2D2B7FF943000FFC88762FFFFF4DEFFFFE8D0FFFFE6CDFFFFE6CDFF
                FFE5CBFFFFE5CBFFFFE4CBFFFFE4CAFFFFE4C9FFFFE5CAFFF6DBC1FFE2CAB2FF
                CEB49CFB74675CD42B28268CCCBFB2F7D7C9BCFFEEDFD0FFFFEFDEFFFFEEDDFF
                FFEDDCFFFFEDDCFFFFEDDBFFFFECDAFFFFECD9FFFFECD8FFFFEBD7FFFFEBD6FF
                FFEBD6FFFDECD6FF9F4A1FFF9C3B0CFFE7B797FFFEECD6FFFFEBD5FFFFE7D0FF
                FFE7CFFFFFE7CEFFFFE7CEFFFFE6CDFFFFE6CCFFFFE8CEFFF9E0C8FFE5CCB5FF
                D5C1ACFD9D8D7EE543403CA1CDC2B7F7D8CCBFFFEFE1D4FFFFF1E3FFFFF0E1FF
                FFEFDFFFFFEEDFFFFFEFDFFFFFEEDEFFFFEEDDFFFFEDDBFFFFEDDBFFFFECDAFF
                FFECD9FFFFF3E1FFCFA185FF7F1F00FFC26231FFF7B58FFFFAE0C9FFFFEDD8FF
                FFE8D3FFFFE8D2FFFFE8D1FFFFE8D1FFFFE7D0FFFFEBD2FFF9E3CCFFE5D0B8FF
                D9C4B0FEAA9B8CE84743409ACDC2B7F8D9CFC4FFF0E4D8FFFFF4E7FFFFF2E5FF
                FFF2E4FFFFF0E2FFFFF1E2FFFFEFE1FFFFF0E0FFFFEFDFFFFFF1E1FFFFF4E5FF
                FFF3E3FFFFF4E4FFF3DDC9FF883E1AFF8D2D03FFCE6A39FFD0835AFFF6DCC5FF
                FFEEDAFFFFEAD5FFFFEAD5FFFFEAD5FFFFE9D3FFFFEDD7FFF9E7D0FFE7D2BDFF
                D6C3ADFCA79A88DE43403D7DD0C4B8F5DCD4CBFFF1E5DCFFFFF7ECFFFFF5EAFF
                FFF2E7FFFFF3E6FFFFF3E6FFFFF2E4FFFFF2E4FFFFF3E5FFFCEBDDFFF3D4BFFF
                F9DBC6FFFDEDDDFFFFFAECFFAC7C5FFF741A00FF9B3907FF943306FFBA7D5AFF
                FFF5E4FFFFEDDAFFFFECD9FFFFEBD8FFFFEBD7FFFFF5E0FFFAE9D6FFE9D5C1FF
                D1BEA9FC9A8C7EC43F3D3B47DACBB9D1DDD7D0FFEDE3DBFFFCF7EDFFFFFAF0FF
                FFF4EBFFFFF5EAFFFFF4E9FFFFF3E8FFFFF4E8FFFFF5E9FFBC8668FFAB5224FF
                C96D3EFFCB9678FFFFFEF4FFCAA58DFF722100FF943000FF802400FF994E28FF
                F8E1CDFFFFF3E3FFFFEEDCFFFFECDBFFFFF0DDFFFFFBEAFFF8E6D3FFDAC7B3FE
                D2BEA9FD615B56892B2B2A1EE4CBB359DBD5D0FFE8E1DAFFF8F0E9FFFFFFF8FF
                FFF8F0FFFFF7EDFFFFF6EEFFFFF6ECFFFFF7ECFFF9ECE2FF772903FF8F2D00FF
                882800FFA65F3AFFFFFBEEFFD2B09AFF742500FF943000FF7D2400FF924722FF
                F4DCCAFFFFF5E8FFFFEFE0FFFFF0DFFFFFFBEFFFFEF8E9FFF2E1D1FFD6C2AEFF
                BFAC98EE2726254800000007ECD1B51CDDD2C7E2E1DEDAFFF0EAE4FFFDFAF7FF
                FFFEFCFFFFF9F3FFFFF7F0FFFFF8F0FFFFF8F0FFFBF1E8FF783514FF852900FF
                802400FFBC8A70FFFFFFFFFFBD9580FF6E1B00FF943100FF741D00FF965230FF
                FBECDEFFFFF5E8FFFFF1E3FFFFFBEFFFFFFFFBFFF9ECDFFFEDDFD3FFDECEBBFE
                6E5E4E97000000160000000000000000E5D2BF6FE0DDD8FFE9E5E1FFF6F0ECFF
                FFFDFBFFFFFFFEFFFFFAF5FFFFF9F2FFFFF9F3FFFFFCF6FFAE8169FF661200FF
                903D14FFF0DACCFFFAEDE4FF955435FF732000FF782400FF691C00FFC8A087FF
                FFFDF4FFFFF5E9FFFFFCF3FFFFFFFFFFFCF5EBFFF3E6D9FFEADFD2FFB6A38FD5
                0000002800000001000000000000000000000000E7D9CAA3E3E1DFFFEBE8E5FF
                F6F3EFFFFFFFFDFFFFFFFEFFFFFDFAFFFFFBF6FFFFFDFAFFF8F0EBFFAA775CFF
                812700FFA6522AFFA8552BFF761C00FF5F1700FF6D2C0FFFBF9780FFFFFCF3FF
                FFFAF1FFFFFDFAFFFFFFFFFFFCF7F1FFF3E8DFFFECE3DAFFD2C1AFEC27221D43
                0000000500000000000000000000000000000000F0D6BD0EE8DBCFBBE4E3E2FF
                EBE9E8FFF8F5F2FFFFFEFCFFFFFFFFFFFFFFFEFFFFFEFCFFFFFFFEFFFFFDF9FF
                E9D4C8FFCB9980FFC58E71FFC39379FFCDAE9EFFEFE3DBFFFFFFFEFFFFFFFFFF
                FFFFFFFFFFFFFEFFFCF8F3FFF4ECE4FFEDE5DFFFDBCDBFF178695A5F00000009
                000000000000000000000000000000000000000000000000EFD8C114E8DACB9F
                E7E5E4FFEDEDEDFFF5F3F2FFFBFAF9FFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FEFCFAFFFAF5EFFFF5EEE9FFEEE8E2FFD4C6B6DE92806F500000000600000000
                0000000000000000000000000000000000000000000000000000000000000000
                E9DFD474EAE5DFEEEDECECFFF1F1F0FFF6F5F5FFFAF9F9FFFEFDFDFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBF9FFFAF7F4FF
                F6F3EFFFF2EEEAFFEBE3DCFACFC3B6B363594F1F000000010000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000F1DAC110ECE4DD94EBE7E3E4EEEDECFFEFF0F1FFF4F4F4FFF9F8F8FF
                FBFAF9FFFBFBF9FFFBFBF9FFFCFBF9FFFBFAF8FFF8F6F5FFF4F3F3FFF2EFEDFF
                EEE8E1F9D8D0C8B5B3A18E3F0000000400000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000EEE4D922E7DFD34EE8DCCEA6EAE5DFECECEAE9F6
                ECECECF7ECECECF7ECECECF7EDECECF7EDEBEAF7EDE8E3F0E8DBCEC4D3C7B962
                D7CBBF3A00000005000000000000000000000000000000000000000000000000
                000000000000000000000000FFFF83FFFFFF03FFFFFE03FFFFFC03FFFFE003FF
                FF0000FFFC00003FF800001FF0000007E0000003C00000038000000180000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000180000001C0000003C0000007E000000F
                F800001FFC00007FFF0001FF2800000010000000200000000100200000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000002D1F122B3A2918A10000006F
                0000001000000000000000000000000000000000000000000000000000000000
                0000000000000000000000050000000C0000001CBE9266EA9F744BE00000006E
                0000001400000000000000000000000000000000000000000000000000000000
                000000060000001A0000003A0000005E987858C1DCB792FF907356DF00000094
                0000004A0000001D00000008000000000000000000000000000000000000000F
                00000044453526A47E644BD5987F67E6C6A989FFEAC49FFFBB9A77F5463625D1
                000000AD0000008F0000004E0000001400000000000000000000000D634D377E
                A68A6DF2C1A48AFFCFAF92FFDEBF9DFFF3CEAAFFFFE7C0FFE4C3A0FFC4A685FF
                AF8D6BF9513D28D3000000A300000060000000130000000495785A85B9A289FF
                DCC3A9FFFCDCBDFFFFEFCEFFE3B693FF9D3A11FFC87547FFFFDDB8FFFFDEBAFF
                E4C5A5FFC3A486FF74583BDF000000A20000004EA686673BB8A590FFE3CDB7FF
                FFEACDFFFFE8CBFFFFF4D7FFD3A988FF490000FF701F00FFFFE1BCFFFFE8C7FF
                FFE3BFFFEDCDAFFFC2A587FF4B3A29CE0000009AC4A98DBFD9C7B5FFFFECD4FF
                FFEBD1FFFFE6CDFFFFE9CFFFFFEFD6FFDCB699FFF1D1B6FFFFEFD2FFFFE3C5FF
                FFE3C5FFFFE5C6FFE5CAADFFB29476F4000000BBCAB8A9FFF6E2D1FFFFF1DDFF
                FFEBD6FFFFEAD5FFFFEBD4FFFFFBE6FFCB8960FFE8BF9FFFFFFFE9FFFFE7CDFF
                FFE4CAFFFFE8CBFFFBE1C4FFD6BBA0FF33302CCACFC5B9FFFBECDDFFFFF3E3FF
                FFEEDEFFFFEEDCFFFFF1DFFFFFFFF8FFCEA082FFA54619FFFFEBCFFFFFF8E4FF
                FFE9D3FFFFEAD0FFFFE8CEFFDEC6B0FF6F675EDAD2C9BFFFFCF1E6FFFFF7EBFF
                FFF2E5FFFFF4E7FFFFF6E7FFFFF2DEFFFFFEEFFF88340FFFA73B0FFFEDD2B8FF
                FFF8E7FFFFEDD9FFFFF0DAFFDDC7B2FF605A54CCDDCFC2D6F4EFE9FFFFFFF6FF
                FFF7EDFFFFFFFFFFC5997FFF8D1D00FFEBD3BEFFAB7A5EFF640000FFBD886AFF
                FFFFF8FFFFF9E9FFFAF0E1FFD6C0ABFF1514146FE5D0BA56E3E2E0FFFFFEFCFF
                FFFFFBFFFFFFFFFFBD9885FF5C0000FFE2C5B2FF853E21FF570000FFD2B39DFF
                FFFFFFFFFFFFFDFFF0E5DAFF998673B90000001D00000000E6D9CC9DEBEBECFF
                FFFFFFFFFFFFFFFFFFFFFFFFC59A84FFB9714DFF904E36FFC2A797FFFFFFFFFF
                FFFFFFFFF5F1EDFFCDBCABD900000021000000000000000000000000E7DDD386
                EFEDECFFFAFCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                F5F0ECFFCFC1B3B5000000130000000000000000000000000000000000000000
                EDDFCE26E9E3DD9AEEEAE6EBF5F5F6FFF6F9FAFFF8F9F9FFF3EEE9F2E5DDD5AE
                BEB2A54100000005000000000000000000000000FF0F0000F80F0000E0030000
                C00100008000000B00001C47000044B800006EFA00007FFF000085FF000085FF
                000083FF000086FF80018CFFC00394FFE0079FFF}
              OnClick = imgAjudaClick
            end
            object dbCustoOperacional: TDBCheckBox
              Left = 16
              Top = 24
              Width = 225
              Height = 17
              Caption = 'Custo Operacional por Percentual'
              DataField = 'CUSTO_OPER_PERCENTUAL'
              DataSource = DtSrcTabela
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object dbFrete: TDBEdit
              Left = 16
              Top = 64
              Width = 97
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CUSTO_OPER_FRETE'
              DataSource = DtSrcTabela
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object dbOutros: TDBEdit
              Left = 120
              Top = 64
              Width = 97
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CUSTO_OPER_OUTROS'
              DataSource = DtSrcTabela
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
          end
          object dbEntregaFracionada: TDBCheckBox
            Left = 12
            Top = 138
            Width = 260
            Height = 17
            Caption = 'Entrega fracionada de produtos vendidos'
            DataField = 'ENTREGA_FRACIONADA_VENDA'
            DataSource = DtSrcTabela
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnKeyPress = ProximoCampoKeyPress
          end
          object dbCadastroAtivo: TDBCheckBox
            Left = 12
            Top = 161
            Width = 121
            Height = 17
            Caption = 'Cadastro Ativo'
            DataField = 'ATIVO'
            DataSource = DtSrcTabela
            TabOrder = 3
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnKeyPress = ProximoCampoKeyPress
          end
        end
        object tbsDadoFinanceiro: TTabSheet
          Caption = '&3. Dados Financeiro'
          ImageIndex = 3
          object dbgContaCorrente: TcxDBVerticalGrid
            Left = 0
            Top = 0
            Width = 828
            Height = 198
            Align = alClient
            OptionsView.CellEndEllipsis = True
            OptionsView.RowHeaderWidth = 142
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.CancelOnExit = False
            OptionsData.Appending = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsData.MultiThreadedFiltering = bFalse
            Navigator.Buttons.CustomButtons = <>
            TabOrder = 0
            OnEnter = dbgContaCorrenteEnter
            OnExit = dbgContaCorrenteExit
            DataController.DataSource = DtSrcTabela
            Version = 1
            object dbCtgrConta1: TcxCategoryRow
              Options.Focusing = False
              Options.Moving = False
              Properties.Caption = 'Poupan'#231'a / Conta Corrente (1)'
              ID = 0
              ParentID = -1
              Index = 0
              Version = 1
            end
            object dbBanco1: TcxDBEditorRow
              Options.Moving = False
              Properties.Caption = 'Banco'
              Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.EditProperties.KeyFieldNames = 'CODIGO'
              Properties.EditProperties.ListColumns = <
                item
                  FieldName = 'NOME_CODIGO'
                end>
              Properties.EditProperties.ListOptions.ShowHeader = False
              Properties.EditProperties.ListSource = dtsBancoFebraban
              Properties.DataBinding.FieldName = 'BANCO'
              ID = 1
              ParentID = -1
              Index = 1
              Version = 1
            end
            object dbAgencia1: TcxDBEditorRow
              Options.Moving = False
              Properties.Caption = 'Ag'#234'ncia'
              Properties.DataBinding.FieldName = 'AGENCIA'
              ID = 2
              ParentID = -1
              Index = 2
              Version = 1
            end
            object dbContaCorrente1: TcxDBEditorRow
              Options.Moving = False
              Properties.Caption = 'N'#250'mero da Conta'
              Properties.DataBinding.FieldName = 'CC'
              ID = 3
              ParentID = -1
              Index = 3
              Version = 1
            end
            object dbPracaCobranca1: TcxDBEditorRow
              Options.Moving = False
              Properties.DataBinding.FieldName = 'PRACA'
              ID = 4
              ParentID = -1
              Index = 4
              Version = 1
            end
            object dbCtgrConta2: TcxCategoryRow
              Options.Focusing = False
              Options.Moving = False
              Properties.Caption = 'Poupan'#231'a / Conta Corrente (2)'
              ID = 5
              ParentID = -1
              Index = 5
              Version = 1
            end
            object dbBanco2: TcxDBEditorRow
              Options.Moving = False
              Properties.Caption = 'Banco'
              Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.EditProperties.KeyFieldNames = 'CODIGO'
              Properties.EditProperties.ListColumns = <
                item
                  FieldName = 'NOME_CODIGO'
                end>
              Properties.EditProperties.ListOptions.ShowHeader = False
              Properties.EditProperties.ListSource = dtsBancoFebraban
              Properties.DataBinding.FieldName = 'BANCO_2'
              ID = 6
              ParentID = -1
              Index = 6
              Version = 1
            end
            object dbAgencia2: TcxDBEditorRow
              Options.Moving = False
              Properties.Caption = 'Ag'#234'ncia'
              Properties.DataBinding.FieldName = 'AGENCIA_2'
              ID = 7
              ParentID = -1
              Index = 7
              Version = 1
            end
            object dbContaCorrente2: TcxDBEditorRow
              Options.Moving = False
              Properties.Caption = 'N'#250'mero da Conta'
              Properties.DataBinding.FieldName = 'CC_2'
              ID = 8
              ParentID = -1
              Index = 8
              Version = 1
            end
            object dbPracaCobranca2: TcxDBEditorRow
              Options.Moving = False
              Properties.Caption = 'Pra'#231'a de Cobran'#231'a'
              Properties.DataBinding.FieldName = 'PRACA_2'
              ID = 9
              ParentID = -1
              Index = 9
              Version = 1
            end
            object dbCtgrConta3: TcxCategoryRow
              Options.Focusing = False
              Options.Moving = False
              Properties.Caption = 'Poupan'#231'a / Conta Corrente (3)'
              ID = 10
              ParentID = -1
              Index = 10
              Version = 1
            end
            object dbBanco3: TcxDBEditorRow
              Options.Moving = False
              Properties.Caption = 'Banco'
              Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.EditProperties.KeyFieldNames = 'CODIGO'
              Properties.EditProperties.ListColumns = <
                item
                  FieldName = 'NOME_CODIGO'
                end>
              Properties.EditProperties.ListOptions.ShowHeader = False
              Properties.EditProperties.ListSource = dtsBancoFebraban
              Properties.DataBinding.FieldName = 'BANCO_3'
              ID = 11
              ParentID = -1
              Index = 11
              Version = 1
            end
            object dbAgencia3: TcxDBEditorRow
              Options.Moving = False
              Properties.Caption = 'Ag'#234'ncia'
              Properties.DataBinding.FieldName = 'AGENCIA_3'
              ID = 12
              ParentID = -1
              Index = 12
              Version = 1
            end
            object dbContaCorrente3: TcxDBEditorRow
              Options.Moving = False
              Properties.Caption = 'N'#250'mero da Conta'
              Properties.DataBinding.FieldName = 'CC_3'
              ID = 13
              ParentID = -1
              Index = 13
              Version = 1
            end
            object dbPracaCobranca3: TcxDBEditorRow
              Options.Moving = False
              Properties.Caption = 'Pra'#231'a de Cobran'#231'a'
              Properties.DataBinding.FieldName = 'PRACA_3'
              ID = 14
              ParentID = -1
              Index = 14
              Version = 1
            end
          end
        end
        object tbsObservacao: TTabSheet
          Caption = '&4. Observa'#231#245'es'
          ImageIndex = 4
          object dbObservacao: TDBMemo
            Left = 0
            Top = 0
            Width = 828
            Height = 198
            Align = alClient
            DataField = 'OBSERVACAO'
            DataSource = DtSrcTabela
            TabOrder = 0
          end
        end
        object tbsCompra: TTabSheet
          Caption = '&5. Compras'
          ImageIndex = 1
          DesignSize = (
            828
            198)
          object lblValorLimiteCompra: TLabel
            Left = 9
            Top = 8
            Width = 111
            Height = 13
            Caption = 'Limte p/ Compras (R$):'
            FocusControl = dbValorLimiteCompra
          end
          object lblTotalCompras: TLabel
            Left = 9
            Top = 48
            Width = 138
            Height = 13
            Caption = 'Total Compras Abertas (R$):'
            FocusControl = dbTotalCompras
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblLimiteDisponivel: TLabel
            Left = 9
            Top = 88
            Width = 127
            Height = 13
            Caption = 'Limite Dispon'#237'vel (R$):'
            FocusControl = dbLimiteDisponivel
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblTituloEmAberto: TLabel
            Left = 8
            Top = 175
            Width = 110
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = '* T'#237'tulos em aberto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblTituloPagando: TLabel
            Left = 8
            Top = 159
            Width = 122
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = '* T'#237'tulos sendo pagos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitTop = 121
          end
          object dbValorLimiteCompra: TDBEdit
            Left = 9
            Top = 24
            Width = 153
            Height = 21
            CharCase = ecUpperCase
            DataField = 'VALOR_LIMITE_COMPRA'
            DataSource = DtSrcTabela
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object dbTotalCompras: TDBEdit
            Left = 9
            Top = 64
            Width = 153
            Height = 21
            Color = clMoneyGreen
            DataField = 'VALOR_COMPRAS_ABERTAS'
            DataSource = cdsTotalComprasAbertas
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object dbLimiteDisponivel: TDBEdit
            Left = 9
            Top = 104
            Width = 153
            Height = 21
            Color = clMoneyGreen
            DataField = 'VALOR_LIMITE_DISPONIVEL'
            DataSource = cdsTotalComprasAbertas
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object pnlTitulos: TPanel
            Left = 168
            Top = 0
            Width = 660
            Height = 198
            Align = alRight
            Anchors = [akLeft, akTop, akRight, akBottom]
            BevelOuter = bvNone
            TabOrder = 4
            object dbgTitulos: TDBGrid
              Left = 0
              Top = 0
              Width = 660
              Height = 198
              Align = alClient
              DataSource = dtsTitulos
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = [fsBold]
              OnDrawColumnCell = dbgDadosDrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'VENDA'
                  Title.Caption = 'Venda'
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LANCAMENTO'
                  Title.Caption = 'Lan'#231'amento'
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DTEMISS'
                  Title.Caption = 'Emiss'#227'o'
                  Width = 75
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DTVENC'
                  Title.Caption = 'Vencimento'
                  Width = 75
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FORMA_PAGTO_DESC'
                  Title.Caption = 'Forma de Pagamento'
                  Width = 130
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALORREC'
                  Title.Caption = 'Valor (R$)'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR_PAGO'
                  Title.Caption = 'Pago (R$)'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALORSALDO'
                  Title.Caption = 'A Pagar (R$)'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NFE_SERIE'
                  Title.Caption = 'NF-e'
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SITUACAO'
                  Title.Caption = 'Situa'#231#227'o'
                  Visible = False
                end>
            end
          end
          object dbcBloqueio: TDBCheckBox
            Left = 9
            Top = 131
            Width = 153
            Height = 17
            Hint = 'O cliente encontra-se bloqueado por haver t'#237'tulos em atraso.'
            TabStop = False
            Caption = 'Cliente Bloqueado'
            DataField = 'BLOQUEADO'
            DataSource = DtSrcTabela
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 3
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
      end
    end
    object tbsConsultarCNPJ: TTabSheet
      Caption = 'Consultar CNPJ'
      ImageIndex = 12
      object BvlConsultar: TBevel
        Left = 377
        Top = 0
        Width = 4
        Height = 463
        Align = alLeft
        Shape = bsSpacer
        ExplicitHeight = 426
      end
      object pnlConsultarCNPJ: TPanel
        Left = 0
        Top = 0
        Width = 377
        Height = 463
        Align = alLeft
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object lblCNPJX: TLabel
          Left = 9
          Top = 172
          Width = 85
          Height = 16
          Caption = 'Digite o CNPJ:'
          FocusControl = edCNPJ
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lblCaptchaX: TLabel
          Left = 9
          Top = 309
          Width = 96
          Height = 16
          Caption = 'Digite o Captcha'
          FocusControl = edCaptcha
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object edCaptcha: TEdit
          Left = 9
          Top = 328
          Width = 232
          Height = 41
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyPress = edCaptchaKeyPress
        end
        object edCNPJ: TMaskEdit
          Left = 9
          Top = 191
          Width = 352
          Height = 41
          EditMask = '00.000.000/0000-00;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 18
          ParentFont = False
          TabOrder = 1
          Text = '  .   .   /    -  '
          OnKeyPress = edCNPJKeyPress
        end
        object pnlCaptcha: TPanel
          Left = 9
          Top = 11
          Width = 346
          Height = 127
          BevelOuter = bvLowered
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object ImgCaptcha: TImage
            Left = 1
            Top = 1
            Width = 344
            Height = 106
            Align = alClient
            Center = True
            Proportional = True
          end
          object LabAtualizarCaptcha: TLabel
            Left = 1
            Top = 107
            Width = 344
            Height = 19
            Cursor = crHandPoint
            Align = alBottom
            Alignment = taCenter
            AutoSize = False
            Caption = 'Atualizar Captcha'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = False
            OnClick = LabAtualizarCaptchaClick
          end
        end
        object ckRemoverEspacosDuplos: TCheckBox
          Left = 10
          Top = 150
          Width = 359
          Height = 17
          Caption = 'Remover espa'#231'os duplos dos dados retornados'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object btnConsultarCNPJ: TcxButton
          Left = 248
          Top = 327
          Width = 115
          Height = 41
          Caption = 'Consultar'
          TabOrder = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnConsultarCNPJClick
        end
      end
      object pnlRetornoCNPJ: TPanel
        Left = 381
        Top = 0
        Width = 455
        Height = 463
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object lblTipoX: TLabel
          Left = 8
          Top = 11
          Width = 97
          Height = 16
          Caption = 'Tipo de Empresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblRazaoSocialX: TLabel
          Left = 8
          Top = 59
          Width = 73
          Height = 16
          Caption = 'Raz'#227'o Social'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblAberturaX: TLabel
          Left = 112
          Top = 11
          Width = 80
          Height = 16
          Caption = 'Data Abertura'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblEnderecoX: TLabel
          Left = 176
          Top = 107
          Width = 58
          Height = 16
          Caption = 'Endere'#231'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblNumeroX: TLabel
          Left = 390
          Top = 107
          Width = 45
          Height = 16
          Caption = 'N'#250'mero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblComplementoX: TLabel
          Left = 8
          Top = 153
          Width = 79
          Height = 16
          Caption = 'Complemento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblBairroX: TLabel
          Left = 224
          Top = 153
          Width = 34
          Height = 16
          Caption = 'Bairro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblCidadeX: TLabel
          Left = 8
          Top = 201
          Width = 39
          Height = 16
          Caption = 'Cidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblUFX: TLabel
          Left = 289
          Top = 201
          Width = 15
          Height = 16
          Caption = 'UF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblCEPX: TLabel
          Left = 328
          Top = 201
          Width = 22
          Height = 16
          Caption = 'CEP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblSituacaoX: TLabel
          Left = 208
          Top = 11
          Width = 49
          Height = 16
          Caption = 'Situa'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblFantasiaX: TLabel
          Left = 8
          Top = 107
          Width = 48
          Height = 16
          Caption = 'Fantasia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 8
          Top = 249
          Width = 83
          Height = 16
          Caption = 'CNAE Principal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 10
          Top = 298
          Width = 115
          Height = 16
          Caption = 'CNAE Secund'#225'rio(s)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object EditTipo: TEdit
          Left = 8
          Top = 29
          Width = 98
          Height = 24
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object EditRazaoSocial: TEdit
          Left = 8
          Top = 77
          Width = 433
          Height = 24
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object EditAbertura: TEdit
          Left = 112
          Top = 29
          Width = 88
          Height = 24
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object EditEndereco: TEdit
          Left = 176
          Top = 125
          Width = 209
          Height = 24
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object EditNumero: TEdit
          Left = 390
          Top = 125
          Width = 51
          Height = 24
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object EditComplemento: TEdit
          Left = 8
          Top = 171
          Width = 209
          Height = 24
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object EditBairro: TEdit
          Left = 224
          Top = 171
          Width = 217
          Height = 24
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object EditCidade: TEdit
          Left = 8
          Top = 219
          Width = 273
          Height = 24
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object EditUF: TEdit
          Left = 289
          Top = 219
          Width = 33
          Height = 24
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object EditCEP: TEdit
          Left = 328
          Top = 219
          Width = 114
          Height = 24
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object EditSituacao: TEdit
          Left = 208
          Top = 29
          Width = 160
          Height = 24
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object EditFantasia: TEdit
          Left = 8
          Top = 125
          Width = 161
          Height = 24
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object btnVoltar: TcxButton
          Left = 8
          Top = 376
          Width = 115
          Height = 41
          Caption = '&Voltar ao Cadastro'
          TabOrder = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnVoltarClick
        end
        object btnRecuperarCNPJ: TcxButton
          Left = 328
          Top = 376
          Width = 115
          Height = 41
          Caption = '&Recuperar Dados'
          Enabled = False
          TabOrder = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnRecuperarCNPJClick
        end
        object EditCNAE1: TEdit
          Left = 8
          Top = 268
          Width = 433
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object ListCNAE2: TListBox
          Left = 8
          Top = 317
          Width = 433
          Height = 52
          TabOrder = 13
        end
      end
    end
    object tbsConsultarCPF: TTabSheet
      Caption = 'Consultar CPF'
      ImageIndex = 12
      object pnlConsultarCPF: TPanel
        Left = 0
        Top = 0
        Width = 377
        Height = 463
        Align = alLeft
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object lblCPFX: TLabel
          Left = 9
          Top = 172
          Width = 78
          Height = 16
          Caption = 'Digite o CPF:'
          FocusControl = edCPF
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lblDataNasc: TLabel
          Left = 9
          Top = 237
          Width = 122
          Height = 16
          Caption = 'Data de Nascimento:'
          FocusControl = edDataNasc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object edCPF: TMaskEdit
          Left = 9
          Top = 191
          Width = 350
          Height = 41
          EditMask = '000.000.000-00;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 14
          ParentFont = False
          TabOrder = 0
          Text = '   .   .   -  '
          OnKeyPress = edCNPJKeyPress
        end
        object btnConsultarCPF: TcxButton
          Left = 248
          Top = 327
          Width = 115
          Height = 41
          Caption = 'Consultar'
          TabOrder = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnConsultarCPFClick
        end
        object edDataNasc: TMaskEdit
          Left = 9
          Top = 256
          Width = 216
          Height = 41
          EditMask = '!99/99/0000;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 1
          Text = '  /  /    '
          OnKeyPress = edCNPJKeyPress
        end
      end
    end
    object tbsEstoqueSatelite: TTabSheet
      Caption = 'Estoque &Sat'#233'lite'
      ImageIndex = 30
      object Bevel11: TBevel
        Left = 0
        Top = 62
        Width = 836
        Height = 4
        Align = alTop
        Shape = bsSpacer
      end
      object Bevel12: TBevel
        Left = 0
        Top = 428
        Width = 836
        Height = 4
        Align = alBottom
        Shape = bsSpacer
        Visible = False
        ExplicitTop = 391
      end
      object pnlPesquisarEstoqueSatelite: TPanel
        Left = 0
        Top = 0
        Width = 836
        Height = 62
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 0
        object lblInformeSatelite: TLabel
          Left = 4
          Top = 4
          Width = 269
          Height = 54
          Align = alLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 
            '* Este estoque de produtos '#233' alimentado de forma autom'#225'tica a pa' +
            'rtir de vendas finalizadas que n'#227'o tiveram seus produtos entregu' +
            'es na sua totalizada, pois o cliente trabalha com recebimento fr' +
            'acionado.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object GroupBox2: TGroupBox
          Left = 275
          Top = 4
          Width = 557
          Height = 54
          Align = alRight
          Caption = 'Pesquisar    '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          DesignSize = (
            557
            54)
          object btnPesquisarEstoqueSatelite: TSpeedButton
            Left = 512
            Top = 16
            Width = 29
            Height = 27
            Hint = 'Clique aqui para executar a pesquisa ...'
            Anchors = [akTop, akRight, akBottom]
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              0400000000000001000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
              300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
              330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
              333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
              339977FF777777773377000BFB03333333337773FF733333333F333000333333
              3300333777333333337733333333333333003333333333333377333333333333
              333333333333333333FF33333333333330003333333333333777333333333333
              3000333333333333377733333333333333333333333333333333}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btnPesquisarEstoqueSateliteClick
          end
          object edFiltrarEstoqueSatelite: TEdit
            Left = 224
            Top = 21
            Width = 283
            Height = 21
            Hint = 'Digite aqui a palavra-chave da pesquisa'
            Anchors = [akLeft, akTop, akRight]
            CharCase = ecUpperCase
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnKeyDown = edFiltrarEstoqueSateliteKeyDown
          end
          object edFiltrarTipoEstoqueSatelite: TComboBox
            Left = 16
            Top = 21
            Width = 209
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 1
            Text = 'por Produto (C'#243'digo / Descri'#231#227'o)'
            Items.Strings = (
              'por Produto (C'#243'digo / Descri'#231#227'o)'
              'por Refer'#234'ncia'
              'por Fabricante'
              'por Grupo')
          end
          object chkProdutoComEstoque: TCheckBox
            Left = 68
            Top = -1
            Width = 194
            Height = 17
            TabStop = False
            Caption = 'A&penas produtos com estoque'
            Checked = True
            State = cbChecked
            TabOrder = 0
          end
        end
      end
      object dbgEstoqueSatelite: TDBGrid
        Left = 0
        Top = 66
        Width = 836
        Height = 362
        Align = alClient
        DataSource = DtsEstoqueSatelite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = dbgDadosDrawColumnCell
        OnKeyDown = dbgDadosKeyDown
        OnKeyPress = dbgEstoqueSateliteKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_PRODUTO'
            Title.Caption = 'C'#243'digo '
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRI'
            Title.Caption = 'Descri'#231#227'o '
            Width = 280
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REFERENCIA'
            Title.Caption = 'Refer'#234'ncia '
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Caption = 'Estoque '
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNP_SIGLA'
            Title.Alignment = taCenter
            Title.Caption = 'Und. '
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_MEDIO'
            Title.Caption = 'Valor M'#233'dio (R$) '
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_FABRICANTE'
            Title.Caption = 'Fabricante '
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO_GRUPO'
            Title.Caption = 'Grupo '
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Title.Caption = 'Usu'#225'rio '
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_VENDA_ULT'
            Title.Caption = 'Venda ('#218'lt.) '
            Width = 80
            Visible = True
          end>
      end
      object pnlControleRequisicao: TPanel
        Left = 0
        Top = 432
        Width = 836
        Height = 31
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        Visible = False
        object BtnRequisicoes: TcxButton
          Left = 1
          Top = 0
          Width = 223
          Height = 31
          Caption = 'Controle de Requisi'#231#245'es (F5)'
          OptionsImage.Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            1800000000000006000000000000000000000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFB0A0906048306048306048306048306048306048306048
            30604830604830705040FF00FFFF00FFFF00FFFF00FFFF00FF9C9C9C43434343
            43434343434343434343434343434343434343434343434E4E4EFF00FFFF00FF
            FF00FFFF00FFFF00FFC0A8A0FFF0F0E0E0E0E0E0D0905840F0F0E0E0C8C0E0C8
            B0E0C0B0E0B8A0705040FF00FFFF00FFFF00FFFF00FFFF00FFA8A8A8F1F1F1E0
            E0E0DBDBDB565656EBEBEBC8C8C8C3C3C3BEBEBEB4B4B44E4E4E708890608090
            6078806088906090A0C0B0A0FFFFFFFFF8F0E0D8D0A06040FFF0F0FFE8E0FFE8
            D0F0E0D0D0B8A0705040888888818181787878868686909090ACACACFFFFFFF6
            F6F6D6D6D65C5C5CF1F1F1E7E7E7E3E3E3DCDCDCB3B3B34E4E4E70889090A0B0
            70B0D00090D030B0E0D0B8A0FFFFFFB08870E0E0E0A07050FFF8F0C09080C088
            70B07860D0B8A0705040888888A3A3A3B3B3B3949494B1B1B1B3B3B3FFFFFF84
            8484E0E0E06B6B6BF6F6F6909090868686767676B3B3B34E4E4E80889080C0D0
            90A8B080E0FF50B8E0D0B8A0FFFFFFFFFFFFE0E0E0A07860FFF8F0FFF0F0FFF0
            E0FFE8E0D0B8A0705040898989BEBEBEA8A8A8DFDFDFB9B9B9B3B3B3FFFFFFFF
            FFFFE0E0E0747474F6F6F6F1F1F1ECECECE7E7E7B3B3B34E4E4E8090A080D0F0
            90A8B090C0D060C0E0D0B8A0FFFFFFB09890E0E0E0B08060FFF8FFC0A090C098
            80C08870D0B8B0705040939393D1D1D1A8A8A8C0C0C0C0C0C0B3B3B3FFFFFF98
            9898E0E0E07B7B7BFAFAFA9E9E9E949494868686B8B8B84E4E4E8090A080D8F0
            80C8E090A8B060C0E0D0B8A0FFFFFFFFFFFFFFFFFFB08060FFFFFFFFF8FFFFF8
            F0FFF8F0FFF0F0705040939393D6D6D6C8C8C8A8A8A8C0C0C0B3B3B3FFFFFFFF
            FFFFFFFFFF7B7B7BFFFFFFFAFAFAF6F6F6F6F6F6F1F1F14E4E4E8098A090E0F0
            90E0FF90A8B090C0D0E0A080F0A890F0A080F09870E09060E08850E07840E078
            40E07040E07040D06030989898DCDCDCE1E1E1A8A8A8C0C0C09C9C9CA8A8A89E
            9E9E9494948989898080807171717171716C6C6C6C6C6C5C5C5C8098A090E0F0
            A0E8FF80C8E080C0D0D09870FFC0A0FFB8A0FFB890FFB090FFA880FFA880F0A0
            70F09870F09870D07040989898DCDCDCE7E7E7C8C8C8BEBEBE919191BCBCBCB7
            B7B7B3B3B3AEAEAEA4A4A4A4A4A49999999494949494946B6B6B90A0A0A0E8F0
            A0E8FFA0E8FF90C8D0C09070D09070D09070E09870D09070E09870E09060E088
            50E08050E07840E070409E9E9EE3E3E3E7E7E7E7E7E7C4C4C48B8B8B8C8C8C8C
            8C8C9393938C8C8C9393938989898080807B7B7B7171716C6C6C90A0B0A0E8F0
            A0F0FFA0E8FFA0E8FF80D0F070C8F070C8F070C8F070C8F070C8F070C8F090B0
            C0FF00FFFF00FFFF00FFA3A3A3E3E3E3ECECECE7E7E7E7E7E7D1D1D1CBCBCBCB
            CBCBCBCBCBCBCBCBCBCBCBCBCBCBB1B1B1FF00FFFF00FFFF00FF90A0B0A0F0F0
            B0F0F0A0F0FFA0E8FFA0E8FF70D8FF90A0A08098A08098A08090A08090907088
            90FF00FFFF00FFFF00FFA3A3A3E8E8E8E9E9E9ECECECE7E7E7E7E7E7D9D9D99E
            9E9E9898989898989393938E8E8E888888FF00FFFF00FFFF00FF90A8B0A0D0E0
            B0F0F0B0F0F0A0F0FFA0E8FF90A0B0B1C3C7FF00FFFF00FFFF00FFFF00FFFF00
            FF906850906850906850A8A8A8D0D0D0E9E9E9E9E9E9ECECECE7E7E7A3A3A3C2
            C2C2FF00FFFF00FFFF00FFFF00FFFF00FF646464646464646464C8CDD090A8B0
            90A8B090A8B090A8B090A8B0B4BFC4FF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFCDBEBC906850906850CDCDCDA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8BFBFBFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFBEBEBE646464646464FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF907860C3B2A9FF00FFDED8
            D8A09080CDC3BC907860FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FF737373B1B1B1FF00FFD8D8D88C8C8CC1C1C1737373FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD2CDC7A09080A08880B098
            80C1B7AFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFCBCBCB8C8C8C888888939393B5B5B5FF00FFFF00FF}
          OptionsImage.NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
    end
  end
  inherited tlbBotoes: TPanel
    Top = 496
    Width = 844
    ExplicitTop = 496
    ExplicitWidth = 844
    inherited bvlTool3: TBevel
      Left = 761
      ExplicitLeft = 761
    end
    inherited bvlTool4: TBevel
      Left = 840
      ExplicitLeft = 840
    end
    object Bevel10: TBevel [5]
      Left = 813
      Top = 2
      Width = 4
      Height = 31
      Shape = bsSpacer
    end
    inherited btbtnFechar: TcxButton
      Left = 765
      TabOrder = 8
      ExplicitLeft = 765
    end
    inherited btbtnSelecionar: TcxButton
      Left = 641
      TabOrder = 7
      ExplicitLeft = 641
    end
    object BtBtnProcesso: TcxButton
      Tag = 11
      Left = 521
      Top = 0
      Width = 120
      Height = 35
      Hint = 'Bloqueio e Desbloqueio de Cliente'
      Align = alRight
      Caption = '&Bloqueio / Desbloq.'
      Enabled = False
      OptionsImage.Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        180000000000000600000000000000000000000000000000000000FF0000FF00
        00FF0066666666666666666666666666666666666666666666666600FF0000FF
        0000FF0000FF0000FF00C0C0C0C0C0C0C0C0C080808080808080808080808080
        8080808080808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000FF0000FF00
        00FF00666666DFFBFDDFFBFDDFFBFDDFFBFDDFFBFDDFFBFD66666600FF0000FF
        0000FF0000FF0000FF00C0C0C0C0C0C0C0C0C0808080DBDBDBDBDBDBDBDBDBDB
        DBDBDBDBDBDBDBDB808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000FF0000FF00
        00FF00666666DFFBFD838383838383838383838383DFFBFD66666600FF0000FF
        0000FF0000FF0000FF00C0C0C0C0C0C0C0C0C0808080DBDBDB83838383838383
        8383838383DBDBDB808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000FF0000FF00
        00FF006666660000F70000F70000F70000F70000F70000F766666600FF0000FF
        0000FF0000FF0000FF00C0C0C0C0C0C0C0C0C080808080808080808080808080
        8080808080808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000FF0000FF00
        00FF006666660000F7FFFFFFFFFFFFFFFFFFFFFFFF0000F766666600FF006666
        66666666666666666666C0C0C0C0C0C0C0C0C0808080808080FFFFFFFFFFFFFF
        FFFFFFFFFF808080808080C0C0C080808080808080808080808000FF0000FF00
        00FF006666660000F70000F70000F70000F70000F70000F766666600FF0000FF
        0000FF0000FF0000FF00C0C0C0C0C0C0C0C0C080808080808080808080808080
        8080808080808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000FF0000FF00
        00FF00666666DFFBFD838383838383DFFBFDDFFBFDDFFBFD66666600FF0000FF
        004D4D4D4D4D4D00FF00C0C0C0C0C0C0C0C0C0808080DBDBDB838383838383DB
        DBDBDBDBDBDBDBDB808080C0C0C0C0C0C0808080808080C0C0C000FF0000FF00
        00FF00666666DFFBFDDFFBFDDFFBFDDFFBFD66666666666666666600FF004D4D
        4D4D4D4D4D4D4D4D4D4DC0C0C0C0C0C0C0C0C0808080DBDBDBDBDBDBDBDBDBDB
        DBDB808080808080808080C0C0C080808080808080808080808000FF0000FF00
        00FF00666666DFFBFDDFFBFDDFFBFDDFFBFD66666666666600FF0000FF0000FF
        004D4D4D4D4D4D00FF00C0C0C0C0C0C0C0C0C0808080DBDBDBDBDBDBDBDBDBDB
        DBDB808080808080C0C0C0C0C0C0C0C0C0808080808080C0C0C000FF0000FF00
        00FF0066666666666666666666666666666666666600FF0000FF0000FF0000FF
        004D4D4D4D4D4D00FF00C0C0C0C0C0C0C0C0C080808080808080808080808080
        8080808080C0C0C0C0C0C0C0C0C0C0C0C0808080808080C0C0C000FF00830000
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        004D4D4D4D4D4D00FF00C0C0C0808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080808080C0C0C000FF00830000
        83000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF00C0C0C0808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000FF00830000
        83000083000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        004D4D4D4D4D4D00FF00C0C0C0808080808080808080C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080808080C0C0C000FF00830000
        83000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF00C0C0C0808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000FF00830000
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        004D4D4D4D4D4D00FF00C0C0C0808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080808080C0C0C000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
      OptionsImage.NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      TabStop = False
      OnClick = BtBtnProcessoClick
    end
  end
  inherited IbDtstTabela: TIBDataSet
    SelectSQL.Strings = (
      'Select'
      '    cl.Codigo'
      '  , cl.Pessoa_fisica'
      '  , cl.Cnpj'
      '  , cl.Tipo'
      '  , cl.Nome'
      '  , cl.NomeFant'
      '  , cl.Inscest'
      '  , cl.Inscmun'
      '  , cl.Ender'
      '  , cl.Complemento'
      '  , cl.Numero_end'
      '  , cl.Bairro'
      '  , cl.Cep'
      '  , cl.Cidade'
      '  , cl.Uf'
      '  , cl.Fone'
      '  , cl.FoneCel'
      '  , cl.FoneComerc'
      '  , cl.Tlg_tipo'
      '  , cl.Log_cod'
      '  , cl.Bai_cod'
      '  , cl.Cid_cod'
      '  , cl.Est_cod'
      '  , cl.Email'
      '  , cl.Site'
      '  , cl.Pais_id'
      '  , cl.Valor_limite_compra'
      '  , cl.Vendedor_cod'
      '  , coalesce(cl.DtCad, current_date) as DtCad'
      '  , cl.Bloqueado'
      '  , cl.Bloqueado_data'
      '  , cl.Bloqueado_motivo'
      '  , cl.Bloqueado_usuario'
      '  , cl.Bloqueado_automatico'
      '  , cl.DesBloqueado_data'
      '  , cl.Usuario'
      '  , cl.emitir_nfe_devolucao'
      '  , cl.custo_oper_percentual'
      '  , cl.custo_oper_frete'
      '  , cl.custo_oper_outros'
      '  , cl.entrega_fracionada_venda'
      '  , cl.banco'
      '  , cl.agencia'
      '  , cl.cc'
      '  , cl.praca'
      '  , cl.banco_2'
      '  , cl.agencia_2'
      '  , cl.cc_2'
      '  , cl.praca_2'
      '  , cl.banco_3'
      '  , cl.agencia_3'
      '  , cl.cc_3'
      '  , cl.praca_3'
      '  , cl.observacao'
      '  , cl.ativo'
      
        '  , coalesce( cast(coalesce(coalesce(t.Tlg_sigla, t.Tlg_descrica' +
        'o) || '#39' '#39', '#39#39') || l.Log_nome as varchar(250)), cl.Ender ) as Log' +
        'radouro'
      '  , coalesce(c.Cid_nome, cl.Cidade) as Cid_nome'
      '  , coalesce(u.Est_nome, cl.Uf) as Est_nome'
      '  , p.Pais_nome'
      'from TBCLIENTE cl'
      '  left join TBTIPO_LOGRADOURO t on (t.Tlg_cod = cl.Tlg_tipo)'
      '  left join TBLOGRADOURO l on (l.Log_cod = cl.Log_cod)'
      '  left join TBCIDADE c on (c.Cid_cod = cl.Cid_cod)'
      '  left join TBESTADO u on (u.Est_cod = cl.Est_cod)'
      '  left join TBPAIS p on (p.Pais_id = cl.Pais_id)')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_CLIENTE_ID'
  end
  inherited DtSrcTabela: TDataSource
    DataSet = fdQryTabela
    OnDataChange = DtSrcTabelaDataChange
  end
  inherited IbUpdTabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  TIPO,'
      '  PESSOA_FISICA,'
      '  CNPJ,'
      '  NOME,'
      '  NOMEFANT,'
      '  INSCEST,'
      '  INSCMUN,'
      '  ENDER,'
      '  COMPLEMENTO,'
      '  BAIRRO,'
      '  CEP,'
      '  CIDADE,'
      '  UF,'
      '  FONE,'
      '  FONECEL,'
      '  FONECOMERC,'
      '  EMAIL,'
      '  SITE,'
      '  TLG_TIPO,'
      '  LOG_COD,'
      '  BAI_COD,'
      '  CID_COD,'
      '  EST_COD,'
      '  NUMERO_END,'
      '  PAIS_ID,'
      '  VALOR_LIMITE_COMPRA,'
      '  BLOQUEADO,'
      '  BLOQUEADO_DATA,'
      '  BLOQUEADO_MOTIVO,'
      '  BLOQUEADO_USUARIO,'
      '  BLOQUEADO_AUTOMATICO,'
      '  DESBLOQUEADO_DATA,'
      '  VENDEDOR_COD,'
      '  USUARIO,'
      '  EMITIR_NFE_DEVOLUCAO,'
      '  CUSTO_OPER_PERCENTUAL,'
      '  CUSTO_OPER_FRETE,'
      '  CUSTO_OPER_OUTROS,'
      '  ENTREGA_FRACIONADA_VENDA,'
      '  BANCO,'
      '  AGENCIA,'
      '  CC,'
      '  PRACA,'
      '  BANCO_2,'
      '  AGENCIA_2,'
      '  CC_2,'
      '  PRACA_2,'
      '  BANCO_3,'
      '  AGENCIA_3,'
      '  CC_3,'
      '  PRACA_3,'
      '  OBSERVACAO,'
      '  DTCAD,'
      '  ATIVO'
      'from TBCLIENTE '
      'where'
      '  CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update TBCLIENTE'
      'set'
      '  AGENCIA = :AGENCIA,'
      '  AGENCIA_2 = :AGENCIA_2,'
      '  AGENCIA_3 = :AGENCIA_3,'
      '  ATIVO = :ATIVO,'
      '  BAI_COD = :BAI_COD,'
      '  BAIRRO = :BAIRRO,'
      '  BANCO = :BANCO,'
      '  BANCO_2 = :BANCO_2,'
      '  BANCO_3 = :BANCO_3,'
      '  BLOQUEADO = :BLOQUEADO,'
      '  BLOQUEADO_AUTOMATICO = :BLOQUEADO_AUTOMATICO,'
      '  BLOQUEADO_DATA = :BLOQUEADO_DATA,'
      '  BLOQUEADO_MOTIVO = :BLOQUEADO_MOTIVO,'
      '  BLOQUEADO_USUARIO = :BLOQUEADO_USUARIO,'
      '  CC = :CC,'
      '  CC_2 = :CC_2,'
      '  CC_3 = :CC_3,'
      '  CEP = :CEP,'
      '  CID_COD = :CID_COD,'
      '  CIDADE = :CIDADE,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  CUSTO_OPER_FRETE = :CUSTO_OPER_FRETE,'
      '  CUSTO_OPER_OUTROS = :CUSTO_OPER_OUTROS,'
      '  CUSTO_OPER_PERCENTUAL = :CUSTO_OPER_PERCENTUAL,'
      '  DESBLOQUEADO_DATA = :DESBLOQUEADO_DATA,'
      '  DTCAD = :DTCAD,'
      '  EMAIL = :EMAIL,'
      '  EMITIR_NFE_DEVOLUCAO = :EMITIR_NFE_DEVOLUCAO,'
      '  ENDER = :ENDER,'
      '  ENTREGA_FRACIONADA_VENDA = :ENTREGA_FRACIONADA_VENDA,'
      '  EST_COD = :EST_COD,'
      '  FONE = :FONE,'
      '  FONECEL = :FONECEL,'
      '  FONECOMERC = :FONECOMERC,'
      '  INSCEST = :INSCEST,'
      '  INSCMUN = :INSCMUN,'
      '  LOG_COD = :LOG_COD,'
      '  NOME = :NOME,'
      '  NOMEFANT = :NOMEFANT,'
      '  NUMERO_END = :NUMERO_END,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  PAIS_ID = :PAIS_ID,'
      '  PESSOA_FISICA = :PESSOA_FISICA,'
      '  PRACA = :PRACA,'
      '  PRACA_2 = :PRACA_2,'
      '  PRACA_3 = :PRACA_3,'
      '  SITE = :SITE,'
      '  TIPO = :TIPO,'
      '  TLG_TIPO = :TLG_TIPO,'
      '  UF = :UF,'
      '  USUARIO = :USUARIO,'
      '  VALOR_LIMITE_COMPRA = :VALOR_LIMITE_COMPRA,'
      '  VENDEDOR_COD = :VENDEDOR_COD'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into TBCLIENTE'
      
        '  (AGENCIA, AGENCIA_2, AGENCIA_3, ATIVO, BAI_COD, BAIRRO, BANCO,' +
        ' BANCO_2, '
      
        '   BANCO_3, BLOQUEADO, BLOQUEADO_AUTOMATICO, BLOQUEADO_DATA, BLO' +
        'QUEADO_MOTIVO, '
      
        '   BLOQUEADO_USUARIO, CC, CC_2, CC_3, CEP, CID_COD, CIDADE, CNPJ' +
        ', CODIGO, '
      
        '   COMPLEMENTO, CUSTO_OPER_FRETE, CUSTO_OPER_OUTROS, CUSTO_OPER_' +
        'PERCENTUAL, '
      
        '   DESBLOQUEADO_DATA, DTCAD, EMAIL, EMITIR_NFE_DEVOLUCAO, ENDER,' +
        ' ENTREGA_FRACIONADA_VENDA, '
      
        '   EST_COD, FONE, FONECEL, FONECOMERC, INSCEST, INSCMUN, LOG_COD' +
        ', NOME, '
      
        '   NOMEFANT, NUMERO_END, OBSERVACAO, PAIS_ID, PESSOA_FISICA, PRA' +
        'CA, PRACA_2, '
      
        '   PRACA_3, SITE, TIPO, TLG_TIPO, UF, USUARIO, VALOR_LIMITE_COMP' +
        'RA, VENDEDOR_COD)'
      'values'
      
        '  (:AGENCIA, :AGENCIA_2, :AGENCIA_3, :ATIVO, :BAI_COD, :BAIRRO, ' +
        ':BANCO, '
      
        '   :BANCO_2, :BANCO_3, :BLOQUEADO, :BLOQUEADO_AUTOMATICO, :BLOQU' +
        'EADO_DATA, '
      
        '   :BLOQUEADO_MOTIVO, :BLOQUEADO_USUARIO, :CC, :CC_2, :CC_3, :CE' +
        'P, :CID_COD, '
      
        '   :CIDADE, :CNPJ, :CODIGO, :COMPLEMENTO, :CUSTO_OPER_FRETE, :CU' +
        'STO_OPER_OUTROS, '
      
        '   :CUSTO_OPER_PERCENTUAL, :DESBLOQUEADO_DATA, :DTCAD, :EMAIL, :' +
        'EMITIR_NFE_DEVOLUCAO, '
      
        '   :ENDER, :ENTREGA_FRACIONADA_VENDA, :EST_COD, :FONE, :FONECEL,' +
        ' :FONECOMERC, '
      
        '   :INSCEST, :INSCMUN, :LOG_COD, :NOME, :NOMEFANT, :NUMERO_END, ' +
        ':OBSERVACAO, '
      
        '   :PAIS_ID, :PESSOA_FISICA, :PRACA, :PRACA_2, :PRACA_3, :SITE, ' +
        ':TIPO, '
      
        '   :TLG_TIPO, :UF, :USUARIO, :VALOR_LIMITE_COMPRA, :VENDEDOR_COD' +
        ')')
    DeleteSQL.Strings = (
      'delete from TBCLIENTE'
      'where'
      '  CODIGO = :OLD_CODIGO')
  end
  inherited ImgList: TImageList
    Left = 552
    Bitmap = {
      494C01012B002C00A40010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000B0000000010020000000000000B0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6D9D8008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000A6A6A9000000000000000000000000008F8F8E008F8F
      8E008F8F8E008F8F8E008F8F8E008F8F8E008F8F8E008F8F8E008F8F8E008F8F
      8E008F8F8E008F8F8E008F8F8E000000000000000000000000008F8F8E008F8F
      8E008F8F8E008F8F8E008F8F8E008F8F8E008F8F8E008F8F8E008F8F8E008F8F
      8E008F8F8E008F8F8E008F8F8E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000808080000000000000000000000000008F8F8E00F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F4008F8F8E000000000000000000000000008F8F8E00F4F4
      F400F4F4F400F4F4F400F5F5F500F9F9F900F8F8F800F5F5F500F4F4F400F4F4
      F400F4F4F400F4F4F4008F8F8E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000080808000808080000000000000000000000000000000
      00000000000000000000808080000000000000000000000000008F8F8E00F4F4
      F400CCCBCA00D5D4D400DCDBDB00E1E1E000E7E7E600EBEBEA00ECECEB00ECEB
      EB00EAE9E900F4F4F4008F8F8E000000000000000000000000008F8F8E00F4F4
      F400CCCBCA00DBDADA00E9E2DF00BA998C00BD9D9000F6F3F200EDEDEC00ECEB
      EB00EAE9E900F4F4F4008F8F8E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000008080800080808000808080008080800000000000000000000000
      00000000000000000000808080000000000000000000000000008F8F8E00F4F4
      F400C6C4C200E9E9E900EDEDED00F0F0F000F4F4F400F6F6F600F6F6F600F6F6
      F600E6E6E600F4F4F4008F8F8E000000000000000000000000008F8F8E00F4F4
      F400CAC8C600F0ECEA00BB998B00975F4A0098614C00D1B9B000F9F9F900F6F6
      F600E6E6E600F4F4F4008F8F8E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      00008080800080808000FFFFFF00FFFFFF008080800080808000D0C0C0000000
      00000000000000000000808080000000000000000000000000008F8F8E00F4F4
      F400C2BFBC00E5E4E300E9E9E900EDEDED00F2F2F200F4F4F400F5F5F500F4F4
      F400E2E2E100F4F4F4008F8F8E000000000000000000000000008F8F8E00F4F4
      F400D1CFCD00E9E1DE00955D4800965F490097604B00A4736100FAF9F800F4F4
      F400E2E2E100F4F4F4008F8F8E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      000080808000FFFFFF00FFFFFF0000000000FFFFFF0080808000808080000000
      00000000000000000000808080000000000000000000000000008F8F8E00F4F4
      F400BFBBB800E1DFDD00E5E5E400EAEAEA00EFEFEF00F2F2F200F2F2F200F2F2
      F200DEDDDC00F4F4F4008F8F8E000000000000000000000000008F8F8E00F4F4
      F400E1E0DE00AA7F6E00945C4700E2D4CF00A778670097604B00D5BFB700F6F6
      F600DEDDDC00F4F4F4008F8F8E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      000000000000FFFFFF00000000000000000000000000FFFFFF00808080008080
      80000000000000000000808080000000000000000000000000008F8F8E00F4F4
      F400BCB7B200DCD8D500DFDCDA00E3E1E000E8E8E800ECECEC00EDEDED00EDED
      ED00D6D5D400F4F4F4008F8F8E000000000000000000000000008F8F8E00F4F4
      F400CDC9C500DDCFC900C8AEA300EEEEED00D5C1BA00965E4900A5766400F8F8
      F800D6D5D500F4F4F4008F8F8E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000FFFFFF008080
      80008080800000000000808080000000000000000000000000008F8F8E00F4F4
      F400B9B3AE00D7D1CD00D9D4D000DBD7D400DFDDDB00E3E2E100E6E6E500E8E8
      E800CDCDCC00F4F4F4008F8F8E000000000000000000000000008F8F8E00F4F4
      F400B9B3AE00DDD9D500E5E2DF00DCD8D500F4F3F200A1715E00945C4700D6C3
      BC00DCDCDB00F4F4F4008F8F8E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF008080800080808000808080000000000000000000000000008F8F8E00F4F4
      F400B9B3AE00D5CFCB00D5CFCB00D6D1CD00DAD5D200DEDBD800E1DFDD00E4E3
      E200C8C7C600F4F4F4008F8F8E000000000000000000000000008F8F8E00F4F4
      F400B9B3AE00D5CFCB00D5CFCB00D6D1CD00E6E2E000CFB8AF00925A4500A577
      6500E8E7E700F4F4F4008F8F8E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000008080800080808000808080008080800080808000808080008080
      8000FFFFFF0080808000808080000000000000000000000000008F8F8E00F4F4
      F400B9B3AE00D5CFCB00D5CFCB00D5CFCB00D5CFCB00D8D3D000DCD8D500DFDD
      DB00C5C3C100F4F4F4008F8F8E000000000000000000000000008F8F8E00F4F4
      F400B9B3AE00D5CFCB00D5CFCB00D5CFCB00D6D0CC00F1EEED009D6A5700925A
      4400D0BFB900F6F6F6008F8F8E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000008080800000000000000000000000000000000000808080008080
      80000000000000000000808080000000000000000000000000008F8F8E00F4F4
      F400B9B3AE00B9B3AE00B9B3AE00B9B3AE00B9B3AE00B9B3AE00BAB4AF00BDB9
      B400C1BEBB00F4F4F4008F8F8E000000000000000000000000008F8F8E00F4F4
      F400B9B3AE00B9B3AE00B9B3AE00B9B3AE00B9B3AE00D0CCC900C0A79D00AB86
      7700E4DFDC00F5F5F5008F8F8E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000080808000808080008080800000000000808080000000
      00000000000000000000808080000000000000000000000000008F8F8E00F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F4008F8F8E000000000000000000000000008F8F8E00F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F8F8F800F9F9
      F900F6F6F600F4F4F4008F8F8E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E2E5E1008080
      8000808080008080800080808000000000000000000000000000808080008080
      80008080800080808000D6DAD6000000000000000000000000008F8F8E008F8F
      8E008F8F8E008F8F8E008F8F8E008F8F8E008F8F8E008F8F8E008F8F8E008F8F
      8E008F8F8E008F8F8E008F8F8E000000000000000000000000008F8F8E008F8F
      8E008F8F8E008F8F8E008F8F8E008F8F8E008F8F8E008F8F8E008F8F8E008F8F
      8E008F8F8E008F8F8E008F8F8E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCE3E100808080008080800080808000D8DDD9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006666
      6600666666006666660066666600666666006666660066666600666666000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A8A8A800626262006262
      6200626262006262620062626200626262006262620062626200626262006262
      62006262620062626200A8A8A800000000000000000000000000000000006666
      6600DFFBFD00DFFBFD00DFFBFD00DFFBFD00DFFBFD00DFFBFD00666666000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00808080000000
      0000000000000000000000000000000000000000000000000000D6D9D8006851
      3A00605040006048300070504000706050007050400060483000604830006048
      30006048300060483000A6A6A900000000000000000062626200808080000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800062626200000000000000000000000000000000006666
      6600DFFBFD0083838300838383008383830083838300DFFBFD00666666000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000DBDBDB0083838300838383008383830083838300DBDBDB00808080000000
      0000000000000000000000000000000000000000000000000000C0A8A000F0F0
      F000E0D8D000E0D0C000E0C8C0009090B000D0C0B000E0B8A000D0B0A000D0B0
      A000D0A89000D0A0900060483000000000000000000062626200808080000000
      0000000000008080800000000000000000008080800000000000808080000000
      0000808080008080800062626200000000000000000000000000000000006666
      66000000F7000000F7000000F7000000F7000000F7000000F700666666000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000C0A8A000FFF0
      F000F0F0F000F0E8E0003050C0001038B0007078C000E0D0D000F0D0C000E0D0
      C000E0C8B000D0A8900060483000000000000000000062626200808080000000
      0000000000000000000000000000808080000000000080808000000000008080
      8000000000008080800062626200000000000000000000000000000000006666
      66000000F700FFFFFF00FFFFFF00FFFFFF00FFFFFF000000F700666666000000
      0000666666006666660066666600666666000000000000000000000000008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000808080000000
      0000808080008080800080808000808080000000000000000000C0A8A000FFF0
      F000D0D0E0003050C0003058F0002048E0001038B000A098C000F0D0C000F0D0
      C000E0C8B000D0A8900060483000000000000000000062626200808080000000
      0000000000000000000000000000000000008080800000000000808080000000
      0000808080008080800062626200000000000000000000000000000000006666
      66000000F7000000F7000000F7000000F7000000F7000000F700666666000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000C0B0A000FFF8
      F0002040C0003058F0006080FF005078F0004060F0002040B000D0C0C000F0D8
      D000E0C8C000D0B0A00060483000000000000000000062626200000000008080
      8000808080008080800080808000808080000000000000000000000000008080
      8000000000008080800062626200000000000000000000000000000000006666
      6600DFFBFD008383830083838300DFFBFD00DFFBFD00DFFBFD00666666000000
      0000000000004D4D4D004D4D4D00000000000000000000000000000000008080
      8000DBDBDB008383830083838300DBDBDB00DBDBDB00DBDBDB00808080000000
      0000000000008080800080808000000000000000000000000000C0B0A000FFF8
      F00080A0FF008098FF008090F000D0D0E0008098F0004060E0004058B000F0D8
      D000F0D8D000D0B8A00060504000000000000000000062626200000000008080
      8000808080000000000000000000808080008080800080808000000000000000
      0000000000000000000062626200000000000000000000000000000000006666
      6600DFFBFD00DFFBFD00DFFBFD00DFFBFD006666660066666600666666000000
      00004D4D4D004D4D4D004D4D4D004D4D4D000000000000000000000000008080
      8000DBDBDB00DBDBDB00DBDBDB00DBDBDB008080800080808000808080000000
      0000808080008080800080808000808080000000000000000000D0B0A000FFF8
      FF00E0E8FF00C0C8F000F0F0F000F0F0E000E0D8E0008090F0003058E0005068
      B000F0E0D000E0C8B00070584000000000000000000062626200000000008080
      8000000000000000000000000000000000008080800080808000808080008080
      8000808080000000000062626200000000000000000000000000000000006666
      6600DFFBFD00DFFBFD00DFFBFD00DFFBFD006666660066666600000000000000
      0000000000004D4D4D004D4D4D00000000000000000000000000000000008080
      8000DBDBDB00DBDBDB00DBDBDB00DBDBDB008080800080808000000000000000
      0000000000008080800080808000000000000000000000000000D0B8A000FFFF
      FF00FFF8FF00FFF8F000FFF8F000FFF0F000F0F0E000F0E0E0007088F0002050
      D0009090C000E0D0C00080706000000000000000000062626200000000008080
      8000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800062626200000000000000000000000000000000006666
      6600666666006666660066666600666666006666660000000000000000000000
      0000000000004D4D4D004D4D4D00000000000000000000000000000000008080
      8000808080008080800080808000808080008080800000000000000000000000
      0000000000008080800080808000000000000000000000000000D0B8B000FFFF
      FF00FFFFFF00FFF8FF00FFF8F000FFF8F000F0F0F000F0E0E000F0E8E0008090
      F0002048D000A098C000A0908000000000000000000062626200000000008080
      8000808080000000000000000000808080008080800080808000808080008080
      8000808080008080800062626200000000000000000083000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004D4D4D004D4D4D00000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000000000000000000000000000D0C0B000FFFF
      FF00FFFFFF0080A0B000608890006088900060789000607880007080900090A0
      B00090A0F0003050D000B0989000000000000000000062626200000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800062626200000000000000000083000000830000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0C0B000FFFF
      FF00FFFFFF0080A8B00090D8E00090E8F00080D8F00060C8E0005098B0007080
      9000F0E8E000E0D8D000A0989000000000000000000062626200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000062626200000000000000000083000000830000008300
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004D4D4D004D4D4D00000000000000000080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000000000000000000000000000D1C2B300FFFF
      FF00FFFFFF00F0F8FF0080A8B000A0A8A0009586770080C8D00050708000F0F0
      F000F0E0E000F0E0E000807060000000000000000000A8A8A800626262006262
      6200626262006262620062626200626262006262620062626200626262006262
      62006262620062626200A8A8A800000000000000000083000000830000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E2E5E100D1C2
      B300D0C0B000D0C0B00070A8B000A0E8F000A0E8F00090D0E00040687000C0A8
      A000C0A8A000C0A89000D6DAD600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000083000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004D4D4D004D4D4D00000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000000000000000000000000000000000000000
      00000000000000000000DCE3E10080B0C00080A0B0007090A000D8DDD9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002D2D2D002D2D2D002D2D
      2D002D2D2D002D2D2D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080685000203040002030400020304000203040002030
      4000203040002030400020304000203040000000000000000000000000000000
      0000000000000000000000000000000000002D2D2D00DDDDDD00DDDDDD00CEC3
      B200BCA87B00BCA87B002D2D2D00000000000000000000000000000000000000
      0000000000000000000000000000000000002D2D2D00DDDDDD00DDDDDD008080
      80008080800080808000808080000000000000000000A8A8A800626262006262
      6200626262006262620062626200626262006262620062626200626262006262
      62006262620062626200A8A8A800000000000000000060809000506070004050
      6000304050002030400090706000F0E0D000B0A09000B0A09000B0A09000B0A0
      9000B0A09000B0A09000B0A0900020304000000000007F5B00007F5B00000000
      00000000000000000000000000002D2D2D00E9DDB700FFFDF300FFFFFF00FBF0
      D700E1CE9B00B0995A00756923002D2D2D000000000080808000808080000000
      0000000000000000000000000000808080000000000000000000000000008080
      8000808080008080800080808000808080000000000062626200C36F5500BB35
      0C0014BB180014BB180014BB180014BB180014BB180014BB180014BB180014BB
      180014BB180014BB180062626200000000007080900020B8F0000090D0000090
      D0000090D0000090D00090786000F0E8E000F0D8D000E0D0C000E0C8C000D0C0
      B000D0B8B000D0B8B000B0A09000203040007F5B0000EFAD0000EFAD00007F5B
      00000000000000000000000000002D2D2D00E9DDB400F9F4E800FFFFFF00F0E4
      CC00D5C19300A5905400756923002D2D2D008080800080808000808080008080
      8000000000000000000000000000808080000000000000000000000000008080
      8000808080008080800080808000808080000000000062626200C36F5500BB35
      0C00BB350C0014BB180020D7240020D7240019C21D0020D7240019C21D0020D7
      240019C21D0014BB180062626200000000007088900070C8F00010B8F00010B0
      F00000A8E0000098D000A0807000F0F0F000C0B0A000C0B0A000C0A8A000B0A0
      9000D0C0B000B0A09000B0A09000203040007F5B0000FFFF0000EFAD0000EFAD
      00007F5B000000000000000000002D2D2D00E8DAB200F7F1E200FFFFFF00F1E5
      D000D7C393009F8B4F00726622002D2D2D008080800000000000808080008080
      8000808080000000000000000000808080000000000000000000000000008080
      8000808080008080800080808000808080000000000062626200C36F5500BB35
      0C00BB350C00BB350C00BB350C0014BB180020D7240019C21D0020D7240019C2
      1D0020D7240014BB180062626200000000008088900070D0F00030C0F00010B8
      F00000A8F00000A0E000A0888000FFF8FF00F0F0F000F0E8E000F0D8D000E0D0
      C00070585000605040005048400040404000000000007F5B0000FFFF0000EFAD
      0000EFAD00007F5B0000000000002D2D2D00E6DAB100F9F4E600FFFFFF00F0E5
      CE00D6C49300A68F5400726521002D2D2D000000000080808000000000008080
      8000808080008080800000000000808080000000000000000000000000008080
      8000808080008080800080808000808080000000000062626200C36F5500BB35
      0C00BB350C00BB350C00BB350C00BB350C0014BB180020D7240019C21D0020D7
      240019C21D0014BB180062626200000000008090A00080D8F00040C8F00030C0
      F00010B8F00000A0E000B0908000FFFFFF00C0B0A000C0B0A000C0A8A000F0E0
      D00080605000D0C8C000605040000000000000000000000000007F5B0000FFFF
      0000F6CF6D007F5B0000000000002D2D2D00F5EACA00FCF8EE00FFFFFF00EEE2
      CC00D5C19300A88F5600796C25002D2D2D000000000000000000808080000000
      0000000000008080800000000000808080000000000000000000000000008080
      8000808080008080800080808000808080000000000062626200F1CF7C00EEAA
      0400EEAA0400EEAA0400EEAA0400EEAA0400BF8A0800BF8A080020D7240019C2
      1D0020D7240014BB180062626200000000008098A00090E0F00060D8F00050C8
      F00030C0F00010B0F000B0989000FFFFFF00FFFFFF00FFF8FF00F0F0F000F0E8
      E000806850008060500000000000000000000000000000000000000000007F5B
      00007F5B0000F6CF6D00D9A77D007F5B00007F5B00007F5B00007F5B00002D2D
      2D002D2D2D002D2D2D00796C25002D2D2D000000000000000000000000008080
      80008080800000000000808080007F5B00008080800080808000808080008080
      8000808080008080800080808000808080000000000062626200F1CF7C00EEAA
      0400EEAA0400A9FFFF00A9FFFF00EEAA0400EEAA0400EEAA0400BF8A0800BF8A
      0800BF8A080020D7240062626200000000008098A000A0E8F00080E0F00070D8
      F00050D0F00010B0F000B0A09000B0989000B0908000A0888000A08070009078
      6000907060000000000000000000000000000000000000000000000000000000
      000000000000D9A77D007F5B0000679A9A00ABAB6E00A8D7CE00ECE79D007F5B
      0000BDA16600574507002D2D2D002D2D2D000000000000000000000000000000
      0000000000008080800080808000679A9A000000000000000000000000008080
      8000000000008080800080808000808080000000000062626200F1CF7C00EEAA
      0400A9FFFF0000FFFF0000FFFF00A9FFFF00EEAA0400EEAA0400EEAA0400EEAA
      0400EEAA0400BF8A0800626262000000000090A0A000B0F0FF00A0E8FF0090E0
      F00070D0F00010A0D00010A0D00010A0D0001098D0000090D0000090D0000090
      D000303840000000000000000000000000000000000000000000000000000000
      0000000000007F5B0000AAFFFF00AAFFFF0078ABAB00C0F0EC00CCFFFC00FFFF
      BF007F5B0000B1975D002D2D2D00000000000000000000000000000000000000
      00000000000080808000000000000000000078ABAB0000000000000000000000
      0000000000000000000080808000000000000000000062626200F1CF7C00EEAA
      0400A9FFFF0000FFFF0000FFFF00A9FFFF00EEAA0400EEAA0400EEAA0400EEAA
      0400EEAA0400EEAA0400626262000000000090A0B000B0F0FF00A0F0FF006080
      9000607080005070800050687000506870005060700040587000207090000090
      D000404860000000000000000000000000000000000000000000000000000000
      0000000000007F5B0000FFFF9900AAFEFE00AAFFFF0078ABAB0078ABAB0078AB
      AB007F5B00002D2D2D0000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000078ABAB0078ABAB0078AB
      AB00808080008080800000000000000000000000000062626200F1CF7C00EEAA
      0400EEAA0400A9FFFF00A9FFFF00EEAA0400EEAA0400EEAA0400EEAA0400EEAA
      0400EEAA0400EEAA0400626262000000000090A8B000B0F0FF00B0F0FF006088
      900090C8D00090E8F00080D8E00060C8E0005098B000405860002080A0000090
      D000505870000000000000000000000000000000000000000000000000000000
      0000000000007F5B0000AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00FFFF
      99007F5B00000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000062626200F1CF7C00EEAA
      0400EEAA0400EEAA0400EEAA0400EEAA0400EEAA0400EEAA0400EEAA0400EEAA
      0400EEAA0400EEAA0400626262000000000090A8B000B0F0F000B0F0FF00A0F0
      F0007098A000A0F0F0006D7F850080C8D000507080003060800060C0F00020B8
      F000506070000000000000000000000000000000000000000000000000000000
      0000000000007F5B0000FFFF9900AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFF
      FF007F5B00000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000062626200F1CF7C00F1CF
      7C00F1CF7C00F1CF7C00F1CF7C00F1CF7C00F1CF7C00F1CF7C00F1CF7C00F1CF
      7C00F1CF7C00F1CF7C0062626200000000000000000090A8B00090A8B00090A8
      B0006090A000A0E8F000A0E8F00090D8E0004068700070889000808890007088
      9000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F5B0000FFFF9900AAFFFF00FFFF9900AAFFFF007F5B
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000007F5B
      00000000000000000000000000000000000000000000A8A8A800626262006262
      6200626262006262620062626200626262006262620062626200626262006262
      62006262620062626200A8A8A800000000000000000000000000000000000000
      00000000000080B0C00080B0C00080A0B0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F5B00007F5B00007F5B00007F5B00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099939D0020304000938B9300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000096969600333333008E8E8E00000000000000000000000000000000000000
      000000000000B0A0900060483000604830006048300060483000604830006048
      3000604830006048300060483000705040000000000000000000000000000000
      0000000000009C9C9C0043434300434343004343430043434300434343004343
      43004343430043434300434343004E4E4E0000000000B0A09000604830006048
      3000604830006048300060483000604830006048300060483000604830005048
      4000305060004078C000304860009C989D00000000009C9C9C00434343004343
      4300434343004343430043434300434343004343430043434300434343004646
      460051515100888888004C4C4C00999999000000000000000000000000000000
      000000000000C0A8A000FFF0F000E0E0E000E0E0D00090584000F0F0E000E0C8
      C000E0C8B000E0C0B000E0B8A000705040000000000000000000000000000000
      000000000000A8A8A800F1F1F100E0E0E000DBDBDB0056565600EBEBEB00C8C8
      C800C3C3C300BEBEBE00B4B4B4004E4E4E0000000000B0A09000FFFFFF00B0A0
      9000B0A09000B0A09000B0A09000B0A09000B0A09000B0A09000908880003050
      70003080D0004098E00050B0F00050687000000000009C9C9C00FFFFFF009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00868686005656
      560090909000A4A4A400B9B9B900686868007088900060809000607880006088
      90006090A000C0B0A000FFFFFF00FFF8F000E0D8D000A0604000FFF0F000FFE8
      E000FFE8D000F0E0D000D0B8A000705040008888880081818100787878008686
      860090909000ACACAC00FFFFFF00F6F6F600D6D6D6005C5C5C00F1F1F100E7E7
      E700E3E3E300DCDCDC00B3B3B3004E4E4E0000000000B0A09000FFFFFF00FFFF
      FF00FFF8FF00F0F0F000D0D8D000909890007068600060686000505860004070
      900040A0E00060C8FF007090A000B7B3B500000000009C9C9C00FFFFFF00FFFF
      FF00FAFAFA00F0F0F000D4D4D400949494006666660064646400595959007474
      7400A9A9A900CECECE0091919100B4B4B4007088900090A0B00070B0D0000090
      D00030B0E000D0B8A000FFFFFF00B0887000E0E0E000A0705000FFF8F000C090
      8000C0887000B0786000D0B8A0007050400088888800A3A3A300B3B3B3009494
      9400B1B1B100B3B3B300FFFFFF0084848400E0E0E0006B6B6B00F6F6F6009090
      90008686860076767600B3B3B3004E4E4E0000000000B0A09000FFFFFF00FFFF
      FF00FFFFFF00E0E0E00090909000B0A8A000D0C0B000D0B0A000807870005058
      50006090B0007098B000A6AAAE0000000000000000009C9C9C00FFFFFF00FFFF
      FF00FFFFFF00E0E0E00090909000A6A6A600BCBCBC00AEAEAE00767676005454
      5400949494009B9B9B00AAAAAA00000000008088900080C0D00090A8B00080E0
      FF0050B8E000D0B8A000FFFFFF00FFFFFF00E0E0E000A0786000FFF8F000FFF0
      F000FFF0E000FFE8E000D0B8A0007050400089898900BEBEBE00A8A8A800DFDF
      DF00B9B9B900B3B3B300FFFFFF00FFFFFF00E0E0E00074747400F6F6F600F1F1
      F100ECECEC00E7E7E700B3B3B3004E4E4E0000000000B0A09000FFFFFF00FFFF
      FF00FFFFFF00B0B0B000C0B8B000FFF0E000FFE8E000F0D8C000F0D0B0008078
      7000988D9200A8ADB1000000000000000000000000009C9C9C00FFFFFF00FFFF
      FF00FFFFFF00B0B0B000B6B6B600ECECEC00E7E7E700D3D3D300C9C9C9007676
      76008F8F8F00ADADAD0000000000000000008090A00080D0F00090A8B00090C0
      D00060C0E000D0B8A000FFFFFF00B0989000E0E0E000B0806000FFF8FF00C0A0
      9000C0988000C0887000D0B8B0007050400093939300D1D1D100A8A8A800C0C0
      C000C0C0C000B3B3B300FFFFFF0098989800E0E0E0007B7B7B00FAFAFA009E9E
      9E009494940086868600B8B8B8004E4E4E0000000000C0A89000FFFFFF00FFFF
      FF00FFFFFF00A0989000F0E8E000FFF8F000FFF0F000FFE8E000F0D8D000D0B0
      A0006267600000000000000000000000000000000000A3A3A300FFFFFF00FFFF
      FF00FFFFFF0096969600E6E6E600F6F6F600F1F1F100E7E7E700D8D8D800AEAE
      AE00646464000000000000000000000000008090A00080D8F00080C8E00090A8
      B00060C0E000D0B8A000FFFFFF00FFFFFF00FFFFFF00B0806000FFFFFF00FFF8
      FF00FFF8F000FFF8F000FFF0F0007050400093939300D6D6D600C8C8C800A8A8
      A800C0C0C000B3B3B300FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FAFA
      FA00F6F6F600F6F6F600F1F1F1004E4E4E0000000000C0A8A000FFFFFF00FFFF
      FF00FFFFFF00A0A09000F0E8E000FFFFFF00FFF8F000FFF0F000FFE8E000E0C0
      B000716F6F0000000000000000000000000000000000A8A8A800FFFFFF00FFFF
      FF00FFFFFF009B9B9B00E6E6E600FFFFFF00F6F6F600F1F1F100E7E7E700BEBE
      BE006F6F6F000000000000000000000000008098A00090E0F00090E0FF0090A8
      B00090C0D000E0A08000F0A89000F0A08000F0987000E0906000E0885000E078
      4000E0784000E0704000E0704000D060300098989800DCDCDC00E1E1E100A8A8
      A800C0C0C0009C9C9C00A8A8A8009E9E9E009494940089898900808080007171
      7100717171006C6C6C006C6C6C005C5C5C0000000000C0B0A000FFFFFF00FFFF
      FF00FFFFFF00C0C8C000C0C0C000FFFFFF00FFFFFF00FFF8F000FFF0E000B0A0
      9000A5A0A00000000000000000000000000000000000ACACAC00FFFFFF00FFFF
      FF00FFFFFF00C4C4C400C0C0C000FFFFFF00FFFFFF00F6F6F600ECECEC009C9C
      9C00A0A0A0000000000000000000000000008098A00090E0F000A0E8FF0080C8
      E00080C0D000D0987000FFC0A000FFB8A000FFB89000FFB09000FFA88000FFA8
      8000F0A07000F0987000F0987000D070400098989800DCDCDC00E7E7E700C8C8
      C800BEBEBE0091919100BCBCBC00B7B7B700B3B3B300AEAEAE00A4A4A400A4A4
      A4009999990094949400949494006B6B6B0000000000D0B0A000FFFFFF00FFFF
      FF00FFFFFF00F0F8FF00C0B8B000C0C0C000F0E8E000F0E8E000B0B0A0007070
      60000000000000000000000000000000000000000000AEAEAE00FFFFFF00FFFF
      FF00FFFFFF00F9F9F900B6B6B600C0C0C000E6E6E600E6E6E600ABABAB006B6B
      6B000000000000000000000000000000000090A0A000A0E8F000A0E8FF00A0E8
      FF0090C8D000C0907000D0907000D0907000E0987000D0907000E0987000E090
      6000E0885000E0805000E0784000E07040009E9E9E00E3E3E300E7E7E700E7E7
      E700C4C4C4008B8B8B008C8C8C008C8C8C00939393008C8C8C00939393008989
      8900808080007B7B7B00717171006C6C6C0000000000D0B8A000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F0F8FF00C0C8C000A0A0900090908000909090006050
      40000000000000000000000000000000000000000000B3B3B300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9F9F900C4C4C4009B9B9B008B8B8B00909090004C4C
      4C000000000000000000000000000000000090A0B000A0E8F000A0F0FF00A0E8
      FF00A0E8FF0080D0F00070C8F00070C8F00070C8F00070C8F00070C8F00070C8
      F00090B0C000000000000000000000000000A3A3A300E3E3E300ECECEC00E7E7
      E700E7E7E700D1D1D100CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00B1B1B10000000000000000000000000000000000D0B8B000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B0A0900060483000604830006048
      30000000000000000000000000000000000000000000B8B8B800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9C9C0043434300434343004343
      43000000000000000000000000000000000090A0B000A0F0F000B0F0F000A0F0
      FF00A0E8FF00A0E8FF0070D8FF0090A0A0008098A0008098A0008090A0008090
      900070889000000000000000000000000000A3A3A300E8E8E800E9E9E900ECEC
      EC00E7E7E700E7E7E700D9D9D9009E9E9E009898980098989800939393008E8E
      8E008888880000000000000000000000000000000000D0C0B000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0A89000D0C8C000604830000000
      00000000000000000000000000000000000000000000BCBCBC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A3A3A300C6C6C600434343000000
      00000000000000000000000000000000000090A8B000A0D0E000B0F0F000B0F0
      F000A0F0FF00A0E8FF0090A0B000B1C3C7000000000000000000000000000000
      000000000000906850009068500090685000A8A8A800D0D0D000E9E9E900E9E9
      E900ECECEC00E7E7E700A3A3A300C2C2C2000000000000000000000000000000
      00000000000064646400646464006464640000000000E0C0B000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0A8A00060483000000000000000
      00000000000000000000000000000000000000000000BEBEBE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A8A8A80043434300000000000000
      000000000000000000000000000000000000C8CDD00090A8B00090A8B00090A8
      B00090A8B00090A8B000B4BFC400000000000000000000000000000000000000
      000000000000CDBEBC009068500090685000CDCDCD00A8A8A800A8A8A800A8A8
      A800A8A8A800A8A8A800BFBFBF00000000000000000000000000000000000000
      000000000000BEBEBE00646464006464640000000000E0C0B000E0C0B000E0C0
      B000E0C0B000E0C0B000D0C0B000D0B8B000D0B0A00000000000000000000000
      00000000000000000000000000000000000000000000BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BCBCBC00B8B8B800AEAEAE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000090786000C3B2A9000000
      0000DED8D800A0908000CDC3BC00907860000000000000000000000000000000
      0000000000000000000000000000000000000000000073737300B1B1B1000000
      0000D8D8D8008C8C8C00C1C1C100737373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D2CDC700A0908000A088
      8000B0988000C1B7AF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CBCBCB008C8C8C008888
      880093939300B5B5B50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000807060008070600080706000807060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000707070007070700070707000707070000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000807060008070600080706000807060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000707070007070700070707000707070000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000807060008070600080706000807060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000707070007070700070707000707070000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000807060008070600080706000807060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000707070007070700070707000707070000000000000000000000000005080
      5000407040003050300020382000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006868
      680058585800404040002C2C2C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005090
      500060A860005088500030503000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      7000848484006C6C6C0040404000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000070A8800060A070006098
      600070B070005098500040704000305030002038200000000000000000000000
      000000000000000000000000000000000000000000008C8C8C00808080007C7C
      7C00909090007474740058585800404040002C2C2C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080B09000A0D8A00070C0
      800070B8700060A0600050905000408840003050300000000000000000000000
      0000807060008070600080706000807060000000000098989800BCBCBC009898
      9800949494008080800070707000646464004040400000000000000000000000
      000070707000707070007070700070707000000000006078D0001038B0001038
      B0001030B0001028A0001028A000002090000020900000000000000000000000
      0000807060008070600080706000807060000000000098989800606060006060
      6000606060005858580058585800484848004848480000000000000000000000
      0000707070007070700070707000707070000000000090B8A000B0D8B000A0D8
      A00090D0A00070B8700060A86000509850004070400000000000000000000000
      00000000000000000000000000000000000000000000A4A4A400C4C4C400BCBC
      BC00B0B0B0009494940084848400747474005858580000000000000000000000
      000000000000000000000000000000000000000000006080D0009098FF005060
      FF005060FF003048F0003048E0002040D0001028A00000000000000000000000
      0000000000000000000000000000000000000000000098989800C7C7C700A7A7
      A700A7A7A7009090900088888800787878005858580000000000000000000000
      0000000000000000000000000000000000000000000090C0A00090B8A00080B0
      9000A0D8A00070C0800060986000509050005080500000000000000000000000
      00008070600080706000807060008070600000000000A8A8A800A4A4A4009898
      9800BCBCBC00989898007C7C7C00707070006868680000000000000000000000
      000070707000707070007070700070707000000000007088E000A0A8FF009090
      FF007080FF005068FF003058F0002048F0001038B00000000000000000000000
      00008070600080706000807060008070600000000000A8A8A800CFCFCF00C7C7
      C700B7B7B700A7A7A70090909000888888006060600000000000000000000000
      00007070700070707000707070007070700000000000000000000000000090B8
      A000B0D8B000A0D8A00060A07000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A4A4
      A400C4C4C400BCBCBC0080808000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007088E0007088E0006080
      D0006078D0005070C0005060C0004058B0004058B00000000000000000000000
      00000000000000000000000000000000000000000000A8A8A800A8A8A8009898
      9800989898008888880088888800787878007878780000000000000000000000
      00000000000000000000000000000000000000000000000000000000000090C0
      A00090B8A00080B0900070A88000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A8A8
      A800A4A4A400989898008C8C8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000C0A0900060483000604830006048
      3000604830006048300060483000604830006048300060483000604830006048
      3000000000000000000000000000000000009E9E9E0043434300434343004343
      4300434343004343430043434300434343004343430043434300434343004343
      430000000000000000000000000000000000FFFFFF0085B6D8000F6DAE001672
      B1001A74B1001A74B0001876B3001777B300137AB6000D7CBA000A7CBA00077A
      B8000279BA00006EAF007FAFCE00FFFFFF00FFFFFF00BBBBBB00777777007B7B
      7B007D7D7D007D7D7D007E7E7E007F7F7F008181810083838300838383008181
      81008080800076767600B3B3B300FFFFFF00C0A89000FFF8F000FFF0E000F0E8
      E000F0E0D000F0D0C000F0C8B000E0C0A000E0B8A000E0B09000E0A890006048
      300000000000000000000000000000000000A3A3A300F6F6F600ECECEC00E6E6
      E600DCDCDC00CECECE00C4C4C400B9B9B900B4B4B400ABABAB00A6A6A6004343
      430000000000000000000000000000000000FFFFFF001180CB00D4E8F600FFFF
      FF00FFFFFF0085BFE50048A2DA00389FD800249DD7001CA1DA0015A2DA000DA1
      D900059BD900018ED000006CAE00FFFFFF00FFFFFF008B8B8B00EAEAEA00FFFF
      FF00FFFFFF00C4C4C400A9A9A900A5A5A500A2A2A200A4A4A400A4A4A400A3A3
      A3009E9E9E009393930075757500FFFFFF00C0A8A000FFFFF000C0A8A000B0A0
      A000F0E8E000B0A09000B0989000B0989000B0989000B0989000E0B090006048
      300000000000000000000000000000000000A8A8A800FAFAFA00A8A8A800A1A1
      A100E6E6E6009C9C9C0098989800989898009898980098989800ABABAB004343
      430000000000000000000000000000000000FFFFFF00198AD500FFFFFF006BB3
      E40091C8EB00FFFFFF00FFFFFF00DFF1FA004CB5E40024ADE2001CB0E30013B0
      E3000AACE200049BD9000276B800FFFFFF00FFFFFF0095959500FFFFFF00BABA
      BA00CDCDCD00FFFFFF00FFFFFF00F1F1F100B8B8B800AFAFAF00B0B0B000AFAF
      AF00ACACAC009E9E9E007E7E7E00FFFFFF00C0A8A000FFFFF000FFFFF000FFF8
      F000FFF0E000F0E8E000F0E0D000F0D0C000F0C8B000E0C0A000E0B8A0006048
      300000000000000000000000000000000000A8A8A800FAFAFA00FAFAFA00F6F6
      F600ECECEC00E6E6E600DCDCDC00CECECE00C4C4C400B9B9B900B4B4B4004343
      430000000000000000000000000000000000FFFFFF00228ED700FFFFFF00A3D0
      EE0048A2DE008EC6EB00B8DDF300FFFFFF00C5E7F7002BB1E40021B3E40018B4
      E5000EB0E30008A0DA00057BBA00FFFFFF00FFFFFF0099999900FFFFFF00D4D4
      D400ABABAB00CBCBCB00DFDFDF00FFFFFF00E8E8E800B2B2B200B3B3B300B3B3
      B300AFAFAF00A2A2A20082828200FFFFFF00C0A8A000FFFFF000B0A8A000B0A0
      A000FFF8F000B0A09000B0989000B0989000B0989000B0989000E0C0A0006048
      300000000000000000000000000000000000A8A8A800FAFAFA00A6A6A600A1A1
      A100F6F6F6009C9C9C0098989800989898009898980098989800B9B9B9004343
      430000000000000000000000000000000000FFFFFF002C94D90074B8E600FFFF
      FF00B4D9F1004CA5DF0046A5DF00FFFFFF00CEEAF80064C5EA0052C2EA001BB1
      E40014ADE2000FA1DA000B7DBB00FFFFFF00FFFFFF009E9E9E00BFBFBF00FFFF
      FF00DCDCDC00ADADAD00ACACAC00FFFFFF00EBEBEB00C6C6C600C2C2C200B1B1
      B100ADADAD00A3A3A30084848400FFFFFF00C0B0A000FFFFF000FFFFF000FFFF
      F000FFFFF000FFF8F000FFF0E000F0E8E000F0E0D000F0D0C000F0C8B0006048
      300000000000000000000000000000000000ACACAC00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00F6F6F600ECECEC00E6E6E600DCDCDC00CECECE00C4C4C4004343
      430000000000000000000000000000000000FFFFFF003598DA004BA3DE0083BF
      E900FFFFFF00B0D7F10049A5DF008BC9EB00F8FCFE00FFFFFF00FFFFFF00CAEC
      F80043BAE70018A0D900127FBB00FFFFFF00FFFFFF00A1A1A100ABABAB00C5C5
      C500FFFFFF00DADADA00ADADAD00CDCDCD00FCFCFC00FFFFFF00FFFFFF00ECEC
      EC00BBBBBB00A3A3A30086868600FFFFFF00C0B0A000FFFFF000FFFFF000FFFF
      F000FFFFF000FFFFF000FFF8F000C0C8C00040607000F0E0D000F0D0C0006048
      300000000000000000000000000000000000ACACAC00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00F6F6F600C4C4C40061616100DCDCDC00CECECE004343
      430000000000000000000000000000000000FFFFFF003F9DDC0053A7E00056A9
      E00086C1E900FFFFFF00AAD4F00041A3DE005BB4E50041AEE20055B9E600FFFF
      FF00E3F3FB0039A8DD00187EB900FFFFFF00FFFFFF00A6A6A600AFAFAF00B1B1
      B100C7C7C700FFFFFF00D8D8D800AAAAAA00B9B9B900B2B2B200BCBCBC00FFFF
      FF00F3F3F300ACACAC0085858500FFFFFF00C0B0A000FFFFFF00E0E8F0006078
      8000E0E0E000FFFFF000C0C8D0005060700030A8D00020384000B0A0A0006048
      30000000000000000000A0B39A0040805000ACACAC00FFFFFF00E9E9E9007878
      7800E0E0E000FAFAFA00C9C9C90063636300A8A8A80038383800A1A1A1004343
      43000000000000000000A9A9A9006B6B6B00FFFFFF0045A0DE005AAAE1005CAA
      E10057A8E10094C8EB00FFFFFF005EAFE200369FDD002C9EDD00249DDD002EA3
      DE00FFFFFF008CC9E9001D7DB800FFFFFF00FFFFFF00A9A9A900B2B2B200B2B2
      B200B1B1B100CDCDCD00FFFFFF00B6B6B600A7A7A700A5A5A500A4A4A400A9A9
      A900FFFFFF00CCCCCC0085858500FFFFFF00D0B0A000FFFFFF0090A8B00080D0
      E00050607000B0B8C0005060700060C0E0005060700030B8F000102830001030
      40001028300070747D004078400050A86000AEAEAE00FFFFFF00A8A8A800CCCC
      CC0063636300B9B9B90063636300C0C0C00063636300BBBBBB00282828003131
      310028282800767676006161610089898900FFFFFF004FA5DF0063AFE30061AD
      E20059A9E1007AB9E700FFFFFF004EA4DF00369ADB0046A5E00062B3E4002496
      DA00A1D2EF00BFDFF200217CB700FFFFFF00FFFFFF00ADADAD00B7B7B700B5B5
      B500B1B1B100C0C0C000FFFFFF00ADADAD00A3A3A300ADADAD00B9B9B9009F9F
      9F00D5D5D500E1E1E10084848400FFFFFF00D0B8A000FFFFFF00E0E8F00090A8
      B00080E0F0005060700080D0E0005060700060D0F0004060700030B0E0002098
      D0002088B000205070005088600050B06000B3B3B300FFFFFF00E9E9E900A8A8
      A800DBDBDB0063636300CCCCCC0063636300CECECE0061616100B1B1B1009C9C
      9C008989890054545400767676008E8E8E00FFFFFF0053A7E0006CB4E50068B2
      E4005EABE10080BDE800FFFFFF005AAAE1003A9ADB009ECEEE00F8FCFE003B9E
      DC00B2D9F200B7DAF000237CB700FFFFFF00FFFFFF00AFAFAF00BBBBBB00B9B9
      B900B3B3B300C3C3C300FFFFFF00B2B2B200A3A3A300D2D2D200FCFCFC00A6A6
      A600DCDCDC00DDDDDD0084848400FFFFFF00D0B8A000D0B8A000D0B8A000C0B0
      A00090A8B00080E0F0005060700080E0F0004058700060D0F00050C8F00040C0
      F00020B0E00020A0D0006098700050B87000B3B3B300B3B3B300B3B3B300ACAC
      AC00A8A8A800DBDBDB0063636300DBDBDB005C5C5C00CECECE00C8C8C800C1C1
      C100B0B0B000A1A1A1008686860098989800FFFFFF005EACE2007ABCE70070B6
      E50063AEE30066AFE300E4F1FA00C1DFF300459EDD003E9BDC0051A6DF0067B2
      E400FDFEFF0075B7E300237BB600FFFFFF00FFFFFF00B4B4B400C2C2C200BDBD
      BD00B6B6B600B7B7B700F2F2F200E2E2E200A8A8A800A5A5A500AEAEAE00B9B9
      B900FEFEFE00BDBDBD0083838300FFFFFF000000000000000000000000000000
      00000000000090A8B00080E0F0004058700080E0F00070D8F00060D0F00050C8
      F00040C0F00030B8F00070A8800060C080000000000000000000000000000000
      000000000000A8A8A800DBDBDB005C5C5C00DBDBDB00D4D4D400CECECE00C8C8
      C800C1C1C100BBBBBB0096969600A3A3A300FFFFFF006BB4E5008DC5EA0080BF
      E8006FB6E50067B1E30091C6EB00F9FCFE00DDEDF90096C9EC00AED5F000FFFF
      FF00B1D7F1003596D5001E78B500FFFFFF00FFFFFF00BBBBBB00CACACA00C5C5
      C500BDBDBD00B8B8B800CBCBCB00FCFCFC00EFEFEF00CECECE00D9D9D900FFFF
      FF00DBDBDB009F9F9F0081818100FFFFFF000000000000000000000000000000
      0000000000000000000090A8B00080E0F00080E0F00080E0F00070D8F00060D0
      F00060B0D00080889000B0C0A00090D0A0000000000000000000000000000000
      00000000000000000000A8A8A800DBDBDB00DBDBDB00DBDBDB00D4D4D400CECE
      CE00B1B1B10089898900B4B4B400BBBBBB00FFFFFF0077BAE7009DCDEE008CC5
      EA0079BBE70070B6E5006AB2E40087C1E900C3E0F400EBF5FB00D4E9F70093C8
      EC0045A0DE002F92D3001975B300FFFFFF00FFFFFF00C0C0C000D2D2D200CACA
      CA00C1C1C100BDBDBD00B9B9B900C7C7C700E3E3E300F5F5F500EBEBEB00CDCD
      CD00A9A9A9009B9B9B007E7E7E00FFFFFF000000000000000000000000000000
      000000000000000000000000000090A8B00090A0B00090A0A0008098A0008090
      A00080889000B9B9BD00A0B8A000B0C0A0000000000000000000000000000000
      0000000000000000000000000000A8A8A800A3A3A3009E9E9E00989898009393
      930089898900BABABA00AEAEAE00B4B4B400FFFFFF00B2D7F10076B9E60067B1
      E4005BAAE10054A7E0004FA5DF004AA2DE004BA3DE0046A1DE003F9DDC003B9B
      DC003196D900238ACF008ABADA00FFFFFF00FFFFFF00DBDBDB00BFBFBF00B8B8
      B800B2B2B200AFAFAF00ADADAD00ABABAB00ABABAB00AAAAAA00A6A6A600A4A4
      A400A0A0A00094949400BEBEBE00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0A8A000604830006048
      3000604830006048300060483000604830000000000000000000000000000000
      00000000000000000000000000000000000000000000A8A8A800434343004343
      43004343430043434300434343004343430000000000C7C6C200806850008060
      5000806050007060500070584000705840007050400070504000604830006048
      300060483000A19A9100000000000000000000000000C4C4C400636363005E5E
      5E005E5E5E005C5C5C0053535300535353004E4E4E004E4E4E00434343004343
      4300434343009898980000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0A8A000FFF0F000F0D8
      D000E0D0C000E0C8B000E0C0B000604830000000000000000000000000000000
      00000000000000000000000000000000000000000000A8A8A800F1F1F100D8D8
      D800CCCCCC00C3C3C300BEBEBE0043434300C1C4C300A38D8500E0D0C000B0A0
      9000B0A09000B0A09000B0A09000B0A09000B0A09000B0A09000B0A09000B0A0
      9000B0A0900060483000C8CBC90000000000C3C3C3008C8C8C00CCCCCC009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C0043434300CACACA0000000000000000000000000000000000A6A3
      CC001048E0001048E0001048E0000000000000000000C0B0A000FFF8F0007070
      7000F0E8E00070707000E0C8B00060483000000000000000000000000000AFAF
      AF007070700070707000707070000000000000000000ACACAC00F6F6F6007070
      7000E6E6E60070707000C3C3C30043434300BCB7B000B29C9400FFE8E000FFF8
      F000FFF0E000FFE8E000F0D8D000F0D0B000F0C0A00000A0000000A0000000A0
      000070584000604830008577670000000000B5B5B5009B9B9B00E7E7E700F6F6
      F600ECECEC00E7E7E700D8D8D800C9C9C900BBBBBB0060606000606060006060
      6000535353004343430073737300000000000000000000000000000000004070
      F0009E9FD30000000000000000000000000000000000D0B0A000FFFFFF00FFF8
      F000FFF0F000F0E8E000E0D0C000604830000000000000000000000000009191
      9100AEAEAE0000000000000000000000000000000000AEAEAE00FFFFFF00F6F6
      F600F1F1F100E6E6E600CCCCCC0043434300B2948500E0D8D000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF0F000F0E0E000F0D8C00000FF100000FFB00000A0
      00008068500070504000604830000000000092929200D6D6D600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F1F1F100E1E1E100D3D3D3009D9D9D00CDCDCD006060
      6000636363004E4E4E0043434300000000000000000000000000000000001048
      F0000000000000000000000000000000000000000000D0B8A000FFFFFF008088
      8000FFF8F00070707000F0D8D000604830000000000000000000000000007474
      74000000000000000000000000000000000000000000B3B3B300FFFFFF008484
      8400F6F6F60070707000D8D8D80043434300B0908000F0E8E000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0E8E00000FF100000FF100000A0
      0000907060007060500060483000000000008E8E8E00E6E6E600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F6F6F600E6E6E6009D9D9D009D9D9D006060
      60006E6E6E005C5C5C00434343000000000000000000000000006080F0003058
      F0001048E00000000000000000000000000000000000D0B0A000FFFFFF00FFFF
      FF00FFFFFF00FFF8F000FFF0F0006048300000000000000000009E9E9E008181
      81007070700000000000000000000000000000000000AEAEAE00FFFFFF00FFFF
      FF00FFFFFF00F6F6F600F1F1F10043434300B0988000D0C0B000D0B8B000C0B0
      A000B0A09000B0988000A0888000908070009070600080686000806050007058
      50009080700080686000705840000000000093939300BCBCBC00B8B8B800ACAC
      AC009C9C9C0093939300888888007C7C7C006E6E6E00686868005E5E5E005858
      58007C7C7C006868680053535300000000000000000000000000D0CEE00080A0
      FF00D0CADC0000000000000000000000000000000000C0B0A000C0B0A000C0B0
      A000C0B0A000C0B0A000C0A8A000C0A8A0000000000000000000D3D3D300B9B9
      B900D0D0D00000000000000000000000000000000000ACACAC00ACACAC00ACAC
      AC00ACACAC00ACACAC00A8A8A800A8A8A800C0A09000FFF8F000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000FFF0F000F0F0F000F0E8
      E000A08880009078600080605000000000009E9E9E00F6F6F600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F6F600F1F1F100F0F0F000E6E6
      E60088888800737373005E5E5E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CEC9C300B6A18C00D0B0A000C0A8
      A000D0B0A000C0A09000B0908000A08070009070600080605000706050008070
      6000B0A09000A08870008060500000000000C7C7C7009C9C9C00AEAEAE00A8A8
      A800AEAEAE009E9E9E008E8E8E007E7E7E006E6E6E005E5E5E005C5C5C006C6C
      6C009C9C9C00838383005E5E5E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CBC7C200C0B0A000E0C8
      C000FFFFFF00FFF8FF00FFF8FF00FFF0F000F0F0E000F0E0E000C0A8A0008060
      5000A0908000C0B0A000806050000000000000000000C5C5C500ACACAC00C8C8
      C800FFFFFF00FAFAFA00FAFAFA00F1F1F100EBEBEB00E1E1E100A8A8A8005E5E
      5E008C8C8C00ACACAC005E5E5E0000000000C0A8A00060483000604830006048
      300060483000604830006048300000000000000000000000000000000000D5D1
      E3001048E000D1CFE1000000000000000000A8A8A80043434300434343004343
      430043434300434343004343430000000000000000000000000000000000D6D6
      D60070707000D4D4D40000000000000000000000000000000000DEDFDD00C0B0
      A000FFFFFF00F0E8E000D0C8C000D0C8C000D0B8B000D0C0B000E0D0D0008068
      600080605000B0989000B0A09000000000000000000000000000DEDEDE00ACAC
      AC00FFFFFF00E6E6E600C6C6C600C6C6C600B8B8B800BCBCBC00D1D1D1006868
      68005E5E5E00989898009C9C9C0000000000C0A8A000FFF0F000F0D8D000E0D0
      C000E0C8B000E0C0B000604830000000000000000000000000000000000080A0
      FF003060F0001048E0000000000000000000A8A8A800F1F1F100D8D8D800CCCC
      CC00C3C3C300BEBEBE004343430000000000000000000000000000000000B9B9
      B90086868600707070000000000000000000000000000000000000000000D8CB
      BC00F0E8E000FFFFFF00FFFFFF00FFFFFF00FFF8FF00FFF0F000F0E0D000D0B8
      B00080605000BAADA8000000000000000000000000000000000000000000C7C7
      C700E6E6E600FFFFFF00FFFFFF00FFFFFF00FAFAFA00F1F1F100DCDCDC00B8B8
      B8005E5E5E00ACACAC000000000000000000C0B0A000FFF8F00070707000F0E8
      E00070707000E0C8B00060483000000000000000000000000000000000000000
      00004070F000000000000000000000000000ACACAC00F6F6F60070707000E6E6
      E60070707000C3C3C30043434300000000000000000000000000000000000000
      000091919100000000000000000000000000000000000000000000000000E5E5
      E600D0B8B000FFFFFF00F0F0F000D0C8C000D0C8C000D0B8B000C0B0B000E0D8
      D00080706000866859000000000000000000000000000000000000000000E5E5
      E500B8B8B800FFFFFF00F0F0F000C6C6C600C6C6C600B8B8B800B1B1B100D6D6
      D6006C6C6C00666666000000000000000000D0B0A000FFFFFF00FFF8F000FFF0
      F000F0E8E000E0D0C0006048300000000000000000000000000000000000AEB7
      EA001048F000000000000000000000000000AEAEAE00FFFFFF00F6F6F600F1F1
      F100E6E6E600CCCCCC004343430000000000000000000000000000000000C5C5
      C500747474000000000000000000000000000000000000000000000000000000
      0000DED5D300E0D1D100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8FF00F0E8
      E000D0B8B00080605000DCDBDB00000000000000000000000000000000000000
      0000D5D5D500D2D2D200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFAFA00E6E6
      E600B8B8B8005E5E5E00DBDBDB0000000000D0B8A000FFFFFF0080888000FFF8
      F00070707000F0D8D0006048300000000000000000006088F0007090F0007090
      F000A8B6EB00000000000000000000000000B3B3B300FFFFFF0084848400F6F6
      F60070707000D8D8D800434343000000000000000000A3A3A300A9A9A900A9A9
      A900C4C4C4000000000000000000000000000000000000000000000000000000
      000000000000DFD6D300D0C0B000D0C0B000D0C0B000D0C0B000D0C0B000D0C0
      B000D0C0B000D0C0B00000000000000000000000000000000000000000000000
      000000000000D6D6D600BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBC
      BC00BCBCBC00BCBCBC000000000000000000D0B0A000FFFFFF00FFFFFF00FFFF
      FF00FFF8F000FFF0F00060483000000000000000000000000000000000000000
      000000000000000000000000000000000000AEAEAE00FFFFFF00FFFFFF00FFFF
      FF00F6F6F600F1F1F10043434300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0B0A000C0B0A000C0B0A000C0B0
      A000C0B0A000C0A8A000C0A8A000000000000000000000000000000000000000
      000000000000000000000000000000000000ACACAC00ACACAC00ACACAC00ACAC
      AC00ACACAC00A8A8A800A8A8A800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A8F8C00203040005F686900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008F8F8F003333330067676700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C8C8800405060002098C000303840005F6D72000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008A8A8A005353530098989800393939006D6D6D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E1C0A700D1AC
      9300D5B8A1007F8285005060700020A0D00030B8F00060A0B000506870008068
      5000705840006048300060483000000000000000000000000000BBBBBB00A8A8
      A800B4B4B4008282820063636300A1A1A100BBBBBB009E9E9E00686868006363
      6300535353004343430043434300000000000000000000000000000000000000
      000000000000CDA18700E5BC9E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009D9D9D00B7B7B700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000706860006050
      400060504000606860004088A00040C0F00060B0D00070889000A0989000C0B0
      A000B0A09000B0A0900060483000000000000000000000000000666666004C4C
      4C004C4C4C006464640088888800C1C1C100B1B1B1008888880096969600ACAC
      AC009C9C9C009C9C9C0043434300000000000000000000000000000000000000
      0000AA74570090482000B4765700F0CEB3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000707070004343430072727200C9C9C9000000000000000000000000000000
      00000000000000000000000000000000000000000000776E6500C0A08000F0E0
      A000F0D8A000B0A89000607070006098B000708890009098A000D0F0E000B0E8
      D000B0E8C000B0A090006048300000000000000000006C6C6C0099999900CECE
      CE00C9C9C900A1A1A1006E6E6E00999999008888880099999900E8E8E800DBDB
      DB00D6D6D6009C9C9C004343430000000000000000000000000000000000A558
      3900D0785000D0704000B0603000CB9173000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005656
      5600747474006B6B6B00595959008D8D8D000000000000000000000000000000
      00000000000000000000000000000000000096837200B0988000FFFFC000FFF8
      C000FFF0C000FFF0D000B0A890007070700090A0A000F0F8F000E0F8F000C0F0
      D000C0E8D000C0A8900060483000000000007F7F7F0093939300ECECEC00E7E7
      E700E3E3E300E7E7E700A1A1A100707070009E9E9E00F4F4F400F3F3F300E1E1
      E100DCDCDC00A3A3A30043434300000000000000000000000000A0503000D078
      5000F0906000E19C7500D0886000B96F4200D3A4860000000000000000000000
      00000000000000000000000000000000000000000000000000004E4E4E007474
      74008B8B8B009797970083838300686868009F9F9F0000000000000000000000
      00000000000000000000000000000000000096857500E0D0B000FFFFE000FFFF
      E000FFFFD000FFF0C000F0D8B00060504000E0D8C000E0C8B000D0B0A000D0A8
      9000C0E8D000C0A89000604830000000000081818100C8C8C800F5F5F500F5F5
      F500F0F0F000E3E3E300CECECE004C4C4C00D1D1D100C3C3C300AEAEAE00A4A4
      A400DCDCDC00A3A3A300434343000000000000000000A5603900E0805000F090
      6000F3AF8E0000000000F2AA8600D0886000B4673900EBC9AF00000000000000
      000000000000000000000000000000000000000000005B5B5B007B7B7B008B8B
      8B00ABABAB0000000000A6A6A6008383830060606000C4C4C400000000000000
      000000000000000000000000000000000000BCA99700E0D0B000FFFFF000FFFF
      F000FFFFE000FFF8C000F0D8A00070585000FFFFFF00FFFFFF00FFFFFF00E0F8
      F000D0F0E000C0A8A0006048300000000000A5A5A500C8C8C800FAFAFA00FAFA
      FA00F5F5F500E7E7E700C9C9C90058585800FFFFFF00FFFFFF00FFFFFF00F3F3
      F300E8E8E800A8A8A800434343000000000000000000F1B69800F0A89000F2AC
      8200000000000000000000000000E6AA8600D0886000AA684100F2C7B4000000
      00000000000000000000000000000000000000000000B2B2B200A8A8A800A6A6
      A600000000000000000000000000A5A5A5008383830062626200C5C5C5000000
      000000000000000000000000000000000000D5C0AD00C0A8A000FFFFFF00FFFF
      FF00FFFFE000FFFFD000C0B0800090807000F0E0D000E0C8B000D0B0A000D0A8
      9000E0F8F000C0A8A0006048300000000000BCBCBC00A8A8A800FFFFFF00FFFF
      FF00F5F5F500F0F0F000A3A3A3007C7C7C00DCDCDC00C3C3C300AEAEAE00A4A4
      A400F3F3F300A8A8A800434343000000000000000000FDE0CD00F7CEB6000000
      000000000000000000000000000000000000E19C7500D0785000B47D5600F2CC
      B3000000000000000000000000000000000000000000DDDDDD00CACACA000000
      000000000000000000000000000000000000979797007474740076767600C8C8
      C8000000000000000000000000000000000000000000B4ABA200C0B0B000F0E8
      D000F0E8C000C0B0900080786000D0D0D000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F0F8F000C0B0A000604830000000000000000000A9A9A900B1B1B100E1E1
      E100DCDCDC00A8A8A80071717100D0D0D000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F4F4F400ACACAC0043434300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E19C7400C0704000C38C
      7400F1CAB0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000096969600696969008A8A
      8A00C6C6C6000000000000000000000000000000000000000000C0B0A000B0A0
      9000A0908000B0A0A000B0A8A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0B0A00060483000000000000000000000000000ACACAC009C9C
      9C008C8C8C00A1A1A100A6A6A600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ACACAC0043434300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E29F7900C070
      4000D29B8200EBC3A80000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009A9A9A006969
      690099999900BEBEBE0000000000000000000000000000000000F0A89000F0A8
      9000F0A89000F0A88000F0A08000E0987000E0906000E0885000E0805000E070
      4000E0704000E0704000D0603000000000000000000000000000A8A8A800A8A8
      A800A8A8A800A3A3A3009E9E9E009393930089898900808080007B7B7B006C6C
      6C006C6C6C006C6C6C005C5C5C00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1AF
      9100C0705000E4B99B0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ACAC
      AC006E6E6E00B4B4B40000000000000000000000000000000000F0A89000FFC0
      A000FFC0A000FFC0A000FFB89000FFB89000FFB09000FFA88000FFA88000F0A0
      7000F0987000F0986000D0683000000000000000000000000000A8A8A800BCBC
      BC00BCBCBC00BCBCBC00B3B3B300B3B3B300AEAEAE00A4A4A400A4A4A4009999
      9900949494009090900061616100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1C1A700D291720000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BEBEBE008E8E8E0000000000000000000000000000000000F0A89000F0A8
      9000F0A89000F0A89000F0A88000F0A08000F0987000E0987000E0906000E080
      5000E0784000E0784000E0704000000000000000000000000000A8A8A800A8A8
      A800A8A8A800A8A8A800A3A3A3009E9E9E009494940093939300898989007B7B
      7B0071717100717171006C6C6C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D5C5C400958DAF00565B93002C3275002C2B66004948780083738600C9AB
      A100000000000000000000000000000000000000000000000000000000000000
      0000C7C7C700989898006B6B6B00454545003D3D3D00565656007A7A7A00ABAB
      AB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AFAA
      BF004853A5001038A0001030B0000030C0000030C0000028B000102080002B27
      5C0097838700000000000000000000000000000000000000000000000000B1B1
      B1006A6A6A00535353005353530056565600565656004D4D4D003B3B3B003737
      3700868686000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5AEC7003C51
      B2001038C0000030D0000030D0000030D0000030D0000030D0000030D0000028
      A0000E1B64009680830000000000000000000000000000000000B6B6B6006C6C
      6C005D5D5D005B5B5B005B5B5B005B5B5B005B5B5B005B5B5B005B5B5B004848
      48002F2F2F00838383000000000000000000B0A0900060483000604830006048
      3000604830006048300060483000604830006048300060483000604830007050
      4000000000000000000000000000000000009C9C9C0043434300434343004343
      4300434343004343430043434300434343004343430043434300434343004E4E
      4E000000000000000000000000000000000000000000D9CCD3004862B4001040
      D0000038E0000038E0000038E0000038E0000038D0000030D0000030D0000030
      D0000028A0002B265B00C5A092000000000000000000D0D0D000787878006666
      660065656500656565006565650065656500606060005B5B5B005B5B5B005B5B
      5B004848480036363600A0A0A00000000000C0A8A000FFFFFF00E0E8E000E0E0
      E000E0E0D000E0D8D000E0D0C000E0C8C000E0C8B000E0C0B000C0A8A0007050
      400000000000000000000000000000000000A8A8A800FFFFFF00E4E4E400E0E0
      E000DBDBDB00D6D6D600CCCCCC00C8C8C800C3C3C300BEBEBE00A8A8A8004E4E
      4E0000000000000000000000000000000000000000009EA3CB002050C0000038
      F0000040F000FFFFFF00FFFFFF004070F0004068F000FFFFFF00FFFFFF000030
      D0000030D000102080007F697A000000000000000000AFAFAF006D6D6D006A6A
      6A006E6E6E00FFFFFF00FFFFFF00929292008D8D8D00FFFFFF00FFFFFF005B5B
      5B005B5B5B003B3B3B007070700000000000C0B0A000FFFFFF00E0C8C000D0C0
      B000D0C0B000FFF0E000D0B0A000D0B0A000D0B0A000F0D8D000C0A8A0007050
      400000000000000000000000000000000000ACACAC00FFFFFF00C8C8C800BCBC
      BC00BCBCBC00ECECEC00AEAEAE00AEAEAE00AEAEAE00D8D8D800A8A8A8004E4E
      4E0000000000000000000000000000000000000000006E81C5002048E0000040
      FF001048FF007098FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006080F0000038
      D0000030D0000028B00047427100000000000000000094949400727272007373
      730079797900B3B3B300FFFFFF00FFFFFF00FFFFFF00FFFFFF009F9F9F006060
      60005B5B5B004D4D4D005050500000000000D0B8A000FFFFFF00FFFFFF00FFFF
      FF00FFF8F000FFF8F000707070005058500000000000D0C0B000D0B0A0007050
      400000000000000000000000000000000000B3B3B300FFFFFF00FFFFFF00FFFF
      FF00F6F6F600F6F6F600707070005454540000000000BCBCBC00AEAEAE004E4E
      4E0000000000000000000000000000000000000000004B68C1005070FF005078
      FF003060FF003060FF00B0C8FF00FFFFFF00FFFFFF00A0B8FF000038F0000038
      E0000030D0000030C0002C296400000000000000000080808000989898009D9D
      9D008B8B8B008B8B8B00D6D6D600FFFFFF00FFFFFF00CBCBCB006A6A6A006565
      65005B5B5B00565656003B3B3B0000000000D0B8A000FFFFFF00E0C8C000E0C8
      C000E0C8C000FFF8F000A0A0A000FFFFFF005090B00010101000C0B0B0008060
      500000000000000000000000000000000000B3B3B300FFFFFF00C8C8C800C8C8
      C800C8C8C800F6F6F600A0A0A000FFFFFF009393930010101000B1B1B1005E5E
      5E0000000000000000000000000000000000000000004B68C1005078FF005080
      FF005078FF004070FF00B0C8FF00FFFFFF00FFFFFF00A0B8FF000040FF000038
      E0000038D0000030C0002C3173000000000000000000808080009D9D9D00A1A1
      A1009D9D9D0096969600D6D6D600FFFFFF00FFFFFF00CBCBCB00737373006565
      650060606000565656004444440000000000D0B8A000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A0A0A00090B8C00070D0E0005098B000101010008070
      600000000000000000000000000000000000B3B3B300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A0A0A000B6B6B600CBCBCB0098989800101010006C6C
      6C0000000000000000000000000000000000000000006E87D1005078F0006090
      FF007090FF0090B0FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007098FF000038
      F0000038E0001030B0005354890000000000000000009B9B9B0098989800ADAD
      AD00AEAEAE00C5C5C500FFFFFF00FFFFFF00FFFFFF00FFFFFF00B3B3B3006A6A
      6A0065656500535353006464640000000000D0B8A000FFFFFF00E0C8C000E0C8
      C000E0C8C000FFFFFF00C0B8B00050A0B00090E0F00060C0D0005098B0001010
      1000C8C0B400000000000000000000000000B3B3B300FFFFFF00C8C8C800C8C8
      C800C8C8C800FFFFFF00B6B6B6009C9C9C00DCDCDC00BBBBBB00989898001010
      1000BDBDBD00000000000000000000000000000000009EA7D3004068E0007098
      FF0080A0FF00FFFFFF00FFFFFF0080A0FF008098FF00FFFFFF00FFFFFF000040
      F0000038E0002038A0008F7D9A000000000000000000B4B4B40088888800B3B3
      B300BABABA00FFFFFF00FFFFFF00BABABA00B5B5B500FFFFFF00FFFFFF006E6E
      6E0065656500555555008888880000000000D0B8A000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF8F000D0D0D00050A0B00090E0F00060C0D0005098
      B00010101000C8C1B4000000000000000000B3B3B300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F6F6F600D0D0D0009C9C9C00DCDCDC00BBBBBB009898
      980010101000BDBDBD00000000000000000000000000DCCFD6005677D0006080
      F00080A8FF0090B0FF0080A0FF006080FF004070FF003060FF001048FF000040
      F0001040C0004750A100CBABA1000000000000000000D3D3D3008E8E8E009F9F
      9F00BEBEBE00C5C5C500BABABA00A3A3A300969696008B8B8B00797979006E6E
      6E006161610067676700ABABAB0000000000F0B09000F0A89000F0A89000F0A0
      8000F0987000E0906000E0886000E0906000D0A8900060A8B00090E0F00060C0
      D0005098B00010101000D5C8B90000000000ACACAC00A8A8A800A8A8A8009E9E
      9E0094949400898989008484840089898900A4A4A400A3A3A300DCDCDC00BBBB
      BB009898980010101000C4C4C400000000000000000000000000BBB7D3005A76
      D0006080F00080A0FF0080A8FF008098FF006088FF003060FF001048FF001048
      D0003B4FB000A898A70000000000000000000000000000000000C0C0C0008E8E
      8E009F9F9F00BABABA00BEBEBE00B5B5B500A8A8A8008B8B8B00797979006B6B
      6B006A6A6A009E9E9E000000000000000000F0B09000FFC0A000FFC0A000FFB8
      A000FFB89000FFB09000FFA88000FFA88000F0A88000D0B0A00070B0C00090E0
      F00070C8E0008088800030389000BCAEB600ACACAC00BCBCBC00BCBCBC00B7B7
      B700B3B3B300AEAEAE00A4A4A400A4A4A400A3A3A300AEAEAE00AEAEAE00DCDC
      DC00C6C6C6008484840051515100B1B1B100000000000000000000000000BBB6
      D1006477D0005070E0005078F0005080FF005078FF003060E0003050D000475F
      B000AF9EB100000000000000000000000000000000000000000000000000BFBF
      BF00909090008E8E8E0098989800A1A1A1009D9D9D0082828200737373007575
      7500A6A6A600000000000000000000000000F0B09000F0A89000F0A89000F0A8
      9000F0A08000F0A07000E0987000E0906000E0885000E0906000D098800080B0
      C000D0B8B0007088D0006070B00030389000ACACAC00A8A8A800A8A8A800A8A8
      A8009E9E9E00999999009393930089898900808080008989890096969600B0B0
      B000B8B8B8009B9B9B0081818100515151000000000000000000000000000000
      0000DBCCD0009DA5CF006E86CF004B67C0004B67C0006D7EC0009B9BBF00D2BB
      B900000000000000000000000000000000000000000000000000000000000000
      0000CFCFCF00B1B1B1009A9A9A007F7F7F007F7F7F0090909000A6A6A600BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DDD4
      CA006070B0007090E0006078D0006070B0000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D1D1
      D10081818100A4A4A40090909000818181000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0C6CE006070B0006070B000DFD2D1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C9C9C9008181810081818100D3D3D3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CFC1C50020309000203090002030
      800020287000C6A7970000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3C3C3004B4B4B004B4B4B004646
      46003C3C3C00A5A5A50000000000000000000000000000000000000000000000
      00000000000000000000707070005058500000000000D0C0AE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000707070005454540000000000BCBCBC00000000000000
      0000000000000000000000000000000000000000000000000000B0A090006048
      3000604830006048300070584000605060001038C0002050D0001038C0001030
      B0001030A00010207000C5A392000000000000000000000000009C9C9C004343
      4300434343004343430053535300565656005C5C5C00717171005C5C5C005353
      53004E4E4E0036363600A1A1A10000000000000000000000000000000000B0A0
      90007C644D00AD957F00A0A0A000FFFFFF005090B00010101000988A76007B61
      4900604830006048300000000000000000000000000000000000000000009C9C
      9C005F5F5F0090909000A0A0A000FFFFFF009393930010101000858585005C5C
      5C00434343004343430000000000000000000000000000000000B0A09000FFFF
      FF00D0C8C000D0C8C000D0C8C0001040E0004068E0003058E0000038E0000038
      D0001030C0001030A000202870000000000000000000000000009C9C9C00FFFF
      FF00C6C6C600C6C6C600C6C6C6006B6B6B00888888007C7C7C00646464006060
      6000585858004E4E4E003C3C3C0000000000000000000000000000000000D6BA
      A800FFFFFF00F0E8E000A0A0A00090B8C00070D0E0005098B00010101000A098
      9000B0A09000604830000000000000000000000000000000000000000000B7B7
      B700FFFFFF00E6E6E600A0A0A000B6B6B600CBCBCB0098989800101010009696
      96009C9C9C004343430000000000000000000000000000000000B0A09000FFFF
      FF00FFFFFF00FFF8FF00FFF0F0003068F000F0F8FF00FFF8FF00FFF8FF00FFF8
      FF00FFF8FF00FFF8FF00203090000000000000000000000000009C9C9C00FFFF
      FF00FFFFFF00FAFAFA00F1F1F1008B8B8B00F9F9F900FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA004B4B4B000000000000000000B7B3DA000E2BDF00B8AB
      BD00FFFFFF00FFFFFF00E0E0E00050A0B00060A8E00060C0D0005098B0001010
      1000909090007A5F4600000000000000000000000000BFBFBF005E5E5E00B1B1
      B100FFFFFF00FFFFFF00E0E0E0009C9C9C00B1B1B100BBBBBB00989898001010
      1000909090005A5A5A0000000000000000000000000000000000B0A09000FFFF
      FF00FFFFFF00FFFFFF00FFF8F0003068F000FFF8FF00FFF8FF00FFF8FF00FFF8
      FF00FFF8FF00FFF8FF00203090000000000000000000000000009C9C9C00FFFF
      FF00FFFFFF00FFFFFF00F6F6F6008B8B8B00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA004B4B4B0000000000000000000028FF000020F0004050
      D000FFFFFF00FFFFFF00FFFFFF004050E0000010B00090E0F00060C0D0005098
      B000101010008B7D7200000000000000000000000000646464005B5B5B007474
      7400FFFFFF00FFFFFF00FFFFFF00797979003E3E3E00DCDCDC00BBBBBB009898
      9800101010007B7B7B0000000000000000000000000000000000B0A09000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF003060FF0080A0F0006080F0004060E0002058
      E0000038D0001038C0002038A0000000000000000000000000009C9C9C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008A8A8A00B4B4B4009E9E9E00838383007B7B
      7B00606060005C5C5C005454540000000000000000002D51FC001038FF000028
      FF00F0F8FF00FFFFFF009098F0000018C0006078E00060A8B00090E0F00060C0
      D0005098B00010101000CBAF98000000000000000000808080006F6F6F006464
      6400F9F9F900FFFFFF00B1B1B1004848480094949400A3A3A300DCDCDC00BBBB
      BB009898980010101000AAAAAA00000000000000000000000000C0A89000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00D0D8F0003068F00090A8F0006080F0005078
      E0002048D0002038B000C8ACAA00000000000000000000000000A3A3A300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DEDEDE008B8B8B00BBBBBB009E9E9E009393
      93006C6C6C0059595900AEAEAE000000000000000000E7D7DB003050FF002040
      FF0090A0F000C0C8F0000028F0004058F000FFF8F000D0D8E00070B0C00090E0
      F00070C8E0008088800030389000B195950000000000D9D9D900818181007676
      7600B6B6B600D3D3D3006060600083838300F6F6F600D9D9D900AEAEAE00DCDC
      DC00C6C6C6008484840051515100979797000000000000000000C0A8A000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D0D8F0003060F0003060F0003060
      E0002048C000C9B0AF0000000000000000000000000000000000A8A8A800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE0086868600868686008181
      810068686800B2B2B20000000000000000000000000000000000DCD0DC004060
      FF003050FF002040FF003050FF00FFF8FF00FFFFFF00FFF8F000D0D8E00080B0
      C000D0B8B0007088D0006070B000303890000000000000000000D4D4D4008C8C
      8C00818181007676760081818100FAFAFA00FFFFFF00F6F6F600D9D9D900B0B0
      B000B8B8B8009B9B9B0081818100515151000000000000000000C0B0A000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8FF00F0F0F000F0F0F000D0C8
      C000806850000000000000000000000000000000000000000000ACACAC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFAFA00F0F0F000F0F0F000C6C6
      C60063636300000000000000000000000000000000000000000000000000B8B5
      D1004068FF004060FF00D0D8FF00FFFFFF00FFFFFF00FFF8FF00F0F0F000D0D8
      D0006070B0007090E0006078D0006070B000000000000000000000000000BDBD
      BD00919191008C8C8C00E2E2E200FFFFFF00FFFFFF00FAFAFA00F0F0F000D4D4
      D40081818100A4A4A40090909000818181000000000000000000D0B0A000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0F000D0C8
      C000604830000000000000000000000000000000000000000000AEAEAE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F6F600F0F0F000C6C6
      C600434343000000000000000000000000000000000000000000C6C4E2006078
      FF006078FF006080FF005070FF00F0F0FF00FFFFFF00FFFFFF00FFF8F000F0F0
      F000B0A0A0006070B0006070B000D1B2A5000000000000000000CDCDCD009E9E
      9E009E9E9E00A2A2A20097979700F4F4F400FFFFFF00FFFFFF00F6F6F600F0F0
      F000A1A1A1008181810081818100B1B1B1000000000000000000D0B8A000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0A8A000C0A8
      A000604830000000000000000000000000000000000000000000B3B3B300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A8A8A800A8A8
      A8004343430000000000000000000000000000000000B1B6E9005078FF005078
      FF00C0D0FF00FFFFFF007088FF006078FF00D0E0FF00FFFFFF00FFFFFF00B0A0
      9000B0A0900096785E00000000000000000000000000C4C4C4009C9C9C009C9C
      9C00DCDCDC00FFFFFF00A9A9A9009E9E9E00E7E7E700FFFFFF00FFFFFF009C9C
      9C009C9C9C007373730000000000000000000000000000000000D0B8B000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B0A09000604830006048
      3000604830000000000000000000000000000000000000000000B8B8B800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9C9C00434343004343
      430043434300000000000000000000000000859BF3005078FF005078FF00C8BE
      D100FFFFFF00FFFFFF00FFFFFF00B0C8FF008098FF00FFFFFF00B0A090008068
      500080605000604830000000000000000000B3B3B3009C9C9C009C9C9C00C4C4
      C400FFFFFF00FFFFFF00FFFFFF00D6D6D600B4B4B400FFFFFF009C9C9C006363
      63005E5E5E004343430000000000000000000000000000000000D0C0B000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0A89000D0C8C0006048
      3000DFBDA7000000000000000000000000000000000000000000BCBCBC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A3A3A300C6C6C6004343
      4300B9B9B900000000000000000000000000859BF3006585FA00DCD2DC00D8C7
      B600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0A89000D0C8
      C00080685000DEBAA5000000000000000000B3B3B300A4A4A400D6D6D600C3C3
      C300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A3A3A300C6C6
      C60063636300B7B7B70000000000000000000000000000000000E0C0B000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0A8A00060483000E0BE
      AA00000000000000000000000000000000000000000000000000BEBEBE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A8A8A80043434300BBBB
      BB0000000000000000000000000000000000000000000000000000000000D0C0
      B000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0A8A0008070
      6000DFBDA700000000000000000000000000000000000000000000000000BCBC
      BC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A8A8A8006C6C
      6C00B9B9B9000000000000000000000000000000000000000000E0C0B000E0C0
      B000E0C0B000E0C0B000E0C0B000D0C0B000D0B8B000D0B0A000E0C0AD000000
      0000000000000000000000000000000000000000000000000000BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BCBCBC00B8B8B800AEAEAE00BDBDBD000000
      000000000000000000000000000000000000000000000000000000000000E0C0
      B000E0C0B000E0C0B000E0C0B000E0C0B000D0C0B000D0B8B000D0B0A000E0BE
      AA0000000000000000000000000000000000000000000000000000000000BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BCBCBC00B8B8B800AEAEAE00BBBB
      BB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B0A090006048
      3000604830006048300060483000604830006048300060483000604830006048
      30006048300000000000000000000000000000000000000000009C9C9C004343
      4300434343004343430043434300434343004343430043434300434343004343
      4300434343000000000000000000000000000000000000000000C0686000B058
      5000A0505000A0505000A0505000904850009048400090484000804040008038
      40008038400070384000703830000000000000000000000000006E6E6E005E5E
      5E00585858005858580058585800515151004C4C4C004C4C4C00464646004141
      410041414100404040003B3B3B00000000000000000000000000B0A09000FFFF
      FF00B0A09000B0A09000B0A09000B0A09000B0A09000B0A09000B0A09000B0A0
      90006048300000000000000000000000000000000000000000009C9C9C00FFFF
      FF009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C004343430000000000000000000000000000000000D0687000F0909000E080
      8000B048200040302000C0B8B000C0B8B000D0C0C000D0C8C00050505000A040
      3000A0403000A038300070384000000000000000000074747400999999008989
      8900464646002C2C2C00B6B6B600B6B6B600C1C1C100C6C6C600505050004444
      4400444444004040400040404000000000000000000000000000B0A09000FFFF
      FF00FFFFFF00FFF8FF00F0F0F000F0E8E000F0E0D000E0D0D000E0C8C000B0A0
      90006048300000000000000000000000000000000000000000009C9C9C00FFFF
      FF00FFFFFF00FAFAFA00F0F0F000E6E6E600DCDCDC00D1D1D100C8C8C8009C9C
      9C004343430000000000000000000000000000000000D0707000FF98A000F088
      8000E0808000705850004040300090787000F0E0E000F0E8E00090807000A040
      3000A0404000A040300080384000000000000000000079797900A4A4A4009090
      900089898900585858003B3B3B0078787800E1E1E100E6E6E6007C7C7C004444
      4400494949004444440041414100000000000000000000000000B0A09000FFFF
      FF00FFFFFF00FFFFFF00FFF8F000F0F0F000F0E0E000F0D8D000E0D0C000B0A0
      90006048300000000000000000000000000000000000000000009C9C9C00FFFF
      FF00FFFFFF00FFFFFF00F6F6F600F0F0F000E1E1E100D8D8D800CCCCCC009C9C
      9C004343430000000000000000000000000000000000D0787000FFA0A000F090
      9000F0888000705850000000000040403000F0D8D000F0E0D00080786000B048
      4000B0484000A04040008040400000000000000000007E7E7E00A9A9A9009999
      99009090900058585800000000003B3B3B00D8D8D800DCDCDC00717171005050
      5000505050004949490046464600000000000000000000000000B0A09000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF0F000F0E8E000F0E0E000E0D8D000B0A0
      90006048300000000000000000000000000000000000000000009C9C9C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F1F1F100E6E6E600E1E1E100D6D6D6009C9C
      9C004343430000000000000000000000000000000000D0788000FFA8B000FFA0
      A000F0909000705850007058500070585000705850007060500080686000C058
      5000B0505000B048400080404000000000000000000083838300B3B3B300A9A9
      A90099999900585858005858580058585800585858005C5C5C00686868006060
      6000595959005050500046464600000000000000000000000000C0A89000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0F000F0E8E000F0D8D000B0A0
      9000604830000000000000000000000000000000000000000000A3A3A300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F6F6F600F0F0F000E6E6E600D8D8D8009C9C
      9C004343430000000000000000000000000000000000E0808000FFB0B000FFB0
      B000FFA0A000F0909000F0888000E0808000E0788000D0707000D0687000C060
      6000C0585000B050500090484000000000000000000089898900B7B7B700B7B7
      B700A9A9A9009999990090909000898989008484840079797900747474006969
      690060606000595959004C4C4C00000000000000000000000000C0A8A000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0E8E000F0E0E000B0A0
      9000604830000000000000000000000000000000000000000000A8A8A800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F6F600E6E6E600E1E1E1009C9C
      9C004343430000000000000000000000000000000000E0889000FFB8C000FFB8
      B000D0606000C0605000C0585000C0504000B0503000B0483000A0402000A038
      1000C0606000C058500090484000000000000000000093939300C1C1C100BCBC
      BC006B6B6B00646464006060600056565600505050004B4B4B00404040003636
      360069696900606060004C4C4C00000000000000000000000000C0B0A000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8FF00F0F0F000F0E8E000B0A0
      9000604830000000000000000000000000000000000000000000ACACAC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFAFA00F0F0F000E6E6E6009C9C
      9C004343430000000000000000000000000000000000E0909000FFC0C000D068
      6000FFFFFF00FFFFFF00FFF8F000F0F0F000F0E8E000F0D8D000E0D0C000E0C8
      C000A0381000C060600090485000000000000000000098989800C6C6C6007070
      7000FFFFFF00FFFFFF00F6F6F600F0F0F000E6E6E600D8D8D800CCCCCC00C8C8
      C800363636006969690051515100000000000000000000000000D0B0A000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0F000B0A0
      9000604830000000000000000000000000000000000000000000AEAEAE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F6F600F0F0F0009C9C
      9C004343430000000000000000000000000000000000E098A000FFC0C000D070
      7000FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0F000F0E8E000F0D8D000E0D0
      C000A0402000D0686000A05050000000000000000000A1A1A100C6C6C6007979
      7900FFFFFF00FFFFFF00FFFFFF00F6F6F600F0F0F000E6E6E600D8D8D800CCCC
      CC00404040007070700058585800000000000000000000000000D0B8A000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B0A09000B0A0
      9000604830000000000000000000000000000000000000000000B3B3B300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9C9C009C9C
      9C004343430000000000000000000000000000000000F0A0A000FFC0C000E078
      7000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0F000F0E8E000F0D8
      D000B0483000D0707000A05050000000000000000000A8A8A800C6C6C6008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F6F600F0F0F000E6E6E600D8D8
      D8004B4B4B007979790058585800000000000000000000000000D0B8B000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B0A09000604830006048
      3000604830000000000000000000000000000000000000000000B8B8B800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9C9C00434343004343
      43004343430000000000000000000000000000000000F0A8A000FFC0C000E080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0F000F0E8
      E000B0503000E0788000A05050000000000000000000ACACAC00C6C6C6008989
      8900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F6F600F0F0F000E6E6
      E600505050008484840058585800000000000000000000000000D0C0B000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0A89000D0C8C0006048
      3000DACAC1000000000000000000000000000000000000000000BCBCBC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A3A3A300C6C6C6004343
      4300C8C8C80000000000000000000000000000000000F0B0B000FFC0C000F088
      9000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0
      F000C050400060303000B05850000000000000000000B6B6B600C6C6C6009494
      9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F6F600F0F0
      F00056565600343434005E5E5E00000000000000000000000000E0C0B000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0A8A00060483000DBCA
      C200000000000000000000000000000000000000000000000000BEBEBE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A8A8A80043434300C9C9
      C9000000000000000000000000000000000000000000F0B0B000FFC0C000FF90
      9000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8
      F000C0585000B0586000B05860000000000000000000B6B6B600C6C6C6009B9B
      9B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F6
      F600606060006363630063636300000000000000000000000000E0C0B000E0C0
      B000E0C0B000E0C0B000E0C0B000D0C0B000D0B8B000D0B0A000DCCAC2000000
      0000000000000000000000000000000000000000000000000000BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BCBCBC00B8B8B800AEAEAE00C9C9C9000000
      00000000000000000000000000000000000000000000F0B8B000F0B8B000F0B0
      B000F0B0B000F0A8B000F0A0A000E098A000E0909000E0909000E0889000E080
      8000D0788000D0787000D07070000000000000000000BBBBBB00BBBBBB00B6B6
      B600B6B6B600B1B1B100A8A8A800A1A1A1009898980098989800939393008989
      8900838383007E7E7E0079797900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000B00000000100010000000000800500000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000C001C001C0010000
      DFFDC001C0010000DCFDC001C0010000D87DC001C0010000D01DC001C0010000
      D11DC001C0010000DB8DC001C0010000DFC5C001C0010000DFE1C001C0010000
      D801C001C0010000DBCDC001C0010000DC5DC001C0010000C1C1C001C0010000
      FC1FFFFFFFFF0000FFFFFFFFFFFF0000FFFFE01FE01FFFFF8001E01FE01FC001
      9001E01FE01FC0019B51E01FE01FC0019EA9E010E010C0019F51E01FE01FC001
      A0E9E019E019C001A63DE010E010C001AF05E039E039C001AF01E079E079C001
      A601BFF9BFF9C001A0019FFF9FFFC001BFFD8FF98FF9C00180019FFF9FFFC001
      FFFFBFF9BFF9FC1FFFFFFFFFFFFFFFFFFFFFFF83FF83FFFFFC00FF01FF018001
      80009E009EE0800100000E000EE080010000060046E0800100008200A2E08001
      0001C200DAE080010003E000E40080010007F800F8E880010007F801FB7D8001
      0007F803FB8380010007F807FBF780010007F807FBF78001800FFC0FFDEF8001
      F8FFFE1FFE1FFFFFFFFFFFFFFFFFFFFFFFF1FFF1F800F80080008000F800F800
      8000800000000000800080000000000080018001000000008003800300000000
      800780070000000080078007000000008007800700000000800F800F00000000
      800F800F00070007800F800F00070007801F801F00F800F8803F803F01F801F8
      807F807FFF90FF90FFFFFFFFFF83FF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFC0FFC0FFC0FFC0FFFFFFFFFFFFFFFFFFF0FFF0FFF0FFF0FFFFFFFFFFFFFFFF
      FFF0FFF0FFF0FFF0E1FFE1FFFFFFFFFFE1C0E1C0FFC0FFC0807F807FFFFFFFFF
      8070807080708070807F807F807F807F8070807080708070E1FFE1FF807F807F
      E1C0E1C0FFC0FFC0FFFFFFFFFFFFFFFFFFFFFFFF80018001000F000F00000000
      000F000F00000000000F000F00000000000F000F00000000000F000F00000000
      000F000F00000000000F000F00000000000C000C000000000000000000000000
      00000000000000000000000000000000F800F80000000000FC00FC0000000000
      FE00FE0000000000FFFFFFFF80018001FFFFFFFFFF80FF8080038003FF80FF80
      00010001E180E18000010001E780E78000010001EF80EF8000010001C780C780
      00010001C780C78000010001FFFFFFFF00010001FFFFFFFF8001800101E301E3
      C001C00101E301E3E003E00301F701F7E003E00301E701E7F001F00101870187
      F803F80301FF01FFFFFFFFFF01FF01FFFFFFFFFFFFFFFFFFFE3FFE3FFFFFFFFF
      FC1FFC1FFFFFFFFFC001C001F9FFF9FFC001C001F0FFF0FF80018001E0FFE0FF
      00010001C07FC07F00010001843F843F000100018E1F8E1F000100019F0F9F0F
      80018001FF87FF87C001C001FFC3FFC3C001C001FFE3FFE3C001C001FFF3FFF3
      C001C001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF00FFFFFFFFF
      E007E007FFFFFFFFC003C003000F000F80018001000F000F80018001000F000F
      80018001000F000F80018001000F000F80018001000F000F8001800100070007
      80018001000300038001800100010001C003C00300000000E007E00700000000
      F00FF00FFFE0FFE0FFFFFFFFFFF0FFF0FFFFFFFFFF03FF03FC3FFC3FC001C001
      E003E003C001C001E003E003C001C00180038003C001C00180038003C001C001
      80018001C001C00180008000C003C003C000C000C007C007E000E000C007C007
      C000C000C007C00780038003C007C00700030003C007C00700030003C00FC00F
      E007E007C01FC01FE00FE00FFFFFFFFFFFFFFFFFFFFFFFFFC007C007C001C001
      C007C00780018001C007C00780018001C007C00780018001C007C00780018001
      C007C00780018001C007C00780018001C007C00780018001C007C00780018001
      C007C00780018001C007C00780018001C007C00780018001C00FC00F80018001
      C01FC01F80018001FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited fdQryTabela: TFDQuery
    BeforePost = fdQryTabelaBeforePost
    AfterScroll = fdQryTabelaAfterScroll
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CLIENTE_ID'
    UpdateOptions.KeyFields = 'CODIGO'
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'Select'
      '    cl.Codigo'
      '  , cl.Pessoa_fisica'
      '  , cl.Cnpj'
      '  , cl.Tipo'
      '  , cl.Nome'
      '  , cl.NomeFant'
      '  , cl.Inscest'
      '  , cl.Inscmun'
      '  , cl.Ender'
      '  , cl.Complemento'
      '  , cl.Numero_end'
      '  , cl.Bairro'
      '  , cl.Cep'
      '  , cl.Cidade'
      '  , cl.Uf'
      '  , cl.Fone'
      '  , cl.FoneCel'
      '  , cl.FoneComerc'
      '  , cl.Tlg_tipo'
      '  , cl.Log_cod'
      '  , cl.Bai_cod'
      '  , cl.Cid_cod'
      '  , cl.Est_cod'
      '  , cl.Email'
      '  , cl.Site'
      '  , cl.Pais_id'
      '  , cl.Valor_limite_compra'
      '  , cl.Vendedor_cod'
      '  , cl.DtCad'
      '  , cl.Bloqueado'
      '  , cl.Bloqueado_data'
      '  , cl.Bloqueado_motivo'
      '  , cl.Bloqueado_usuario'
      '  , cl.Bloqueado_automatico'
      '  , cl.DesBloqueado_data'
      '  , cl.Usuario'
      '  , cl.emitir_nfe_devolucao'
      '  , cl.custo_oper_percentual'
      '  , cl.custo_oper_frete'
      '  , cl.custo_oper_outros'
      '  , cl.entrega_fracionada_venda'
      '  , cl.banco'
      '  , cl.agencia'
      '  , cl.cc'
      '  , cl.praca'
      '  , cl.banco_2'
      '  , cl.agencia_2'
      '  , cl.cc_2'
      '  , cl.praca_2'
      '  , cl.banco_3'
      '  , cl.agencia_3'
      '  , cl.cc_3'
      '  , cl.praca_3'
      '  , cl.observacao'
      '  , cl.ativo'
      
        '  , coalesce( cast(coalesce(coalesce(t.Tlg_sigla, t.Tlg_descrica' +
        'o) || '#39' '#39', '#39#39') || l.Log_nome as varchar(250)), cl.Ender ) as Log' +
        'radouro'
      '  , coalesce(c.Cid_nome, cl.Cidade) as Cid_nome'
      '  , coalesce(u.Est_nome, cl.Uf) as Est_nome'
      '  , p.Pais_nome'
      '  , est.produtos'
      '  , est.valores'
      'from TBCLIENTE cl'
      '  left join TBTIPO_LOGRADOURO t on (t.Tlg_cod = cl.Tlg_tipo)'
      '  left join TBLOGRADOURO l on (l.Log_cod = cl.Log_cod)'
      '  left join TBCIDADE c on (c.Cid_cod = cl.Cid_cod)'
      '  left join TBESTADO u on (u.Est_cod = cl.Est_cod)'
      '  left join TBPAIS p on (p.Pais_id = cl.Pais_id)'
      '  left join ('
      '    Select'
      '        x.cod_cliente'
      '      , count(x.cod_produto) as produtos'
      '      , sum(x.quantidade * x.valor_medio) as valores'
      '    from TBCLIENTE_ESTOQUE x'
      '    where (x.cod_cliente <> 1)'
      '    group by'
      '        x.cod_cliente'
      '  ) est on (est.cod_cliente = cl.codigo)')
    object fdQryTabelaCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQryTabelaPESSOA_FISICA: TSmallintField
      DisplayLabel = 'Pessoa F'#237'sica'
      FieldName = 'PESSOA_FISICA'
      Origin = 'PESSOA_FISICA'
      Required = True
    end
    object fdQryTabelaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      Size = 18
    end
    object fdQryTabelaTIPO: TSmallintField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
    end
    object fdQryTabelaNOME: TStringField
      DisplayLabel = 'Nome / Raz'#227'o Social'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object fdQryTabelaNOMEFANT: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'NOMEFANT'
      Origin = 'NOMEFANT'
      Size = 100
    end
    object fdQryTabelaINSCEST: TStringField
      DisplayLabel = 'RG / Inscri'#231#227'o Estadual'
      FieldName = 'INSCEST'
      Origin = 'INSCEST'
    end
    object fdQryTabelaINSCMUN: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      FieldName = 'INSCMUN'
      Origin = 'INSCMUN'
    end
    object fdQryTabelaENDER: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDER'
      Origin = 'ENDER'
      Size = 250
    end
    object fdQryTabelaCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 50
    end
    object fdQryTabelaNUMERO_END: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO_END'
      Origin = 'NUMERO_END'
      Required = True
      Size = 10
    end
    object fdQryTabelaBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 100
    end
    object fdQryTabelaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 8
    end
    object fdQryTabelaCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 30
    end
    object fdQryTabelaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
    object fdQryTabelaFONE: TStringField
      DisplayLabel = 'Telefone Fixo'
      FieldName = 'FONE'
      Origin = 'FONE'
      EditMask = '!\(00\)0000-0000;1; '
      Size = 11
    end
    object fdQryTabelaFONECEL: TStringField
      DisplayLabel = 'Telefone Celular'
      FieldName = 'FONECEL'
      Origin = 'FONECEL'
      EditMask = '!\(00\)00000-0000;1; '
      Size = 11
    end
    object fdQryTabelaFONECOMERC: TStringField
      DisplayLabel = 'Telefone Comercial'
      FieldName = 'FONECOMERC'
      Origin = 'FONECOMERC'
      EditMask = '!\(00\)0000-0000;1; '
      Size = 11
    end
    object fdQryTabelaTLG_TIPO: TSmallintField
      DisplayLabel = 'Tipo End.'
      FieldName = 'TLG_TIPO'
      Origin = 'TLG_TIPO'
    end
    object fdQryTabelaLOG_COD: TIntegerField
      DisplayLabel = 'Logradouro'
      FieldName = 'LOG_COD'
      Origin = 'LOG_COD'
    end
    object fdQryTabelaBAI_COD: TIntegerField
      DisplayLabel = 'Bairro'
      FieldName = 'BAI_COD'
      Origin = 'BAI_COD'
    end
    object fdQryTabelaCID_COD: TIntegerField
      DisplayLabel = 'Cidade'
      FieldName = 'CID_COD'
      Origin = 'CID_COD'
    end
    object fdQryTabelaEST_COD: TSmallintField
      DisplayLabel = 'Estado'
      FieldName = 'EST_COD'
      Origin = 'EST_COD'
    end
    object fdQryTabelaEMAIL: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 60
    end
    object fdQryTabelaSITE: TStringField
      DisplayLabel = 'Home page'
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 40
    end
    object fdQryTabelaPAIS_ID: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'PAIS_ID'
      Origin = 'PAIS_ID'
      Size = 5
    end
    object fdQryTabelaVALOR_LIMITE_COMPRA: TBCDField
      DisplayLabel = 'Valor Limite p/ Compra'
      FieldName = 'VALOR_LIMITE_COMPRA'
      Origin = 'VALOR_LIMITE_COMPRA'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object fdQryTabelaVENDEDOR_COD: TIntegerField
      DisplayLabel = 'Vendedor repons'#225'vel'
      FieldName = 'VENDEDOR_COD'
      Origin = 'VENDEDOR_COD'
    end
    object fdQryTabelaBLOQUEADO: TSmallintField
      FieldName = 'BLOQUEADO'
      Origin = 'BLOQUEADO'
      Required = True
    end
    object fdQryTabelaBLOQUEADO_DATA: TDateField
      FieldName = 'BLOQUEADO_DATA'
      Origin = 'BLOQUEADO_DATA'
    end
    object fdQryTabelaBLOQUEADO_MOTIVO: TMemoField
      FieldName = 'BLOQUEADO_MOTIVO'
      Origin = 'BLOQUEADO_MOTIVO'
      BlobType = ftMemo
    end
    object fdQryTabelaBLOQUEADO_USUARIO: TStringField
      FieldName = 'BLOQUEADO_USUARIO'
      Origin = 'BLOQUEADO_USUARIO'
      Size = 50
    end
    object fdQryTabelaBLOQUEADO_AUTOMATICO: TSmallintField
      FieldName = 'BLOQUEADO_AUTOMATICO'
      Origin = 'BLOQUEADO_AUTOMATICO'
      Required = True
    end
    object fdQryTabelaDESBLOQUEADO_DATA: TDateField
      FieldName = 'DESBLOQUEADO_DATA'
      Origin = 'DESBLOQUEADO_DATA'
    end
    object fdQryTabelaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object fdQryTabelaEMITIR_NFE_DEVOLUCAO: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'EMITIR_NFE_DEVOLUCAO'
      Origin = 'EMITIR_NFE_DEVOLUCAO'
    end
    object fdQryTabelaCUSTO_OPER_PERCENTUAL: TSmallintField
      FieldName = 'CUSTO_OPER_PERCENTUAL'
      Origin = 'CUSTO_OPER_PERCENTUAL'
    end
    object fdQryTabelaCUSTO_OPER_FRETE: TBCDField
      FieldName = 'CUSTO_OPER_FRETE'
      Origin = 'CUSTO_OPER_FRETE'
      DisplayFormat = ',0.00#'
      Precision = 18
    end
    object fdQryTabelaCUSTO_OPER_OUTROS: TBCDField
      FieldName = 'CUSTO_OPER_OUTROS'
      Origin = 'CUSTO_OPER_OUTROS'
      DisplayFormat = ',0.00#'
      Precision = 18
    end
    object fdQryTabelaENTREGA_FRACIONADA_VENDA: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'ENTREGA_FRACIONADA_VENDA'
      Origin = 'ENTREGA_FRACIONADA_VENDA'
      Required = True
    end
    object fdQryTabelaBANCO: TStringField
      DisplayLabel = 'Banco (1)'
      FieldName = 'BANCO'
      Origin = 'BANCO'
      Size = 10
    end
    object fdQryTabelaAGENCIA: TStringField
      DisplayLabel = 'Ag'#234'ncia (1)'
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
      Size = 10
    end
    object fdQryTabelaCC: TStringField
      DisplayLabel = 'N'#250'mero da Conta (1)'
      FieldName = 'CC'
      Origin = 'CC'
      Size = 10
    end
    object fdQryTabelaPRACA: TStringField
      DisplayLabel = 'Pra'#231'a de Cobran'#231'a'
      FieldName = 'PRACA'
      Origin = 'PRACA'
      Size = 250
    end
    object fdQryTabelaBANCO_2: TStringField
      DisplayLabel = 'Banco (2)'
      FieldName = 'BANCO_2'
      Origin = 'BANCO_2'
      Size = 10
    end
    object fdQryTabelaAGENCIA_2: TStringField
      DisplayLabel = 'Ag'#234'ncia (2)'
      FieldName = 'AGENCIA_2'
      Origin = 'AGENCIA_2'
      Size = 10
    end
    object fdQryTabelaCC_2: TStringField
      DisplayLabel = 'N'#250'mero da Conta (2)'
      FieldName = 'CC_2'
      Origin = 'CC_2'
      Size = 10
    end
    object fdQryTabelaPRACA_2: TStringField
      FieldName = 'PRACA_2'
      Origin = 'PRACA_2'
      Size = 250
    end
    object fdQryTabelaBANCO_3: TStringField
      DisplayLabel = 'Banco (3)'
      FieldName = 'BANCO_3'
      Origin = 'BANCO_3'
      Size = 10
    end
    object fdQryTabelaAGENCIA_3: TStringField
      DisplayLabel = 'Ag'#234'ncia (3)'
      FieldName = 'AGENCIA_3'
      Origin = 'AGENCIA_3'
      Size = 10
    end
    object fdQryTabelaCC_3: TStringField
      DisplayLabel = 'N'#250'mero da Conta (3)'
      FieldName = 'CC_3'
      Origin = 'CC_3'
      Size = 10
    end
    object fdQryTabelaPRACA_3: TStringField
      FieldName = 'PRACA_3'
      Origin = 'PRACA_3'
      Size = 250
    end
    object fdQryTabelaOBSERVACAO: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object fdQryTabelaATIVO: TSmallintField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
    end
    object fdQryTabelaLOGRADOURO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Logradouro'
      FieldName = 'LOGRADOURO'
      Origin = 'LOGRADOURO'
      ProviderFlags = []
      Size = 250
    end
    object fdQryTabelaCID_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CID_NOME'
      Origin = 'CID_NOME'
      ProviderFlags = []
      Size = 100
    end
    object fdQryTabelaEST_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EST_NOME'
      Origin = 'EST_NOME'
      ProviderFlags = []
      Size = 100
    end
    object fdQryTabelaPAIS_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAIS_NOME'
      Origin = 'PAIS_NOME'
      ProviderFlags = []
      Size = 150
    end
    object fdQryTabelaPRODUTOS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTOS'
      Origin = 'PRODUTOS'
      ProviderFlags = []
    end
    object fdQryTabelaVALORES: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORES'
      Origin = 'VALORES'
      ProviderFlags = []
      Precision = 18
      Size = 7
    end
    object fdQryTabelaDTCAD: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DTCAD'
      Origin = 'DTCAD'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  inherited fdUpdTabela: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO TBCLIENTE'
      '(CODIGO, TIPO, PESSOA_FISICA, CNPJ, NOME, '
      '  NOMEFANT, INSCEST, INSCMUN, ENDER, COMPLEMENTO, '
      '  BAIRRO, CEP, CIDADE, UF, FONE, '
      '  FONECEL, FONECOMERC, EMAIL, SITE, TLG_TIPO, '
      '  LOG_COD, BAI_COD, CID_COD, EST_COD, '
      '  NUMERO_END, PAIS_ID, VALOR_LIMITE_COMPRA, '
      '  BLOQUEADO, BLOQUEADO_DATA, BLOQUEADO_MOTIVO, '
      '  BLOQUEADO_USUARIO, BLOQUEADO_AUTOMATICO, DESBLOQUEADO_DATA, '
      '  VENDEDOR_COD, USUARIO, EMITIR_NFE_DEVOLUCAO, '
      '  CUSTO_OPER_PERCENTUAL, CUSTO_OPER_FRETE, CUSTO_OPER_OUTROS, '
      '  ENTREGA_FRACIONADA_VENDA, BANCO, AGENCIA, '
      '  CC, PRACA, BANCO_2, AGENCIA_2, CC_2, '
      '  PRACA_2, BANCO_3, AGENCIA_3, CC_3, PRACA_3, '
      '  OBSERVACAO, DTCAD, ATIVO)'
      
        'VALUES (:NEW_CODIGO, :NEW_TIPO, :NEW_PESSOA_FISICA, :NEW_CNPJ, :' +
        'NEW_NOME, '
      
        '  :NEW_NOMEFANT, :NEW_INSCEST, :NEW_INSCMUN, :NEW_ENDER, :NEW_CO' +
        'MPLEMENTO, '
      '  :NEW_BAIRRO, :NEW_CEP, :NEW_CIDADE, :NEW_UF, :NEW_FONE, '
      
        '  :NEW_FONECEL, :NEW_FONECOMERC, :NEW_EMAIL, :NEW_SITE, :NEW_TLG' +
        '_TIPO, '
      '  :NEW_LOG_COD, :NEW_BAI_COD, :NEW_CID_COD, :NEW_EST_COD, '
      '  :NEW_NUMERO_END, :NEW_PAIS_ID, :NEW_VALOR_LIMITE_COMPRA, '
      '  :NEW_BLOQUEADO, :NEW_BLOQUEADO_DATA, :NEW_BLOQUEADO_MOTIVO, '
      
        '  :NEW_BLOQUEADO_USUARIO, :NEW_BLOQUEADO_AUTOMATICO, :NEW_DESBLO' +
        'QUEADO_DATA, '
      '  :NEW_VENDEDOR_COD, :NEW_USUARIO, :NEW_EMITIR_NFE_DEVOLUCAO, '
      
        '  :NEW_CUSTO_OPER_PERCENTUAL, :NEW_CUSTO_OPER_FRETE, :NEW_CUSTO_' +
        'OPER_OUTROS, '
      '  :NEW_ENTREGA_FRACIONADA_VENDA, :NEW_BANCO, :NEW_AGENCIA, '
      '  :NEW_CC, :NEW_PRACA, :NEW_BANCO_2, :NEW_AGENCIA_2, :NEW_CC_2, '
      
        '  :NEW_PRACA_2, :NEW_BANCO_3, :NEW_AGENCIA_3, :NEW_CC_3, :NEW_PR' +
        'ACA_3, '
      '  :NEW_OBSERVACAO, :NEW_DTCAD, :NEW_ATIVO)'
      'RETURNING CODIGO, DTCAD')
    ModifySQL.Strings = (
      'UPDATE TBCLIENTE'
      
        'SET CODIGO = :NEW_CODIGO, TIPO = :NEW_TIPO, PESSOA_FISICA = :NEW' +
        '_PESSOA_FISICA, '
      '  CNPJ = :NEW_CNPJ, NOME = :NEW_NOME, NOMEFANT = :NEW_NOMEFANT, '
      
        '  INSCEST = :NEW_INSCEST, INSCMUN = :NEW_INSCMUN, ENDER = :NEW_E' +
        'NDER, '
      
        '  COMPLEMENTO = :NEW_COMPLEMENTO, BAIRRO = :NEW_BAIRRO, CEP = :N' +
        'EW_CEP, '
      
        '  CIDADE = :NEW_CIDADE, UF = :NEW_UF, FONE = :NEW_FONE, FONECEL ' +
        '= :NEW_FONECEL, '
      
        '  FONECOMERC = :NEW_FONECOMERC, EMAIL = :NEW_EMAIL, SITE = :NEW_' +
        'SITE, '
      
        '  TLG_TIPO = :NEW_TLG_TIPO, LOG_COD = :NEW_LOG_COD, BAI_COD = :N' +
        'EW_BAI_COD, '
      
        '  CID_COD = :NEW_CID_COD, EST_COD = :NEW_EST_COD, NUMERO_END = :' +
        'NEW_NUMERO_END, '
      
        '  PAIS_ID = :NEW_PAIS_ID, VALOR_LIMITE_COMPRA = :NEW_VALOR_LIMIT' +
        'E_COMPRA, '
      
        '  BLOQUEADO = :NEW_BLOQUEADO, BLOQUEADO_DATA = :NEW_BLOQUEADO_DA' +
        'TA, '
      
        '  BLOQUEADO_MOTIVO = :NEW_BLOQUEADO_MOTIVO, BLOQUEADO_USUARIO = ' +
        ':NEW_BLOQUEADO_USUARIO, '
      
        '  BLOQUEADO_AUTOMATICO = :NEW_BLOQUEADO_AUTOMATICO, DESBLOQUEADO' +
        '_DATA = :NEW_DESBLOQUEADO_DATA, '
      '  VENDEDOR_COD = :NEW_VENDEDOR_COD, USUARIO = :NEW_USUARIO, '
      
        '  EMITIR_NFE_DEVOLUCAO = :NEW_EMITIR_NFE_DEVOLUCAO, CUSTO_OPER_P' +
        'ERCENTUAL = :NEW_CUSTO_OPER_PERCENTUAL, '
      
        '  CUSTO_OPER_FRETE = :NEW_CUSTO_OPER_FRETE, CUSTO_OPER_OUTROS = ' +
        ':NEW_CUSTO_OPER_OUTROS, '
      '  ENTREGA_FRACIONADA_VENDA = :NEW_ENTREGA_FRACIONADA_VENDA, '
      '  BANCO = :NEW_BANCO, AGENCIA = :NEW_AGENCIA, CC = :NEW_CC, '
      
        '  PRACA = :NEW_PRACA, BANCO_2 = :NEW_BANCO_2, AGENCIA_2 = :NEW_A' +
        'GENCIA_2, '
      
        '  CC_2 = :NEW_CC_2, PRACA_2 = :NEW_PRACA_2, BANCO_3 = :NEW_BANCO' +
        '_3, '
      
        '  AGENCIA_3 = :NEW_AGENCIA_3, CC_3 = :NEW_CC_3, PRACA_3 = :NEW_P' +
        'RACA_3, '
      
        '  OBSERVACAO = :NEW_OBSERVACAO, DTCAD = :NEW_DTCAD, ATIVO = :NEW' +
        '_ATIVO'
      'WHERE CODIGO = :OLD_CODIGO'
      'RETURNING CODIGO, DTCAD')
    DeleteSQL.Strings = (
      'DELETE FROM TBCLIENTE'
      'WHERE CODIGO = :OLD_CODIGO')
    FetchRowSQL.Strings = (
      'Select'
      '    cl.Codigo'
      '  , cl.Pessoa_fisica'
      '  , cl.Cnpj'
      '  , cl.Tipo'
      '  , cl.Nome'
      '  , cl.NomeFant'
      '  , cl.Inscest'
      '  , cl.Inscmun'
      '  , cl.Ender'
      '  , cl.Complemento'
      '  , cl.Numero_end'
      '  , cl.Bairro'
      '  , cl.Cep'
      '  , cl.Cidade'
      '  , cl.Uf'
      '  , cl.Fone'
      '  , cl.FoneCel'
      '  , cl.FoneComerc'
      '  , cl.Tlg_tipo'
      '  , cl.Log_cod'
      '  , cl.Bai_cod'
      '  , cl.Cid_cod'
      '  , cl.Est_cod'
      '  , cl.Email'
      '  , cl.Site'
      '  , cl.Pais_id'
      '  , cl.Valor_limite_compra'
      '  , cl.Vendedor_cod'
      '  , cl.DtCad'
      '  , cl.Bloqueado'
      '  , cl.Bloqueado_data'
      '  , cl.Bloqueado_motivo'
      '  , cl.Bloqueado_usuario'
      '  , cl.Bloqueado_automatico'
      '  , cl.DesBloqueado_data'
      '  , cl.Usuario'
      '  , cl.emitir_nfe_devolucao'
      '  , cl.custo_oper_percentual'
      '  , cl.custo_oper_frete'
      '  , cl.custo_oper_outros'
      '  , cl.entrega_fracionada_venda'
      '  , cl.banco'
      '  , cl.agencia'
      '  , cl.cc'
      '  , cl.praca'
      '  , cl.banco_2'
      '  , cl.agencia_2'
      '  , cl.cc_2'
      '  , cl.praca_2'
      '  , cl.banco_3'
      '  , cl.agencia_3'
      '  , cl.cc_3'
      '  , cl.praca_3'
      '  , cl.observacao'
      '  , cl.ativo'
      
        '  , coalesce( cast(coalesce(coalesce(t.Tlg_sigla, t.Tlg_descrica' +
        'o) || '#39' '#39', '#39#39') || l.Log_nome as varchar(250)), cl.Ender ) as Log' +
        'radouro'
      '  , coalesce(c.Cid_nome, cl.Cidade) as Cid_nome'
      '  , coalesce(u.Est_nome, cl.Uf) as Est_nome'
      '  , p.Pais_nome'
      '  , est.produtos'
      '  , est.valores'
      'from TBCLIENTE cl'
      '  left join TBTIPO_LOGRADOURO t on (t.Tlg_cod = cl.Tlg_tipo)'
      '  left join TBLOGRADOURO l on (l.Log_cod = cl.Log_cod)'
      '  left join TBCIDADE c on (c.Cid_cod = cl.Cid_cod)'
      '  left join TBESTADO u on (u.Est_cod = cl.Est_cod)'
      '  left join TBPAIS p on (p.Pais_id = cl.Pais_id)'
      '  left join ('
      '    Select'
      '        x.cod_cliente'
      '      , count(x.cod_produto) as produtos'
      '      , sum(x.quantidade * x.valor_medio) as valores'
      '    from TBCLIENTE_ESTOQUE x'
      '    where (x.cod_cliente <> 1)'
      '    group by'
      '        x.cod_cliente'
      '  ) est on (est.cod_cliente = cl.codigo)'
      ''
      'WHERE cl.CODIGO = :CODIGO')
  end
  object cdsTotalComprasAbertas: TDataSource
    DataSet = fdQryTotalComprasAbertas
    Left = 536
    Top = 337
  end
  object dtsTitulos: TDataSource
    DataSet = fdQryTitulos
    Left = 536
    Top = 369
  end
  object dtsVendedor: TDataSource
    DataSet = fdQryVendedor
    Left = 600
    Top = 336
  end
  object popProcesso: TPopupMenu
    Images = ImgList
    Left = 768
    Top = 422
    object mpClienteBloquear: TMenuItem
      Caption = '&Bloquear'
      ImageIndex = 37
      OnClick = mpClienteBloquearClick
    end
    object mpClienteDesbloquear: TMenuItem
      Caption = '&Desbloquear '
      ImageIndex = 39
      OnClick = mpClienteDesbloquearClick
    end
  end
  object ACBrConsultaCNPJ: TACBrConsultaCNPJ
    ProxyPort = '8080'
    PesquisarIBGE = False
    Left = 776
    Top = 352
  end
  object ACBrConsultaCPF: TACBrConsultaCPF
    ProxyPort = '8080'
    Left = 776
    Top = 304
  end
  object DtsEstoqueSatelite: TDataSource
    AutoEdit = False
    DataSet = QryEstoqueSatelite
    Left = 648
    Top = 216
  end
  object dtsTipoCnpj: TDataSource
    DataSet = fdQryTipoCnpj
    Left = 600
    Top = 368
  end
  object dtsBancoFebraban: TDataSource
    DataSet = fdQryBancoFebraban
    Left = 600
    Top = 400
  end
  object fdQryBancoFebraban: TFDQuery
    Connection = DMBusiness.fdConexao
    Transaction = DMBusiness.fdTransacao
    UpdateTransaction = DMBusiness.fdTransacao
    SQL.Strings = (
      'Select'
      '    b.codigo'
      '  , b.nome'
      '  , b.codigo_nome'
      '  , b.nome_codigo'
      'from VW_BANCO_FEBRABAN b'
      ''
      'order by'
      '    b.nome')
    Left = 568
    Top = 398
  end
  object fdQryTipoCnpj: TFDQuery
    Connection = DMBusiness.fdConexao
    Transaction = DMBusiness.fdTransacao
    UpdateTransaction = DMBusiness.fdTransacao
    SQL.Strings = (
      'Select'
      '    t.codigo'
      '  , t.descricao'
      'from VW_TIPO_CNPJ t')
    Left = 568
    Top = 366
  end
  object fdQryVendedor: TFDQuery
    Connection = DMBusiness.fdConexao
    Transaction = DMBusiness.fdTransacao
    UpdateTransaction = DMBusiness.fdTransacao
    SQL.Strings = (
      'Select'
      '    v.cod'
      '  , trim(v.nome) as nome'
      '  , v.cpf'
      '  , v.ativo'
      'from TBVENDEDOR v'
      'order by'
      '    trim(v.nome)')
    Left = 568
    Top = 334
  end
  object fdQryTotalComprasAbertas: TFDQuery
    Connection = DMBusiness.fdConexao
    Transaction = DMBusiness.fdTransacao
    UpdateTransaction = DMBusiness.fdTransacao
    SQL.Strings = (
      'Select'
      '    g.Valor_limite'
      '  , g.Valor_compras_abertas'
      '  , g.Valor_limite_disponivel'
      'from GET_LIMITE_DISPONIVEL_CLIENTE(:CLIENTE) g')
    Left = 504
    Top = 336
    ParamData = <
      item
        Name = 'CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdQryTotalComprasAbertasVALOR_LIMITE: TBCDField
      FieldName = 'VALOR_LIMITE'
      Origin = 'VALOR_LIMITE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object fdQryTotalComprasAbertasVALOR_COMPRAS_ABERTAS: TBCDField
      FieldName = 'VALOR_COMPRAS_ABERTAS'
      Origin = 'VALOR_COMPRAS_ABERTAS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object fdQryTotalComprasAbertasVALOR_LIMITE_DISPONIVEL: TBCDField
      FieldName = 'VALOR_LIMITE_DISPONIVEL'
      Origin = 'VALOR_LIMITE_DISPONIVEL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object fdQryTitulos: TFDQuery
    Connection = DMBusiness.fdConexao
    Transaction = DMBusiness.fdTransacao
    UpdateTransaction = DMBusiness.fdTransacao
    SQL.Strings = (
      'Select'
      '    1 as tipo -- T'#237'tulos em aberto'
      '  , r.Anolanc'
      '  , r.Numlanc'
      
        '  , r.Anolanc || '#39'/'#39' || right('#39'0000000'#39' || r.Numlanc, 7) as Lanc' +
        'amento'
      '  , r.Parcela'
      '  , r.Dtemiss'
      '  , r.Dtvenc'
      '  , r.Forma_pagto'
      '  , f.Descri as Forma_pagto_Desc'
      '  , r.Nossonumero'
      '  , r.Valorrec'
      '  , r.Valormulta'
      '  , r.Valorrectot'
      '  , r.Valorsaldo'
      '  , bx.valor_pago'
      '  , r.Status'
      '  , r.Situacao'
      '  , r.Anovenda'
      '  , r.Numvenda'
      
        '  , r.Anovenda || '#39'/'#39' || right('#39'0000000'#39' || r.Numvenda, 7) as Ve' +
        'nda'
      '  , v.Serie'
      '  , v.Nfe'
      
        '  , '#39'S'#39' || v.Serie || '#39'/'#39' || right('#39'0000000'#39' || v.Nfe, 7) as NFE' +
        '_Serie'
      'from TBCONTREC r'
      '  inner join TBFORMPAGTO f on (f.Cod = r.Forma_pagto)'
      '  left join ('
      '    Select'
      '        b.anolanc'
      '      , b.numlanc'
      '      , sum(b.valor_baixa) as valor_pago'
      '    from TBCONTREC_BAIXA b'
      '    group by'
      '        b.anolanc'
      '      , b.numlanc'
      '  ) bx on (bx.anolanc = r.anolanc and bx.numlanc = r.numlanc)'
      
        '  left join TBVENDAS v on (v.Ano = r.Anovenda and v.Codcontrol =' +
        ' r.Numvenda)'
      'where r.Baixado = 0'
      '  and r.Parcela > 0'
      '  and r.Situacao = 1'
      '  and r.Cliente = :cliente'
      ''
      'Union'
      ''
      'Select first 12'
      '    0 as tipo -- T'#237'tulos quitados'
      '  , r.Anolanc'
      '  , r.Numlanc'
      
        '  , r.Anolanc || '#39'/'#39' || right('#39'0000000'#39' || r.Numlanc, 7) as Lanc' +
        'amento'
      '  , r.Parcela'
      '  , r.Dtemiss'
      '  , r.Dtvenc'
      '  , r.Forma_pagto'
      '  , f.Descri as Forma_pagto_Desc'
      '  , r.Nossonumero'
      '  , r.Valorrec'
      '  , r.Valormulta'
      '  , r.Valorrectot'
      '  , r.Valorsaldo'
      '  , bx.valor_pago'
      '  , r.Status'
      '  , r.Situacao'
      '  , r.Anovenda'
      '  , r.Numvenda'
      
        '  , r.Anovenda || '#39'/'#39' || right('#39'0000000'#39' || r.Numvenda, 7) as Ve' +
        'nda'
      '  , v.Serie'
      '  , v.Nfe'
      
        '  , '#39'S'#39' || v.Serie || '#39'/'#39' || right('#39'0000000'#39' || v.Nfe, 7) as NFE' +
        '_Serie'
      'from TBCONTREC r'
      '  inner join TBFORMPAGTO f on (f.Cod = r.Forma_pagto)'
      '  left join ('
      '    Select'
      '        b.anolanc'
      '      , b.numlanc'
      '      , sum(b.valor_baixa) as valor_pago'
      '    from TBCONTREC_BAIXA b'
      '    group by'
      '        b.anolanc'
      '      , b.numlanc'
      '  ) bx on (bx.anolanc = r.anolanc and bx.numlanc = r.numlanc)'
      
        '  left join TBVENDAS v on (v.Ano = r.Anovenda and v.Codcontrol =' +
        ' r.Numvenda)'
      'where r.Baixado  = 1'
      '  --and r.Parcela  = 0'
      '  and r.Situacao = 1'
      '  and r.Cliente  = :cliente'
      ''
      'order by    '
      '    1 desc, 4 desc, 7 desc  -- Tipo, Lancamentos, Vencimentos')
    Left = 504
    Top = 368
    ParamData = <
      item
        Name = 'CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdQryTitulosTIPO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryTitulosANOLANC: TSmallintField
      FieldName = 'ANOLANC'
      Origin = 'ANOLANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryTitulosNUMLANC: TIntegerField
      FieldName = 'NUMLANC'
      Origin = 'NUMLANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryTitulosLANCAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LANCAMENTO'
      Origin = 'LANCAMENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object fdQryTitulosPARCELA: TSmallintField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
    end
    object fdQryTitulosDTEMISS: TDateField
      FieldName = 'DTEMISS'
      Origin = 'DTEMISS'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object fdQryTitulosDTVENC: TDateField
      FieldName = 'DTVENC'
      Origin = 'DTVENC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object fdQryTitulosFORMA_PAGTO: TSmallintField
      FieldName = 'FORMA_PAGTO'
      Origin = 'FORMA_PAGTO'
    end
    object fdQryTitulosFORMA_PAGTO_DESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORMA_PAGTO_DESC'
      Origin = 'DESCRI'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object fdQryTitulosNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Origin = 'NOSSONUMERO'
    end
    object fdQryTitulosVALORREC: TBCDField
      FieldName = 'VALORREC'
      Origin = 'VALORREC'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object fdQryTitulosVALORMULTA: TBCDField
      FieldName = 'VALORMULTA'
      Origin = 'VALORMULTA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object fdQryTitulosVALORRECTOT: TBCDField
      FieldName = 'VALORRECTOT'
      Origin = 'VALORRECTOT'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object fdQryTitulosVALORSALDO: TBCDField
      FieldName = 'VALORSALDO'
      Origin = 'VALORSALDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object fdQryTitulosVALOR_PAGO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object fdQryTitulosSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 12
    end
    object fdQryTitulosSITUACAO: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      OnGetText = fdQryTitulosSITUACAOGetText
    end
    object fdQryTitulosANOVENDA: TSmallintField
      FieldName = 'ANOVENDA'
      Origin = 'ANOVENDA'
    end
    object fdQryTitulosNUMVENDA: TIntegerField
      FieldName = 'NUMVENDA'
      Origin = 'NUMVENDA'
    end
    object fdQryTitulosVENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDA'
      Origin = 'VENDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object fdQryTitulosSERIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SERIE'
      Origin = 'SERIE'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object fdQryTitulosNFE: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'NFE'
      Origin = 'NFE'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryTitulosNFE_SERIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFE_SERIE'
      Origin = 'NFE_SERIE'
      ProviderFlags = []
      ReadOnly = True
      Size = 33
    end
  end
  object QryEstoqueSatelite: TFDQuery
    CachedUpdates = True
    OnUpdateError = fdQryTabelaUpdateError
    Connection = DMBusiness.fdConexao
    Transaction = DMBusiness.fdTransacao
    UpdateTransaction = DMBusiness.fdTransacao
    UpdateObject = UpdEstoqueSatelite
    SQL.Strings = (
      'Select'
      '    e.cod_cliente'
      '  , e.cod_produto'
      '  , e.quantidade'
      '  , e.valor_medio'
      '  , e.usuario'
      '  , e.ano_venda_ult'
      '  , e.cod_venda_ult'
      ''
      '  , p.Codigo'
      '  , p.Descri'
      '  , p.Apresentacao'
      '  , p.Descri_apresentacao'
      '  , p.Modelo'
      '  , p.Referencia'
      '  , p.Secao'
      '  , p.Preco'
      '  , p.Unidade'
      '  , g.Descri as Descricao_Grupo'
      '  , f.Nome   as Nome_Fabricante'
      '  , coalesce(s.Scp_descricao, p.Secao) as Descricao_Secao'
      '  , coalesce(u.Unp_descricao, p.Unidade) as Descricao_Unidade'
      '  , u.Unp_sigla'
      'from TBCLIENTE_ESTOQUE e'
      '  inner join TBPRODUTO p on (p.cod = e.cod_produto)'
      '  left join TBGRUPOPROD g on (g.Cod = p.Codgrupo)'
      '  left join TBSECAOPROD s on (s.Scp_cod = p.Codsecao)'
      '  left join TBUNIDADEPROD u on (u.Unp_cod = p.Codunidade)'
      '  left join TBFABRICANTE f on (f.Cod = p.Codfabricante)')
    Left = 584
    Top = 216
    object QryEstoqueSateliteCOD_CLIENTE: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryEstoqueSateliteCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object QryEstoqueSateliteQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
      DisplayFormat = ',0.###'
      Precision = 18
      Size = 3
    end
    object QryEstoqueSateliteVALOR_MEDIO: TBCDField
      FieldName = 'VALOR_MEDIO'
      Origin = 'VALOR_MEDIO'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QryEstoqueSateliteUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QryEstoqueSateliteANO_VENDA_ULT: TSmallintField
      FieldName = 'ANO_VENDA_ULT'
      Origin = 'ANO_VENDA_ULT'
    end
    object QryEstoqueSateliteCOD_VENDA_ULT: TIntegerField
      FieldName = 'COD_VENDA_ULT'
      Origin = 'COD_VENDA_ULT'
      OnGetText = QryEstoqueSateliteCOD_VENDA_ULTGetText
    end
    object QryEstoqueSateliteCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryEstoqueSateliteDESCRI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRI'
      Origin = 'DESCRI'
      ProviderFlags = []
      Size = 50
    end
    object QryEstoqueSateliteAPRESENTACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APRESENTACAO'
      Origin = 'APRESENTACAO'
      ProviderFlags = []
      Size = 50
    end
    object QryEstoqueSateliteDESCRI_APRESENTACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRI_APRESENTACAO'
      Origin = 'DESCRI_APRESENTACAO'
      ProviderFlags = []
      Size = 100
    end
    object QryEstoqueSateliteMODELO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MODELO'
      Origin = 'MODELO'
      ProviderFlags = []
      Size = 40
    end
    object QryEstoqueSateliteREFERENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      ProviderFlags = []
      Size = 15
    end
    object QryEstoqueSateliteSECAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SECAO'
      Origin = 'SECAO'
      ProviderFlags = []
    end
    object QryEstoqueSatelitePRECO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO'
      Origin = 'PRECO'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object QryEstoqueSateliteUNIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      ProviderFlags = []
    end
    object QryEstoqueSateliteDESCRICAO_GRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_GRUPO'
      Origin = 'DESCRI'
      ProviderFlags = []
      Size = 30
    end
    object QryEstoqueSateliteNOME_FABRICANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_FABRICANTE'
      Origin = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object QryEstoqueSateliteDESCRICAO_SECAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_SECAO'
      Origin = 'DESCRICAO_SECAO'
      ProviderFlags = []
      Size = 50
    end
    object QryEstoqueSateliteDESCRICAO_UNIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_UNIDADE'
      Origin = 'DESCRICAO_UNIDADE'
      ProviderFlags = []
      Size = 50
    end
    object QryEstoqueSateliteUNP_SIGLA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNP_SIGLA'
      Origin = 'UNP_SIGLA'
      ProviderFlags = []
      Size = 5
    end
  end
  object UpdEstoqueSatelite: TFDUpdateSQL
    Connection = DMBusiness.fdConexao
    InsertSQL.Strings = (
      'INSERT INTO TBCLIENTE_ESTOQUE'
      '(COD_CLIENTE, COD_PRODUTO, QUANTIDADE, VALOR_MEDIO, '
      '  USUARIO, ANO_VENDA_ULT, COD_VENDA_ULT)'
      
        'VALUES (:NEW_COD_CLIENTE, :NEW_COD_PRODUTO, :NEW_QUANTIDADE, :NE' +
        'W_VALOR_MEDIO, '
      '  :NEW_USUARIO, :NEW_ANO_VENDA_ULT, :NEW_COD_VENDA_ULT)')
    ModifySQL.Strings = (
      'UPDATE TBCLIENTE_ESTOQUE'
      
        'SET COD_CLIENTE = :NEW_COD_CLIENTE, COD_PRODUTO = :NEW_COD_PRODU' +
        'TO, '
      '  QUANTIDADE = :NEW_QUANTIDADE, VALOR_MEDIO = :NEW_VALOR_MEDIO, '
      '  USUARIO = :NEW_USUARIO, ANO_VENDA_ULT = :NEW_ANO_VENDA_ULT, '
      '  COD_VENDA_ULT = :NEW_COD_VENDA_ULT'
      
        'WHERE COD_CLIENTE = :OLD_COD_CLIENTE AND COD_PRODUTO = :OLD_COD_' +
        'PRODUTO')
    DeleteSQL.Strings = (
      'DELETE FROM TBCLIENTE_ESTOQUE'
      
        'WHERE COD_CLIENTE = :OLD_COD_CLIENTE AND COD_PRODUTO = :OLD_COD_' +
        'PRODUTO')
    FetchRowSQL.Strings = (
      'Select'
      '    e.cod_cliente'
      '  , e.cod_produto'
      '  , e.quantidade'
      '  , e.valor_medio'
      '  , e.usuario'
      '  , e.ano_venda_ult'
      '  , e.cod_venda_ult'
      ''
      '  , p.Codigo'
      '  , p.Descri'
      '  , p.Apresentacao'
      '  , p.Descri_apresentacao'
      '  , p.Modelo'
      '  , p.Referencia'
      '  , p.Secao'
      '  , p.Preco'
      '  , p.Unidade'
      '  , g.Descri as Descricao_Grupo'
      '  , f.Nome   as Nome_Fabricante'
      '  , coalesce(s.Scp_descricao, p.Secao) as Descricao_Secao'
      '  , coalesce(u.Unp_descricao, p.Unidade) as Descricao_Unidade'
      '  , u.Unp_sigla'
      'from TBCLIENTE_ESTOQUE e'
      '  inner join TBPRODUTO p on (p.cod = e.cod_produto)'
      '  left join TBGRUPOPROD g on (g.Cod = p.Codgrupo)'
      '  left join TBSECAOPROD s on (s.Scp_cod = p.Codsecao)'
      '  left join TBUNIDADEPROD u on (u.Unp_cod = p.Codunidade)'
      '  left join TBFABRICANTE f on (f.Cod = p.Codfabricante)'
      ''
      
        'WHERE e.COD_CLIENTE = :COD_CLIENTE AND e.COD_PRODUTO = :COD_PROD' +
        'UTO')
    Left = 616
    Top = 216
  end
end
