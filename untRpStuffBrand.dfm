object frmRpStuffBrand: TfrmRpStuffBrand
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  Caption = #1711#1586#1575#1585#1588' '#1604#1740#1587#1578' '#1605#1581#1589#1608#1604#1575#1578
  ClientHeight = 580
  ClientWidth = 983
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlEdit: TAdvSmoothPanel
    Left = 0
    Top = 0
    Width = 983
    Height = 225
    Cursor = crDefault
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Fill.Color = clWhite
    Fill.ColorTo = clWhite
    Fill.ColorMirror = clWhite
    Fill.ColorMirrorTo = clWhite
    Fill.GradientType = gtVertical
    Fill.GradientMirrorType = gtVertical
    Fill.BorderColor = clGray
    Fill.BorderWidth = 2
    Fill.Rounding = 10
    Fill.RoundingType = rtNone
    Fill.ShadowOffset = 0
    Fill.Glow = gmNone
    Version = '1.6.0.1'
    Align = alTop
    TabOrder = 0
    DesignSize = (
      983
      225)
    TMSStyle = 4
    object pnlStufInfo: TAdvSmoothPanel
      Left = 8
      Top = 9
      Width = 966
      Height = 101
      Cursor = crDefault
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -16
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Fill.Color = clWhite
      Fill.ColorTo = clWhite
      Fill.ColorMirror = clWhite
      Fill.ColorMirrorTo = clWhite
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = clSilver
      Fill.BorderWidth = 2
      Fill.Rounding = 8
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Version = '1.6.0.1'
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      DesignSize = (
        966
        101)
      TMSStyle = 4
      object lblStuffBrandCode: TLabel
        Left = 738
        Top = 12
        Width = 57
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1705#1583' '#1605#1581#1589#1608#1604':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 678
      end
      object lblStuffBrandName: TLabel
        Left = 529
        Top = 12
        Width = 58
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605' '#1605#1581#1589#1608#1604':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 469
      end
      object lblBrandName: TLabel
        Left = 738
        Top = 71
        Width = 44
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605' '#1576#1585#1606#1583' :'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 684
      end
      object lblStuffCode: TLabel
        Left = 738
        Top = 42
        Width = 57
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1705#1583' '#1606#1608#1593' '#1705#1575#1604#1575':'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 684
      end
      object lblStuffName: TLabel
        Left = 529
        Top = 42
        Width = 40
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1705#1575#1604#1575':'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 475
      end
      object rbAll: TcxRadioButton
        Left = 848
        Top = 11
        Width = 105
        Height = 19
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeftNoAlign
        Caption = ' '#1605#1581#1589#1608#1604#1575#1578' '#1588#1575#1605#1604' :'
        Checked = True
        Ctl3D = False
        ParentBiDiMode = False
        ParentCtl3D = False
        TabOrder = 0
        TabStop = True
        OnClick = rbAllClick
        Transparent = True
      end
      object rbBrand: TcxRadioButton
        Left = 823
        Top = 70
        Width = 130
        Height = 19
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeftNoAlign
        Caption = #1583#1575#1585#1575#1740' '#1576#1585#1606#1583' '#1582#1575#1589' '#1588#1575#1605#1604' :'
        Ctl3D = False
        ParentBiDiMode = False
        ParentCtl3D = False
        TabOrder = 1
        OnClick = rbBrandClick
        Transparent = True
      end
      object rbStuff: TcxRadioButton
        Left = 806
        Top = 41
        Width = 147
        Height = 19
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeftNoAlign
        Caption = #1583#1575#1585#1575#1740' '#1606#1608#1593' '#1705#1575#1604#1575' '#1582#1575#1589' '#1588#1575#1605#1604' :'
        Ctl3D = False
        ParentBiDiMode = False
        ParentCtl3D = False
        TabOrder = 2
        OnClick = rbStuffClick
        Transparent = True
      end
      object cmbStuffBrandCode: TComboBox
        Left = 605
        Top = 13
        Width = 130
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 3
        OnExit = cmbStuffBrandCodeExit
      end
      object cmbStuffBrandName: TComboBox
        Left = 97
        Top = 10
        Width = 429
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 4
        OnExit = cmbStuffBrandNameExit
      end
      object cmbBrandName: TComboBox
        Left = 97
        Top = 69
        Width = 638
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Enabled = False
        TabOrder = 5
      end
      object cmbStuffCode: TComboBox
        Left = 605
        Top = 40
        Width = 130
        Height = 21
        Anchors = [akTop, akRight]
        Enabled = False
        TabOrder = 6
        OnExit = cmbStuffCodeExit
      end
      object cmbStuffName: TComboBox
        Left = 97
        Top = 40
        Width = 429
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Enabled = False
        TabOrder = 7
        OnExit = cmbStuffNameExit
      end
      object cmbIsStuffBrand: TComboBox
        Left = 9
        Top = 10
        Width = 83
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 8
        Text = #1576#1575#1588#1583
        Items.Strings = (
          #1576#1575#1588#1583
          #1606#1576#1575#1588#1583)
      end
      object cmbIsStuff: TComboBox
        Left = 9
        Top = 40
        Width = 83
        Height = 21
        Style = csDropDownList
        Enabled = False
        ItemIndex = 0
        TabOrder = 9
        Text = #1576#1575#1588#1583
        Items.Strings = (
          #1576#1575#1588#1583
          #1606#1576#1575#1588#1583)
      end
      object cmbIsBrand: TComboBox
        Left = 9
        Top = 69
        Width = 83
        Height = 21
        Style = csDropDownList
        Enabled = False
        ItemIndex = 0
        TabOrder = 10
        Text = #1576#1575#1588#1583
        Items.Strings = (
          #1576#1575#1588#1583
          #1606#1576#1575#1588#1583)
      end
    end
    object pnlStock: TAdvSmoothPanel
      Left = 569
      Top = 116
      Width = 405
      Height = 47
      Cursor = crDefault
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -16
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Fill.Color = clWhite
      Fill.ColorTo = clWhite
      Fill.ColorMirror = clWhite
      Fill.ColorMirrorTo = clWhite
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = clSilver
      Fill.BorderWidth = 2
      Fill.Rounding = 8
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Version = '1.6.0.1'
      Anchors = [akTop, akRight]
      TabOrder = 1
      TMSStyle = 4
      object Label7: TLabel
        Left = 304
        Top = 16
        Width = 88
        Height = 14
        Caption = #1605#1608#1580#1608#1583#1740' '#1605#1581#1589#1608#1604' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cmbLastStockSign: TComboBox
        Left = 189
        Top = 14
        Width = 112
        Height = 21
        Style = csDropDownList
        ItemIndex = 2
        TabOrder = 0
        Text = #1576#1585#1575#1576#1585' '#1576#1575
        Items.Strings = (
          #1576#1586#1585#1711#1578#1585' '#1575#1586
          #1576#1586#1585#1711#1578#1585' '#1605#1587#1575#1608#1740' '#1576#1575
          #1576#1585#1575#1576#1585' '#1576#1575
          #1705#1608#1670#1705#1578#1585' '#1605#1587#1575#1608#1740' '#1576#1575
          #1705#1608#1670#1705#1578#1585' '#1575#1586)
      end
      object edtLastStock: TEdit
        Left = 96
        Top = 14
        Width = 90
        Height = 21
        Alignment = taCenter
        NumbersOnly = True
        TabOrder = 1
      end
      object cmbIsLastStock: TComboBox
        Left = 9
        Top = 14
        Width = 84
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 2
        Text = #1576#1575#1588#1583
        Items.Strings = (
          #1576#1575#1588#1583
          #1606#1576#1575#1588#1583)
      end
    end
    object pnlActive: TAdvSmoothPanel
      Left = 569
      Top = 170
      Width = 405
      Height = 47
      Cursor = crDefault
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -16
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Fill.Color = clWhite
      Fill.ColorTo = clWhite
      Fill.ColorMirror = clWhite
      Fill.ColorMirrorTo = clWhite
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = clSilver
      Fill.BorderWidth = 2
      Fill.Rounding = 8
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Version = '1.6.0.1'
      Anchors = [akTop, akRight]
      TabOrder = 2
      TMSStyle = 4
      object Label9: TLabel
        Left = 304
        Top = 17
        Width = 83
        Height = 14
        Caption = #1608#1590#1593#1740#1578' '#1605#1581#1589#1608#1604' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cmbActive: TComboBox
        Left = 189
        Top = 14
        Width = 112
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 0
        Text = #1601#1593#1575#1604' '#1576#1575#1588#1583
        Items.Strings = (
          #1601#1593#1575#1604' '#1576#1575#1588#1583
          #1594#1740#1585' '#1601#1593#1575#1604' '#1576#1575#1588#1583
          #1601#1593#1575#1604' '#1608' '#1594#1740#1585' '#1601#1593#1575#1604' '#1576#1575#1588#1583)
      end
      object chkSpecial: TcxCheckBox
        Left = 12
        Top = 14
        Caption = #1601#1602#1591' '#1662#1740#1588#1606#1607#1575#1583' '#1608#1740#1688#1607' '#1576#1575#1588#1583
        Properties.Alignment = taRightJustify
        Style.BorderStyle = ebsOffice11
        Style.HotTrack = True
        TabOrder = 1
        Transparent = True
      end
    end
    object pnlPrice: TAdvSmoothPanel
      Left = 8
      Top = 116
      Width = 555
      Height = 101
      Cursor = crDefault
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -16
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Fill.Color = clWhite
      Fill.ColorTo = clWhite
      Fill.ColorMirror = clWhite
      Fill.ColorMirrorTo = clWhite
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = clSilver
      Fill.BorderWidth = 2
      Fill.Rounding = 8
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Version = '1.6.0.1'
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
      DesignSize = (
        555
        101)
      TMSStyle = 4
      object Label8: TLabel
        Left = 361
        Top = 23
        Width = 181
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1602#1740#1605#1578' '#1605#1589#1585#1601' '#1705#1606#1606#1583#1607' ('#1601#1593#1604#1740') '#1605#1581#1589#1608#1604' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 361
        Top = 50
        Width = 186
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1602#1740#1605#1578' '#1601#1585#1608#1588'/ '#1662#1582#1588' ('#1601#1593#1604#1740') '#1605#1581#1589#1608#1604' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 100
        Top = 23
        Width = 23
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1585#1740#1575#1604' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 102
        Top = 50
        Width = 23
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1585#1740#1575#1604' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cmbConsumerPriceSign: TComboBox
        Left = 239
        Top = 20
        Width = 120
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemIndex = 2
        TabOrder = 0
        Text = #1576#1585#1575#1576#1585' '#1576#1575
        Items.Strings = (
          #1576#1586#1585#1711#1578#1585' '#1575#1586
          #1576#1586#1585#1711#1578#1585' '#1605#1587#1575#1608#1740' '#1576#1575
          #1576#1585#1575#1576#1585' '#1576#1575
          #1705#1608#1670#1705#1578#1585' '#1605#1587#1575#1608#1740' '#1576#1575
          #1705#1608#1670#1705#1578#1585' '#1575#1586)
      end
      object edtConsumerPrice: TEdit
        Left = 129
        Top = 20
        Width = 105
        Height = 21
        Alignment = taCenter
        Anchors = [akTop, akRight]
        NumbersOnly = True
        TabOrder = 1
      end
      object cmbIsConsumerPrice: TComboBox
        Left = 9
        Top = 20
        Width = 83
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemIndex = 0
        TabOrder = 2
        Text = #1576#1575#1588#1583
        Items.Strings = (
          #1576#1575#1588#1583
          #1606#1576#1575#1588#1583)
      end
      object cmbPakhshPriceSign: TComboBox
        Left = 239
        Top = 47
        Width = 120
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemIndex = 2
        TabOrder = 3
        Text = #1576#1585#1575#1576#1585' '#1576#1575
        Items.Strings = (
          #1576#1586#1585#1711#1578#1585' '#1575#1586
          #1576#1586#1585#1711#1578#1585' '#1605#1587#1575#1608#1740' '#1576#1575
          #1576#1585#1575#1576#1585' '#1576#1575
          #1705#1608#1670#1705#1578#1585' '#1605#1587#1575#1608#1740' '#1576#1575
          #1705#1608#1670#1705#1578#1585' '#1575#1586)
      end
      object edtPakhshPrice: TEdit
        Left = 129
        Top = 47
        Width = 105
        Height = 21
        Alignment = taCenter
        Anchors = [akTop, akRight]
        NumbersOnly = True
        TabOrder = 4
      end
      object cmbIsPakhshPrice: TComboBox
        Left = 9
        Top = 47
        Width = 83
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemIndex = 0
        TabOrder = 5
        Text = #1576#1575#1588#1583
        Items.Strings = (
          #1576#1575#1588#1583
          #1606#1576#1575#1588#1583)
      end
    end
  end
  object pnlBottom: TAdvSmoothPanel
    Left = 0
    Top = 519
    Width = 983
    Height = 61
    Cursor = crDefault
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Fill.Color = clWhite
    Fill.ColorTo = clWhite
    Fill.ColorMirror = clWhite
    Fill.ColorMirrorTo = clWhite
    Fill.GradientType = gtVertical
    Fill.GradientMirrorType = gtVertical
    Fill.BorderColor = clWhite
    Fill.Rounding = 10
    Fill.RoundingType = rtNone
    Fill.ShadowOffset = 0
    Fill.Glow = gmNone
    Version = '1.6.0.1'
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      983
      61)
    TMSStyle = 4
    object btnOK: TAdvSmoothButton
      AlignWithMargins = True
      Left = 805
      Top = 10
      Width = 150
      Height = 41
      Margins.Left = 20
      Margins.Top = 10
      Margins.Right = 105
      Margins.Bottom = 10
      Anchors = [akTop, akRight]
      Appearance.Font.Charset = DEFAULT_CHARSET
      Appearance.Font.Color = clWindowText
      Appearance.Font.Height = -13
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = []
      Appearance.FocusColor = clHighlight
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      BevelColor = clBlack
      Caption = #1578#1607#1740#1607' '#1711#1586#1575#1585#1588
      Color = clMenuBar
      ParentFont = False
      TabOrder = 0
      Version = '2.1.3.0'
      OnClick = btnOKClick
      TMSStyle = 0
    end
    object AdvSmoothButton1: TAdvSmoothButton
      AlignWithMargins = True
      Left = 25
      Top = 10
      Width = 150
      Height = 41
      Margins.Left = 105
      Margins.Top = 10
      Margins.Right = 5
      Margins.Bottom = 10
      Appearance.Font.Charset = DEFAULT_CHARSET
      Appearance.Font.Color = clWindowText
      Appearance.Font.Height = -13
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = []
      Appearance.FocusColor = clHighlight
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      BevelColor = clBlack
      Caption = #1575#1606#1589#1585#1575#1601
      Color = clMenuBar
      ParentFont = False
      TabOrder = 1
      Version = '2.1.3.0'
      ModalResult = 8
      TMSStyle = 0
    end
    object btnExcel: TAdvSmoothButton
      AlignWithMargins = True
      Left = 640
      Top = 10
      Width = 150
      Height = 41
      Margins.Left = 20
      Margins.Top = 10
      Margins.Right = 105
      Margins.Bottom = 10
      Anchors = [akTop, akRight]
      Appearance.Font.Charset = DEFAULT_CHARSET
      Appearance.Font.Color = clWindowText
      Appearance.Font.Height = -13
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = []
      Appearance.FocusColor = clHighlight
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      BevelColor = clBlack
      Caption = #1582#1585#1608#1580#1740' '#1576#1607' '#1575#1705#1587#1604
      Color = clMenuBar
      ParentFont = False
      TabOrder = 2
      Enabled = False
      Version = '2.1.3.0'
      OnClick = btnExcelClick
      TMSStyle = 0
    end
    object btnPreview: TAdvSmoothButton
      AlignWithMargins = True
      Left = 480
      Top = 10
      Width = 150
      Height = 41
      Margins.Left = 20
      Margins.Top = 10
      Margins.Right = 105
      Margins.Bottom = 10
      Anchors = [akTop, akRight]
      Appearance.Font.Charset = DEFAULT_CHARSET
      Appearance.Font.Color = clWindowText
      Appearance.Font.Height = -13
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = []
      Appearance.FocusColor = clHighlight
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      BevelColor = clBlack
      Caption = #1662#1740#1588' '#1606#1605#1575#1740#1588' '#1670#1575#1662
      Color = clMenuBar
      ParentFont = False
      TabOrder = 3
      Enabled = False
      Version = '2.1.3.0'
      OnClick = btnPreviewClick
      TMSStyle = 0
    end
  end
  object pnlGrid: TAdvSmoothPanel
    Left = 0
    Top = 225
    Width = 983
    Height = 294
    Cursor = crDefault
    Caption.Text = 'AdvSmoothPanel4'
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Fill.Color = clWhite
    Fill.ColorTo = clWhite
    Fill.ColorMirror = clWhite
    Fill.ColorMirrorTo = clWhite
    Fill.GradientType = gtVertical
    Fill.GradientMirrorType = gtVertical
    Fill.BorderColor = clNone
    Fill.BorderWidth = 2
    Fill.Rounding = 10
    Fill.RoundingType = rtNone
    Fill.ShadowOffset = 10
    Fill.Glow = gmNone
    Version = '1.6.0.1'
    Align = alClient
    TabOrder = 2
    TMSStyle = 4
    object grd: TDBGridEh
      Left = 0
      Top = 0
      Width = 983
      Height = 294
      ParentCustomHint = False
      Align = alClient
      Border.ExtendedDraw = True
      Color = clBtnFace
      ColumnDefValues.Title.TitleButton = True
      DataSource = ds
      DynProps = <>
      EvenRowColor = 14019837
      FixedColor = clActiveBorder
      Flat = True
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterParams.FillStyle = cfstGradientEh
      FooterParams.Font.Charset = ARABIC_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -13
      FooterParams.Font.Name = 'Arial Narrow'
      FooterParams.Font.Style = []
      FooterParams.HorzLines = True
      FooterParams.ParentFont = False
      FooterParams.VertLines = True
      HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh]
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
      IndicatorParams.Color = clWhite
      IndicatorParams.HorzLines = True
      IndicatorParams.VertLines = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      EmptyDataInfo.Active = True
      EmptyDataInfo.Font.Charset = ARABIC_CHARSET
      EmptyDataInfo.Font.Color = clGray
      EmptyDataInfo.Font.Height = -13
      EmptyDataInfo.Font.Name = 'Arabic Transparent'
      EmptyDataInfo.Font.Style = []
      EmptyDataInfo.ParentFont = False
      OddRowColor = 13696508
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ParentFont = False
      ParentShowHint = False
      RowDetailPanel.Color = 11662315
      RowDetailPanel.VertSizing = True
      SearchPanel.Enabled = True
      SelectionDrawParams.SelectionStyle = gsdsListViewThemedEh
      SelectionDrawParams.DrawFocusFrame = True
      SelectionDrawParams.DrawFocusFrameStored = True
      ShowHint = False
      SortLocal = True
      STFilter.InstantApply = False
      TabOrder = 0
      TitleParams.Font.Charset = ARABIC_CHARSET
      TitleParams.Font.Color = clWindowText
      TitleParams.Font.Height = -12
      TitleParams.Font.Name = 'Tahoma'
      TitleParams.Font.Style = []
      TitleParams.MultiTitle = True
      TitleParams.ParentFont = False
      Columns = <
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StuffBrandCode'
          Footers = <>
          Width = 77
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StuffBrandName'
          Footers = <>
          Width = 217
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'UnitName'
          Footers = <>
          Width = 93
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StuffName'
          Footers = <>
          Width = 148
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'BrandName'
          Footers = <>
          Width = 116
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StuffCategoryName'
          Footers = <>
          Width = 143
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ConsumerPrice'
          Footers = <>
          Width = 76
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Price'
          Footers = <>
          Width = 66
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Offer'
          Footers = <>
          Width = 52
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FromDate'
          Footers = <>
          Width = 73
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'LastStock'
          Footers = <>
          Width = 59
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MinimumStuck'
          Footers = <>
          Width = 49
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MaximumStuck'
          Footers = <>
          Width = 50
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OrderPoint'
          Footers = <>
          Width = 57
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DateTime'
          Footers = <>
          Width = 150
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TransactionType'
          Footers = <>
          Width = 111
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TransactionCount'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object qry: TUniQuery
    SQL.Strings = (
      'SELECT sbi.[StuffBrandID]'
      '      ,sbi.[StuffBrandCode]'
      '      ,sbi.[StuffBrandName]'
      '      ,sbi.[MinimumStuck]'
      '      ,sbi.[MaximumStuck]'
      '      ,sbi.[OrderPoint]'
      '      ,sbi.[Activated]'
      '      ,sbi.[Deleted]'
      '      ,sbi.[Description]'
      '      ,sbi.[IsSpecial]'
      '      ,sbi.[StuffID]'
      '      ,sbi.[StuffName]'
      '      ,sbi.[StuffCode]'
      '      ,sbi.[StuffCategoryID]'
      '      ,sbi.[StuffCategoryName]'
      '      ,sbi.[BrandID]'
      '      ,sbi.[BrandName]'
      '      ,sbi.[Internal]'
      '      ,sbi.[SellerName]'
      '      ,sbi.[SellerPhone]'
      '      ,sbi.[UnitID]'
      '      ,sbi.[UnitName]'
      '      ,sbi.[EnglishName]'
      '      ,sbi.[StockTransactionID]'
      '      ,sbi.[DateTime]'
      '      ,sbi.[TransactionCount]'
      '      ,sbi.[TransactionType]'
      '      ,sbi.[LastStock]'
      #9'  ,sbp.FromDate'
      #9'  ,sbp.Price'
      #9'  ,sbp.ConsumerPrice'
      #9'  ,sbp.Offer'
      '  FROM [Pakhsh].[dbo].[StuffBrandInfo] AS sbi'
      
        '  LEFT JOIN StuffBrandPrice AS sbp ON (sbi.StuffBrandID = sbp.St' +
        'uffBrandID)'
      '  WHERE sbi.Deleted = 0'
      '   '
      
        '        AND sbp.ID IN (SELECT MAX(id) AS ID FROM StuffBrandPrice' +
        ' '
      #9#9#9#9'   WHERE FromDate <= '#39'1397/07/02'#39' '
      #9#9#9#9'   GROUP BY StuffBrandID) ')
    Left = 24
    Top = 320
    object qryStuffBrandID: TFloatField
      DisplayLabel = #1588#1606#1575#1587#1607' '#1605#1581#1589#1608#1604
      FieldName = 'StuffBrandID'
      Required = True
    end
    object qryStuffBrandCode: TWideStringField
      DisplayLabel = #1705#1583' '#1605#1581#1589#1608#1604
      FieldName = 'StuffBrandCode'
      Size = 50
    end
    object qryStuffBrandName: TWideStringField
      DisplayLabel = #1606#1575#1605' '#1605#1581#1589#1608#1604
      FieldName = 'StuffBrandName'
      ReadOnly = True
      Size = 701
    end
    object qryMinimumStuck: TIntegerField
      DisplayLabel = #1581#1583#1575#1602#1604' '#1605#1608#1580#1608#1583#1740
      FieldName = 'MinimumStuck'
      OnGetText = qryMinimumStuckGetText
    end
    object qryMaximumStuck: TIntegerField
      DisplayLabel = #1581#1583#1575#1705#1579#1585' '#1605#1608#1580#1608#1583#1740
      FieldName = 'MaximumStuck'
      OnGetText = qryMaximumStuckGetText
    end
    object qryOrderPoint: TIntegerField
      DisplayLabel = #1606#1602#1591#1607' '#1587#1601#1575#1585#1588
      FieldName = 'OrderPoint'
    end
    object qryActivated: TBooleanField
      DisplayLabel = #1608#1590#1593#1740#1578
      FieldName = 'Activated'
      Required = True
    end
    object qryDescription: TWideMemoField
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578
      FieldName = 'Description'
      BlobType = ftWideMemo
    end
    object qryIsSpecial: TBooleanField
      DisplayLabel = #1662#1740#1588#1606#1607#1575#1583' '#1608#1740#1688#1607
      FieldName = 'IsSpecial'
    end
    object qryStuffID: TFloatField
      DisplayLabel = #1588#1606#1575#1587#1607' '#1606#1608#1593' '#1705#1575#1604#1575
      FieldName = 'StuffID'
      Required = True
    end
    object qryStuffName: TWideStringField
      DisplayLabel = #1606#1608#1593' '#1705#1575#1604#1575
      FieldName = 'StuffName'
      ReadOnly = True
      Size = 200
    end
    object qryStuffCode: TWideStringField
      DisplayLabel = #1705#1583' '#1606#1608#1593' '#1705#1575#1604#1575
      FieldName = 'StuffCode'
      ReadOnly = True
      Size = 50
    end
    object qryStuffCategoryID: TFloatField
      DisplayLabel = #1588#1606#1575#1587#1607' '#1583#1587#1578#1607' '#1576#1606#1583#1740
      FieldName = 'StuffCategoryID'
      ReadOnly = True
    end
    object qryStuffCategoryName: TWideStringField
      DisplayLabel = #1583#1587#1578#1607' '#1576#1606#1583#1740' '#1705#1575#1604#1575
      FieldName = 'StuffCategoryName'
      ReadOnly = True
      Size = 500
    end
    object qryBrandID: TFloatField
      DisplayLabel = #1588#1606#1575#1587#1607' '#1576#1585#1606#1583
      FieldName = 'BrandID'
      Required = True
    end
    object qryBrandName: TWideStringField
      DisplayLabel = #1606#1575#1605' '#1576#1585#1606#1583
      FieldName = 'BrandName'
      ReadOnly = True
      Size = 500
    end
    object qryInternal: TBooleanField
      DisplayLabel = #1576#1585#1606#1583#1740' '#1583#1575#1582#1604#1740
      FieldName = 'Internal'
      ReadOnly = True
    end
    object qrySellerName: TWideStringField
      DisplayLabel = #1606#1575#1605' '#1601#1585#1608#1588#1606#1583#1607
      FieldName = 'SellerName'
      ReadOnly = True
      Size = 50
    end
    object qrySellerPhone: TWideStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1608#1588#1606#1583#1607
      FieldName = 'SellerPhone'
      ReadOnly = True
      Size = 50
    end
    object qryUnitID: TFloatField
      DisplayLabel = #1588#1606#1575#1587#1607' '#1608#1575#1581#1583' '#1575#1606#1583#1575#1586#1607' '#1711#1740#1585#1740
      FieldName = 'UnitID'
      Required = True
    end
    object qryUnitName: TWideStringField
      DisplayLabel = #1608#1575#1581#1583' '#1575#1606#1583#1575#1586#1607' '#1711#1740#1585#1740
      FieldName = 'UnitName'
      ReadOnly = True
      Size = 50
    end
    object qryEnglishName: TStringField
      DisplayLabel = 'English'
      FieldName = 'EnglishName'
      ReadOnly = True
      Size = 50
    end
    object qryStockTransactionID: TFloatField
      DisplayLabel = #1588#1606#1575#1587#1607' '#1578#1585#1575#1705#1606#1588
      FieldName = 'StockTransactionID'
      ReadOnly = True
    end
    object qryDateTime: TDateTimeField
      DisplayLabel = #1570#1582#1585#1740#1606' '#1578#1575#1585#1740#1582' '#1578#1585#1575#1705#1606#1588
      FieldName = 'DateTime'
      ReadOnly = True
      OnGetText = qryDateTimeGetText
    end
    object qryTransactionCount: TIntegerField
      DisplayLabel = #1570#1582#1585#1740#1606' '#1605#1602#1583#1575#1585' '#1578#1585#1575#1705#1606#1588
      FieldName = 'TransactionCount'
      ReadOnly = True
    end
    object qryTransactionType: TSmallintField
      DisplayLabel = #1570#1582#1585#1740#1606' '#1606#1608#1593' '#1578#1585#1575#1705#1606#1588
      FieldName = 'TransactionType'
      ReadOnly = True
    end
    object qryLastStock: TIntegerField
      DisplayLabel = #1605#1608#1580#1608#1583#1740' '#1601#1593#1604#1740
      FieldName = 'LastStock'
      ReadOnly = True
      OnGetText = qryLastStockGetText
    end
    object qryFromDate: TWideStringField
      DisplayLabel = #1588#1585#1608#1593' '#1602#1740#1605#1578' '#1711#1584#1575#1585#1740
      FieldName = 'FromDate'
      ReadOnly = True
      Size = 12
    end
    object qryPrice: TFloatField
      DisplayLabel = #1602#1740#1605#1578' '#1662#1582#1588
      FieldName = 'Price'
      ReadOnly = True
      OnGetText = qryPriceGetText
      Precision = 10
    end
    object qryConsumerPrice: TFloatField
      DisplayLabel = #1602#1740#1605#1578' '#1605#1589#1585#1601' '#1705#1606#1606#1583#1607
      FieldName = 'ConsumerPrice'
      ReadOnly = True
      OnGetText = qryConsumerPriceGetText
      Precision = 10
    end
    object qryOffer: TSmallintField
      DisplayLabel = #1583#1585#1589#1583' '#1578#1582#1601#1740#1601
      FieldName = 'Offer'
      ReadOnly = True
    end
  end
  object ds: TUniDataSource
    DataSet = qry
    Left = 24
    Top = 377
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 191
    Top = 450
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = #1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1594#1583#1740#1585
    Subject = #1711#1586#1575#1585#1588' '#1578#1585#1583#1583' '#1575#1601#1585#1575#1583' '
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 111
    Top = 450
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = True
    ExportEMF = True
    AsText = True
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 24
    Top = 450
  end
  object frxDB: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'StuffBrandID='#1588#1606#1575#1587#1607' '#1605#1581#1589#1608#1604
      'StuffBrandCode='#1705#1583' '#1605#1581#1589#1608#1604
      'StuffBrandName='#1606#1575#1605' '#1605#1581#1589#1608#1604
      'MinimumStuck='#1581#1583#1575#1602#1604' '#1605#1608#1580#1608#1583#1740
      'MaximumStuck='#1581#1583#1575#1705#1579#1585' '#1605#1608#1580#1608#1583#1740
      'OrderPoint='#1606#1602#1591#1607' '#1587#1601#1575#1585#1588
      'Activated='#1608#1590#1593#1740#1578' '#1605#1581#1589#1608#1604
      'Description='#1578#1608#1590#1740#1581#1575#1578
      'IsSpecial='#1605#1581#1589#1608#1604' '#1605#1606#1578#1582#1576
      'StuffID='#1588#1606#1575#1587#1607' '#1606#1608#1593' '#1705#1575#1604#1575
      'StuffName='#1606#1608#1593' '#1705#1575#1604#1575
      'StuffCode='#1705#1583' '#1606#1608#1593' '#1705#1575#1604#1575
      'StuffCategoryID='#1588#1606#1575#1587#1607' '#1583#1587#1578#1607' '#1576#1606#1583#1740
      'StuffCategoryName='#1583#1587#1578#1607' '#1576#1606#1583#1740' '#1605#1581#1589#1608#1604#1575#1578
      'BrandID='#1588#1606#1575#1587#1607' '#1576#1585#1606#1583
      'BrandName='#1606#1575#1605' '#1576#1585#1606#1583
      'Internal='#1576#1585#1606#1583' '#1583#1575#1582#1604#1740
      'SellerName='#1606#1575#1605' '#1601#1585#1608#1588#1606#1583#1607
      'SellerPhone='#1588#1605#1575#1585#1607' '#1578#1605#1575#1587' '#1601#1585#1608#1588#1606#1583#1607
      'UnitID='#1588#1606#1575#1587#1607' '#1608#1575#1581#1583' '#1575#1606#1583#1575#1586#1607' '#1711#1740#1585#1740
      'UnitName='#1608#1575#1581#1583' '#1575#1606#1583#1575#1586#1607' '#1711#1740#1585#1740
      'EnglishName=English'
      'StockTransactionID='#1588#1606#1575#1587#1607' '#1578#1585#1575#1705#1606#1588' '#1705#1575#1604#1575
      'DateTime='#1586#1605#1575#1606' '#1578#1585#1575#1705#1606#1588
      'TransactionCount='#1570#1582#1585#1740#1606' '#1605#1740#1586#1575#1606' '#1578#1585#1575#1705#1606#1588' '#1575#1606#1576#1575#1585
      'TransactionType='#1606#1608#1593' '#1578#1585#1575#1705#1606#1588
      'LastStock='#1605#1608#1580#1608#1583#1740' '#1601#1593#1604#1740
      'FromDate='#1578#1575#1585#1740#1582' '#1602#1740#1605#1578' '#1711#1584#1575#1585#1740
      'Price='#1602#1740#1605#1578' '#1662#1582#1588
      'ConsumerPrice='#1602#1740#1605#1578' '#1605#1589#1585#1601' '#1705#1606#1606#1583#1607
      'Offer='#1583#1585#1589#1583' '#1578#1582#1601#1740#1601)
    DataSource = ds
    BCDToCurrency = False
    Left = 96
    Top = 320
  end
  object frxReport: TfrxReport
    Version = '6.4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43369.083960856500000000
    ReportOptions.LastChange = 43369.083960856500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 96
    Top = 376
    Datasets = <
      item
        DataSet = frxDB
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 290.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 119.280303330000000000
        Top = 18.897650000000000000
        Width = 1020.473100000000000000
        ReprintOnNewPage = True
        Stretched = True
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 975.118740000000000000
          Top = 86.929190000000000000
          Width = 45.354360000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haCenter
          Memo.UTF8W = (
            #1585#1583#1610#1601)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 86.929190000000000000
          Width = 222.992270000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haCenter
          Memo.UTF8W = (
            #1606#1575#1605' '#1605#1581#1589#1608#1604)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 86.929190000000000000
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haCenter
          Memo.UTF8W = (
            #1583#1585#1589#1583' '#1578#1582#1601#1740#1601)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 548.031850000000100000
          Top = 86.929190000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haCenter
          Memo.UTF8W = (
            #1608#1575#1581#1583' '#1575#1606#1583#1575#1586#1607' '#1711#1740#1585#1740)
          ParentFont = False
          VAlign = vaCenter
        end
        object Page: TfrxMemoView
          AllowVectorExport = True
          Left = 60.118738500000000000
          Top = 50.620284490000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 89.693568500000000000
          Top = 51.620284490000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ':'#1589#1601#1581#1607)
          ParentFont = False
        end
        object TotalPages: TfrxMemoView
          AllowVectorExport = True
          Left = 19.984848500000000000
          Top = 50.620284490000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TotalPages#]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 46.221088500000000000
          Top = 48.399814490000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1586)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 87.713048980000000000
          Top = 21.856524490000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ':'#1578#1575#1585#1740#1582' '#1711#1586#1575#1585#1588)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 372.283705000000000000
          Top = 26.326221430000000000
          Width = 275.905690000000000000
          Height = 34.015770000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'B Lotus'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1711#1586#1575#1585#1588' '#1604#1740#1587#1578' '#1605#1581#1589#1608#1604#1575#1578)
          ParentFont = False
        end
        object lblDate: TfrxMemoView
          AllowVectorExport = True
          Left = 12.122448980000000000
          Top = 20.195114490000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'lblDate')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 891.969080000000000000
          Top = 86.929190000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haCenter
          Memo.UTF8W = (
            #1705#1583' '#1605#1581#1589#1608#1604)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 86.929190000000000000
          Width = 117.165430000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haCenter
          Memo.UTF8W = (
            #1602#1740#1605#1578' '#1601#1585#1608#1588' / '#1662#1582#1588)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 86.929190000000000000
          Width = 102.047310000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haCenter
          Memo.UTF8W = (
            #1602#1740#1605#1578' '#1605#1589#1585#1601' '#1705#1606#1606#1583#1607)
          ParentFont = False
          VAlign = vaCenter
        end
        object lblCo: TfrxMemoView
          AllowVectorExport = True
          Left = 735.549011120000000000
          Top = 3.680272100000000000
          Width = 275.905690000000000000
          Height = 34.015770000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'B Lotus'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1587#1575#1605#1575#1606#1607' '#1662#1582#1588' '#1607#1608#1588#1605#1606#1583' '#1705#1575#1604#1575' '#1576#1607#1588#1585#1602)
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 86.929190000000000000
          Width = 86.929190000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haCenter
          Memo.UTF8W = (
            #1581#1583#1575#1602#1604' '#1605#1608#1580#1608#1583#1740)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 86.929190000000000000
          Width = 86.929190000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haCenter
          Memo.UTF8W = (
            #1581#1583#1575#1705#1579#1585' '#1605#1608#1580#1608#1583#1740)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 86.929190000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haCenter
          Memo.UTF8W = (
            #1605#1608#1580#1608#1583#1740' '#1601#1593#1604#1740)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 31.671150000000000000
        Top = 162.519790000000000000
        Width = 1020.473100000000000000
        DataSet = frxDB
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 975.118740000000000000
          Width = 45.354360000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Width = 222.992270000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Clipped = False
          DataField = #1606#1575#1605' '#1605#1581#1589#1608#1604
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."'#1606#1575#1605' '#1605#1581#1589#1608#1604'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 548.031850000000100000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1608#1575#1581#1583' '#1575#1606#1583#1575#1586#1607' '#1711#1740#1585#1740
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."'#1608#1575#1581#1583' '#1575#1606#1583#1575#1586#1607' '#1711#1740#1585#1740'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 891.969080000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Clipped = False
          DataField = #1705#1583' '#1605#1581#1589#1608#1604
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."'#1705#1583' '#1605#1581#1589#1608#1604'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1583#1585#1589#1583' '#1578#1582#1601#1740#1601
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."'#1583#1585#1589#1583' '#1578#1582#1601#1740#1601'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Width = 117.165430000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1602#1740#1605#1578' '#1662#1582#1588
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."'#1602#1740#1605#1578' '#1662#1582#1588'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Width = 102.047310000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1602#1740#1605#1578' '#1605#1589#1585#1601' '#1705#1606#1606#1583#1607
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."'#1602#1740#1605#1578' '#1605#1589#1585#1601' '#1705#1606#1606#1583#1607'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Width = 86.929190000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1581#1583#1575#1602#1604' '#1605#1608#1580#1608#1583#1740
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."'#1581#1583#1575#1602#1604' '#1605#1608#1580#1608#1583#1740'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Width = 86.929190000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1581#1583#1575#1705#1579#1585' '#1605#1608#1580#1608#1583#1740
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."'#1581#1583#1575#1705#1579#1585' '#1605#1608#1580#1608#1583#1740'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1605#1608#1580#1608#1583#1740' '#1601#1593#1604#1740
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."'#1605#1608#1580#1608#1583#1740' '#1601#1593#1604#1740'"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
