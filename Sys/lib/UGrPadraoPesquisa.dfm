inherited frmGrPadraoPesquisa: TfrmGrPadraoPesquisa
  Left = 390
  Top = 217
  ActiveControl = edPesquisar
  BorderIcons = [biSystemMenu]
  Caption = 'Padr'#227'o Pesquisa!'
  ClientHeight = 430
  ClientWidth = 777
  OnClose = FormClose
  ExplicitWidth = 793
  ExplicitHeight = 469
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPesquisa: TPanel
    Left = 0
    Top = 0
    Width = 777
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 0
    object BvlTipoPesquisa: TBevel
      Left = 220
      Top = 4
      Width = 4
      Height = 73
      Align = alLeft
      Shape = bsSpacer
    end
    object GrpBxTipoPesquisa: TGroupBox
      Left = 4
      Top = 4
      Width = 216
      Height = 73
      Align = alLeft
      Caption = 'Tipo filtro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object lblTipoPesquisa: TLabel
        Left = 16
        Top = 24
        Width = 59
        Height = 13
        Caption = '&Filtrar por:'
        Enabled = False
        FocusControl = edTipoPesquisa
      end
      object edTipoPesquisa: TComboBox
        Left = 16
        Top = 40
        Width = 185
        Height = 21
        Style = csDropDownList
        Enabled = False
        ItemIndex = 0
        TabOrder = 0
        Text = 'Autom'#225'tico'
        Items.Strings = (
          'Autom'#225'tico')
      end
    end
    object GrpBxPesquisar: TGroupBox
      Left = 224
      Top = 4
      Width = 549
      Height = 73
      Align = alClient
      Caption = 'Filtrar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      DesignSize = (
        549
        73)
      object lblPesquisar: TLabel
        Left = 16
        Top = 24
        Width = 55
        Height = 13
        Caption = '&Pesquisar'
        FocusControl = edPesquisar
      end
      object edPesquisar: TEdit
        Left = 16
        Top = 40
        Width = 489
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        CharCase = ecUpperCase
        TabOrder = 0
        OnKeyPress = edPesquisarKeyPress
      end
      object BrnPesquisar: TcxButton
        Left = 512
        Top = 40
        Width = 23
        Height = 22
        Hint = 'Executar Pesquisa'
        Anchors = [akTop, akRight]
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E0000000000000000000000000000000000000000
          000000000000000000000000000000000000AC6B2CBAAC6B2CCC000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000AC6B2CC0AC6B2CFFAC6B2CD1B571
          2F29B87330BDB87330CAB974306B000000000000000000000000000000000000
          0000000000006E6E6E056E6E6EFF6E6E6E0100000000AC6B2CC4AC6B2CFFAC6B
          2CFFAC6B2CFFAC6B2CF9AC6B2CFFAC6B2CFF0000000000000000000000000000
          0000000000006E6E6E056E6E6EFF6E6E6E4200000000B06D2D2AAC6B2CFFAC6B
          2C830000000000000000AC6B2C22AC6B2CFFB16F2EA300000000000000000000
          0000000000006E6E6E056E6E6EFF6E6E6E1E00000000B3712EBDAC6B2CFF0000
          0000000000000000000000000000AC6B2CA9AF6D2DFF00000000000000000000
          0000000000006E6E6E056E6E6EFF6E6E6E1700000000B3712ECAAC6B2CFF0000
          0000000000000000000000000000AD6C2C93AF6D2DFF00000000000000000000
          0000000000006E6E6E056E6E6EFF6E6E6E4900000000B5712E6AAC6B2CFFAD6C
          2C31000000000000000000000000AC6B2CFFB06D2DCB00000000000000000000
          0000000000006E6E6E166E6E6EFF6E6E6EAE0000000000000000AC6B2CFCAC6B
          2CFFAD6C2CB7AE6D2D9CAC6B2CFFAC6B2CFF0000000000000000000000000000
          00006E6E6E046E6E6EBC6E6E6EFF6E6E6EFFC6C6C6660000000000000000AE6C
          2C9BAC6B2CFFAC6B2CFFAD6C2CCA000000000000000000000000000000000000
          00006E6E6E926E6E6EFF6E6E6EFF6E6E6EFF858585FEE9E9E9967A7A7A1E0000
          0000000000000000000000000000000000000000000000000000000000006E6E
          6E636E6E6EFE6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFFC9C9C9FFDFDFDFFF7272
          72FE6E6E6E5C00000000000000000000000000000000000000006E6E6E3B6E6E
          6EF86E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF808080FFFCFCFCFFCECE
          CEFF6E6E6EF66E6E6E350000000000000000000000006E6E6E1D6E6E6EE86E6E
          6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFFC3C3C3FFFFFF
          FFFFB9B9B9FF6E6E6EE36E6E6E1800000000000000006E6E6ECC6E6E6EFF6E6E
          6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF7C7C7CFFFAFA
          FAFFFEFEFEFF9F9F9FFF6E6E6EC66E6E6E07000000006E6E6EFF6E6E6EFF6E6E
          6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF7070
          70FF707070FF6E6E6EFF6E6E6EFF6E6E6E7D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000}
        ParentShowHint = False
        ShowHint = True
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
        TabOrder = 1
        OnClick = BrnPesquisarClick
      end
    end
  end
  object PnlTabela: TPanel
    Left = 0
    Top = 81
    Width = 777
    Height = 349
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 1
    object dbgDados: TDBGrid
      Left = 4
      Top = 4
      Width = 769
      Height = 341
      Align = alClient
      DataSource = DtsPesquisa
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
      OnKeyPress = dbgDadosKeyPress
    end
  end
  object DtsPesquisa: TDataSource
    DataSet = fdQryPesquisa
    Left = 360
    Top = 176
  end
  object fdQryPesquisa: TFDQuery
    Connection = DMBusiness.fdConexao
    Transaction = DMBusiness.fdTransacao
    Left = 328
    Top = 176
  end
  object QryPesquisaXXX: TIBQuery
    Database = DMBusiness.ibdtbsBusiness
    Transaction = DMBusiness.ibtrnsctnBusiness
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select'
      '    r.Anolanc'
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
      
        '  left join TBVENDAS v on (v.Ano = r.Anovenda and v.Codcontrol =' +
        ' r.Numvenda)'
      'where r.Baixado = 0'
      '  and r.Parcela > 0'
      '  and r.Cnpj = :cliente')
    Left = 504
    Top = 296
    ParamData = <
      item
        DataType = ftString
        Name = 'cliente'
        ParamType = ptInput
        Value = ''
      end>
  end
end
