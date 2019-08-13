object frmRpStockTransactionHistory: TfrmRpStockTransactionHistory
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  Caption = #1711#1586#1575#1585#1588' '#1578#1575#1585#1740#1582#1670#1607' '#1578#1585#1575#1705#1606#1588' '#1607#1575#1740' '#1575#1606#1576#1575#1585
  ClientHeight = 749
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
    Height = 190
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
      190)
    TMSStyle = 4
    object pnlStufInfo: TAdvSmoothPanel
      Left = 8
      Top = 6
      Width = 966
      Height = 85
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
        85)
      TMSStyle = 4
      object lblStuffBrandCode: TLabel
        Left = 738
        Top = 9
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
      end
      object lblStuffBrandName: TLabel
        Left = 529
        Top = 9
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
      end
      object lblBrandName: TLabel
        Left = 738
        Top = 59
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
      end
      object lblStuffCode: TLabel
        Left = 738
        Top = 34
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
      end
      object lblStuffName: TLabel
        Left = 529
        Top = 38
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
      end
      object rbAll: TcxRadioButton
        Left = 848
        Top = 8
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
        Top = 58
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
        Top = 33
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
        Top = 7
        Width = 130
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 3
        OnExit = cmbStuffBrandCodeExit
      end
      object cmbStuffBrandName: TComboBox
        Left = 97
        Top = 7
        Width = 429
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 4
        OnExit = cmbStuffBrandNameExit
      end
      object cmbBrandName: TComboBox
        Left = 97
        Top = 57
        Width = 638
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Enabled = False
        TabOrder = 5
      end
      object cmbStuffCode: TComboBox
        Left = 605
        Top = 32
        Width = 130
        Height = 21
        Anchors = [akTop, akRight]
        Enabled = False
        TabOrder = 6
        OnExit = cmbStuffCodeExit
      end
      object cmbStuffName: TComboBox
        Left = 97
        Top = 32
        Width = 429
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Enabled = False
        TabOrder = 7
        OnExit = cmbStuffNameExit
      end
      object cmbIsStuffBrand: TComboBox
        Left = 9
        Top = 7
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
        Top = 32
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
        Top = 57
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
      Left = 548
      Top = 94
      Width = 426
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
        Left = 320
        Top = 13
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
        Left = 205
        Top = 11
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
        Left = 112
        Top = 11
        Width = 90
        Height = 21
        Alignment = taCenter
        NumbersOnly = True
        TabOrder = 1
      end
      object cmbIsLastStock: TComboBox
        Left = 26
        Top = 11
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
      Left = 548
      Top = 143
      Width = 426
      Height = 42
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
        Left = 320
        Top = 14
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
        Left = 205
        Top = 11
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
        Left = 23
        Top = 11
        Caption = #1601#1602#1591' '#1662#1740#1588#1606#1607#1575#1583' '#1608#1740#1688#1607' '#1576#1575#1588#1583
        Properties.Alignment = taRightJustify
        Style.BorderStyle = ebsOffice11
        Style.HotTrack = True
        TabOrder = 1
        Transparent = True
      end
    end
    object AdvSmoothPanel3: TAdvSmoothPanel
      Left = 8
      Top = 94
      Width = 536
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
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
      DesignSize = (
        536
        47)
      TMSStyle = 4
      object Label1: TLabel
        Left = 356
        Top = 14
        Width = 125
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1740#1582' '#1570#1582#1585#1740#1606' '#1578#1585#1575#1705#1606#1588' '#1575#1606#1576#1575#1585' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 376
      end
      object CmbTransactionDateSign: TComboBox
        Left = 239
        Top = 12
        Width = 112
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
      object cmbIsTransactionDate: TComboBox
        Left = 45
        Top = 12
        Width = 84
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemIndex = 0
        TabOrder = 1
        Text = #1576#1575#1588#1583
        Items.Strings = (
          #1576#1575#1588#1583
          #1606#1576#1575#1588#1583)
      end
      object edtTransactionDate: TSolarDatePicker
        Left = 133
        Top = 11
        Width = 102
        Height = 24
        Anchors = [akTop, akRight]
        About = 'Created by : '#1575#1605#1740#1585' '#1601#1585#1586#1575#1605
        BiDiMode = bdLeftToRight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Enabled = True
        VisibleLayoutSwitch = False
        DateKind = dkSolar
        CheckInputOnExit = True
        Divider = dSlash
        ShowToDay = True
        MonthObject = moPopupMenu
        Glyph = gtBlueArrowDown
        ShowDefaultDate = False
        AutoCheck = False
        AutoDeleteDelimiter = False
        EnabledDays = [mcSaturday, mcSunday, mcMonday, mcTuesday, mcWednesday, mcThursday, mcFriday]
        MaskEnabled = False
        ColorCaptionStart = 13158600
        ColorCaptionStop = clWhite
        ColorBodyStart = clWhite
        ColorBodyStop = clWhite
        ColorTodayLine = clBlack
        ColorSelectBrush = 14474460
        ColorDisableMonth = clGray
        ColorVacationDay = clRed
        ColorNormalDay = clBlack
        ColorStyle = csWhiteGray
        ButtonStyle = bsRound
        DataFieldType = dftSolar
        DataFieldAutoSaveModified = False
      end
    end
    object AdvSmoothPanel1: TAdvSmoothPanel
      Left = 8
      Top = 143
      Width = 536
      Height = 42
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
      TabOrder = 4
      DesignSize = (
        536
        42)
      TMSStyle = 4
      object Label4: TLabel
        Left = 357
        Top = 13
        Width = 139
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1578#1585#1575#1705#1606#1588' '#1575#1606#1576#1575#1585' '#1601#1602#1591' '#1575#1586' '#1606#1608#1593' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 377
      end
      object cmbTransactionType: TComboBox
        Left = 135
        Top = 11
        Width = 216
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemIndex = 0
        TabOrder = 0
        Text = #1607#1605#1607' '#1578#1585#1575#1705#1606#1588' '#1607#1575#1740' '#1575#1606#1576#1575#1585
        Items.Strings = (
          #1607#1605#1607' '#1578#1585#1575#1705#1606#1588' '#1607#1575#1740' '#1575#1606#1576#1575#1585
          #1578#1582#1589#1740#1589' '#1605#1608#1580#1608#1583#1740' '#1575#1608#1604#1740#1607
          #1585#1587#1740#1583' '#1576#1607' '#1575#1606#1576#1575#1585
          #1581#1608#1575#1604#1607' '#1575#1586' '#1575#1606#1576#1575#1585
          #1605#1585#1580#1608#1593' '#1576#1607' '#1601#1585#1608#1588#1606#1583#1607
          #1576#1585#1711#1588#1578' '#1576#1607' '#1575#1606#1576#1575#1585)
      end
    end
  end
  object pnlBottom: TAdvSmoothPanel
    Left = 0
    Top = 693
    Width = 983
    Height = 56
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
    ExplicitTop = 707
    DesignSize = (
      983
      56)
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
    Top = 190
    Width = 983
    Height = 503
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
    ExplicitHeight = 517
    TMSStyle = 4
    object grd: TDBGridEh
      Left = 0
      Top = 0
      Width = 983
      Height = 281
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
          FieldName = 'StuffCode'
          Footers = <>
          Width = 66
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StuffBrandName'
          Footers = <>
          Width = 245
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'UnitName'
          Footers = <>
          Width = 109
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MinimumStuck'
          Footers = <>
          Width = 45
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MaximumStuck'
          Footers = <>
          Width = 52
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'LastStock'
          Footers = <>
          Width = 60
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OrderPoint'
          Footers = <>
          Width = 59
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TransactionCount'
          Footers = <>
          Width = 69
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TransactionType'
          Footers = <>
          Width = 129
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Activated'
          Footers = <>
          Width = 42
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Deleted'
          Footers = <>
          Width = 45
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object pnlReceiptItem: TAdvSmoothPanel
      Left = 0
      Top = 281
      Width = 983
      Height = 236
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
      Fill.Rounding = 0
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Version = '1.6.0.1'
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        983
        236)
      TMSStyle = 4
      object Label8: TLabel
        Left = 853
        Top = 11
        Width = 121
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1740#1582#1670#1607' '#1578#1585#1575#1705#1606#1588' '#1607#1575#1740' '#1575#1606#1576#1575#1585' :'
      end
      object grdReceiptItem: TDBGridEh
        Left = 0
        Top = 31
        Width = 983
        Height = 205
        ParentCustomHint = False
        Align = alBottom
        AutoFitColWidths = True
        Border.ExtendedDraw = True
        Color = clBtnFace
        ColumnDefValues.Title.TitleButton = True
        DataSource = dsDetailes
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
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DateTime'
            Footers = <>
            Width = 222
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TransactionType'
            Footers = <>
            Width = 321
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TransactionSign'
            Footers = <>
            Width = 145
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TransactionCount'
            Footers = <>
            Width = 106
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LastStock'
            Footers = <>
            Width = 134
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object qry: TUniQuery
    SQL.Strings = (
      'SELECT [StuffBrandID]'
      '      ,[StuffBrandCode]'
      '      ,[StuffBrandName]'
      '      ,[MinimumStuck]'
      '      ,[MaximumStuck]'
      '      ,[OrderPoint]'
      '      ,[Activated]'
      '      ,[Deleted]'
      '      ,[Description]'
      '      ,[IsSpecial]'
      '      ,[StuffID]'
      '      ,[StuffName]'
      '      ,[StuffCode]'
      '      ,[StuffCategoryID]'
      '      ,[StuffCategoryName]'
      '      ,[BrandID]'
      '      ,[BrandName]'
      '      ,[Internal]'
      '      ,[SellerName]'
      '      ,[SellerPhone]'
      '      ,[UnitID]'
      '      ,[UnitName]'
      '      ,[EnglishName]'
      '      ,[StockTransactionID]'
      '      ,[DateTime]'
      '      ,[TransactionCount]'
      '      ,[TransactionType]'
      '      ,[LastStock]'
      'FROM [Pakhsh].[dbo].[StuffBrandInfo]')
    Left = 24
    Top = 320
    object qryStuffBrandID: TFloatField
      DisplayLabel = #1588#1606#1575#1587#1607' '#1605#1581#1589#1608#1604
      DisplayWidth = 10
      FieldName = 'StuffBrandID'
      Required = True
    end
    object qryStuffBrandCode: TWideStringField
      DisplayLabel = #1705#1583' '#1605#1581#1589#1608#1604
      DisplayWidth = 14
      FieldName = 'StuffBrandCode'
      Size = 50
    end
    object qryStuffBrandName: TWideStringField
      DisplayLabel = #1606#1575#1605' '#1605#1581#1589#1608#1604
      DisplayWidth = 27
      FieldName = 'StuffBrandName'
      ReadOnly = True
      Size = 701
    end
    object qryMinimumStuck: TIntegerField
      DisplayLabel = #1581#1583#1575#1602#1604' '#1605#1608#1580#1608#1583#1740
      DisplayWidth = 10
      FieldName = 'MinimumStuck'
    end
    object qryMaximumStuck: TIntegerField
      DisplayLabel = #1581#1583#1575#1705#1579#1585' '#1605#1608#1580#1608#1583#1740
      DisplayWidth = 10
      FieldName = 'MaximumStuck'
    end
    object qryOrderPoint: TIntegerField
      DisplayLabel = #1606#1602#1591#1607' '#1587#1601#1575#1585#1588
      DisplayWidth = 10
      FieldName = 'OrderPoint'
    end
    object qryActivated: TBooleanField
      DisplayLabel = #1608#1590#1593#1740#1578' '#1605#1581#1589#1608#1604
      DisplayWidth = 5
      FieldName = 'Activated'
      Required = True
    end
    object qryDeleted: TBooleanField
      DisplayLabel = #1581#1584#1601' '#1588#1583#1607
      DisplayWidth = 5
      FieldName = 'Deleted'
      Required = True
    end
    object qryIsSpecial: TBooleanField
      DisplayLabel = #1662#1740#1588#1606#1607#1575#1583' '#1608#1740#1688#1607
      DisplayWidth = 5
      FieldName = 'IsSpecial'
    end
    object qryStuffID: TFloatField
      DisplayLabel = #1588#1606#1575#1587#1607' '#1606#1608#1593' '#1705#1575#1604#1575
      DisplayWidth = 10
      FieldName = 'StuffID'
      Required = True
    end
    object qryStuffName: TWideStringField
      DisplayLabel = #1606#1608#1593' '#1705#1575#1604#1575
      DisplayWidth = 36
      FieldName = 'StuffName'
      ReadOnly = True
      Size = 200
    end
    object qryStuffCode: TWideStringField
      DisplayLabel = #1705#1583' '#1705#1575#1604#1575
      DisplayWidth = 12
      FieldName = 'StuffCode'
      ReadOnly = True
      Size = 50
    end
    object qryStuffCategoryID: TFloatField
      DisplayLabel = #1588#1606#1575#1587#1607' '#1583#1587#1578#1607' '#1576#1606#1583#1740
      DisplayWidth = 10
      FieldName = 'StuffCategoryID'
      ReadOnly = True
    end
    object qryStuffCategoryName: TWideStringField
      DisplayLabel = #1583#1587#1578#1607' '#1576#1606#1583#1740' '#1705#1575#1604#1575
      DisplayWidth = 33
      FieldName = 'StuffCategoryName'
      ReadOnly = True
      Size = 500
    end
    object qryBrandID: TFloatField
      DisplayLabel = #1588#1606#1575#1587#1607' '#1576#1585#1606#1583
      DisplayWidth = 10
      FieldName = 'BrandID'
      Required = True
    end
    object qryBrandName: TWideStringField
      DisplayLabel = #1606#1575#1605' '#1576#1585#1606#1583
      DisplayWidth = 500
      FieldName = 'BrandName'
      ReadOnly = True
      Size = 500
    end
    object qryInternal: TBooleanField
      DisplayLabel = #1605#1581#1589#1608#1604' '#1583#1575#1582#1604#1740
      DisplayWidth = 5
      FieldName = 'Internal'
      ReadOnly = True
    end
    object qryUnitID: TFloatField
      DisplayLabel = #1588#1606#1575#1587#1607' '#1608#1575#1581#1583' '#1575#1606#1583#1575#1586#1607' '#1711#1740#1585#1740
      DisplayWidth = 10
      FieldName = 'UnitID'
      Required = True
    end
    object qryUnitName: TWideStringField
      DisplayLabel = #1608#1575#1581#1583' '#1575#1606#1583#1575#1586#1607' '#1711#1740#1585#1740
      DisplayWidth = 50
      FieldName = 'UnitName'
      ReadOnly = True
      Size = 50
    end
    object qryEnglishName: TStringField
      DisplayLabel = 'English'
      DisplayWidth = 50
      FieldName = 'EnglishName'
      ReadOnly = True
      Size = 50
    end
    object qryStockTransactionID: TFloatField
      DisplayLabel = #1588#1606#1575#1587#1607' '#1578#1585#1575#1705#1606#1588' '#1575#1606#1576#1575#1585
      DisplayWidth = 10
      FieldName = 'StockTransactionID'
      ReadOnly = True
    end
    object qryDateTime: TDateTimeField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1570#1582#1585#1740#1606' '#1578#1585#1575#1705#1606#1588
      DisplayWidth = 18
      FieldName = 'DateTime'
      ReadOnly = True
      OnGetText = qryDateTimeGetText
    end
    object qryTransactionCount: TIntegerField
      DisplayLabel = #1578#1593#1583#1575#1583' '#1570#1582#1585#1740#1606' '#1578#1585#1575#1705#1606#1588
      DisplayWidth = 10
      FieldName = 'TransactionCount'
      ReadOnly = True
    end
    object qryTransactionType: TSmallintField
      DisplayLabel = #1606#1608#1593' '#1570#1582#1585#1740#1606' '#1578#1585#1575#1705#1606#1588
      DisplayWidth = 10
      FieldName = 'TransactionType'
      ReadOnly = True
      OnGetText = qryTransactionTypeGetText
    end
    object qryLastStock: TIntegerField
      DisplayLabel = #1570#1582#1585#1740#1606' '#1605#1608#1580#1608#1583#1740
      DisplayWidth = 10
      FieldName = 'LastStock'
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
    Left = 199
    Top = 642
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
    Left = 119
    Top = 642
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
    Left = 32
    Top = 642
  end
  object frxDB: TfrxDBDataset
    UserName = 'frxDB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'StuffBrandID='#1588#1606#1575#1587#1607' '#1605#1581#1589#1608#1604
      'StuffBrandCode='#1705#1583' '#1605#1581#1589#1608#1604
      'StuffBrandName='#1606#1575#1605' '#1605#1581#1589#1608#1604
      'MinimumStuck='#1581#1583#1575#1602#1604' '#1605#1608#1580#1608#1583#1740
      'MaximumStuck='#1581#1583#1575#1705#1579#1585' '#1605#1608#1580#1608#1583#1740
      'OrderPoint='#1606#1602#1591#1607' '#1587#1601#1575#1585#1588
      'Activated='#1608#1590#1593#1740#1578' '#1605#1581#1589#1608#1604
      'Deleted='#1581#1584#1601' '#1588#1583#1607
      'IsSpecial='#1662#1740#1588#1606#1607#1575#1583' '#1608#1740#1688#1607
      'StuffID='#1588#1606#1575#1587#1607' '#1606#1608#1593' '#1705#1575#1604#1575
      'StuffName='#1606#1608#1593' '#1705#1575#1604#1575
      'StuffCode='#1705#1583' '#1606#1608#1593' '#1705#1575#1604#1575
      'StuffCategoryID='#1588#1606#1575#1587#1607' '#1583#1587#1578#1607' '#1576#1606#1583#1740
      'StuffCategoryName='#1583#1587#1578#1607' '#1576#1606#1583#1740' '#1705#1575#1604#1575
      'BrandID='#1588#1606#1575#1587#1607' '#1576#1585#1606#1583
      'BrandName='#1606#1575#1605' '#1576#1585#1606#1583
      'Internal='#1583#1575#1582#1604#1740
      'UnitID='#1588#1606#1575#1587#1607' '#1608#1575#1581#1583' '#1575#1606#1583#1575#1586#1607' '#1711#1740#1585#1740
      'UnitName='#1608#1575#1581#1583' '#1575#1606#1583#1575#1586#1607' '#1711#1740#1585#1740
      'EnglishName=English'
      'StockTransactionID='#1588#1606#1575#1587#1607' '#1578#1585#1575#1705#1606#1588' '#1575#1606#1576#1575#1585
      'DateTime='#1570#1582#1585#1740#1606' '#1578#1575#1585#1740#1582' '#1578#1585#1575#1705#1606#1588
      'TransactionCount='#1578#1593#1583#1575#1583' '#1570#1582#1585#1740#1606' '#1578#1585#1575#1705#1606#1588
      'TransactionType='#1606#1608#1593' '#1578#1585#1575#1705#1606#1588
      'LastStock='#1570#1582#1585#1740#1606' '#1605#1608#1580#1608#1583#1740)
    DataSource = ds
    BCDToCurrency = False
    Left = 88
    Top = 392
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
    Left = 224
    Top = 568
    Datasets = <
      item
        DataSet = frxDBDetailes
        DataSetName = 'frxDBDetailes'
      end
      item
        DataSet = frxDB
        DataSetName = 'frxDB'
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
      ShowTitleOnPreviousPage = False
      ResetPageNumbers = True
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 117.626159180000000000
        Top = 211.653680000000000000
        Width = 1020.473100000000000000
        DataSet = frxDB
        DataSetName = 'frxDB'
        RowCount = 0
        StartNewPage = True
        Stretched = True
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 978.898270000000000000
          Top = 86.929190000000000000
          Width = 41.574830000000000000
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
          Left = 729.449290000000000000
          Top = 86.929190000000000000
          Width = 177.637910000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Clipped = False
          DataField = #1606#1575#1605' '#1605#1581#1589#1608#1604
          DataSet = frxDB
          DataSetName = 'frxDB'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDB."'#1606#1575#1605' '#1605#1581#1589#1608#1604'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 86.929190000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1581#1583#1575#1602#1604' '#1605#1608#1580#1608#1583#1740
          DataSet = frxDB
          DataSetName = 'frxDB'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB."'#1581#1583#1575#1602#1604' '#1605#1608#1580#1608#1583#1740'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 907.087200000000000000
          Top = 86.929190000000000000
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Clipped = False
          DataField = #1705#1583' '#1605#1581#1589#1608#1604
          DataSet = frxDB
          DataSetName = 'frxDB'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB."'#1705#1583' '#1605#1581#1589#1608#1604'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 86.929190000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1570#1582#1585#1740#1606' '#1605#1608#1580#1608#1583#1740
          DataSet = frxDB
          DataSetName = 'frxDB'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB."'#1570#1582#1585#1740#1606' '#1605#1608#1580#1608#1583#1740'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 86.929190000000000000
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1606#1602#1591#1607' '#1587#1601#1575#1585#1588
          DataSet = frxDB
          DataSetName = 'frxDB'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB."'#1606#1602#1591#1607' '#1587#1601#1575#1585#1588'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 86.929190000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1581#1583#1575#1705#1579#1585' '#1605#1608#1580#1608#1583#1740
          DataSet = frxDB
          DataSetName = 'frxDB'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB."'#1581#1583#1575#1705#1579#1585' '#1605#1608#1580#1608#1583#1740'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 86.929190000000000000
          Width = 109.606370000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1608#1575#1581#1583' '#1575#1606#1583#1575#1586#1607' '#1711#1740#1585#1740
          DataSet = frxDB
          DataSetName = 'frxDB'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDB."'#1608#1575#1581#1583' '#1575#1606#1583#1575#1586#1607' '#1711#1740#1585#1740'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 86.929190000000000000
          Width = 124.724490000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1583#1587#1578#1607' '#1576#1606#1583#1740' '#1705#1575#1604#1575
          DataSet = frxDB
          DataSetName = 'frxDB'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDB."'#1583#1587#1578#1607' '#1576#1606#1583#1740' '#1705#1575#1604#1575'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Top = 86.929190000000000000
          Width = 173.858380000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1570#1582#1585#1740#1606' '#1578#1575#1585#1740#1582' '#1578#1585#1575#1705#1606#1588
          DataSet = frxDB
          DataSetName = 'frxDB'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB."'#1570#1582#1585#1740#1606' '#1578#1575#1585#1740#1582' '#1578#1585#1575#1705#1606#1588'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 978.898270000000000000
          Top = 56.692949999999990000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindowFrame
          HAlign = haCenter
          Memo.UTF8W = (
            #1585#1583#1610#1601)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 729.449290000000000000
          Top = 56.692949999999990000
          Width = 177.637910000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindowFrame
          HAlign = haCenter
          Memo.UTF8W = (
            #1606#1575#1605' '#1605#1581#1589#1608#1604)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 56.692949999999990000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindowFrame
          HAlign = haCenter
          Memo.UTF8W = (
            #1605#1608#1580#1608#1583#1740' '#1601#1593#1604#1740)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 56.692949999999990000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindowFrame
          HAlign = haCenter
          Memo.UTF8W = (
            #1581#1583#1575#1602#1604' '#1605#1608#1580#1608#1583#1740)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 907.087200000000000000
          Top = 56.692949999999990000
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindowFrame
          HAlign = haCenter
          Memo.UTF8W = (
            #1705#1583' '#1605#1581#1589#1608#1604)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 56.692949999999990000
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindowFrame
          HAlign = haCenter
          Memo.UTF8W = (
            #1606#1602#1591#1607' '#1587#1601#1575#1585#1588)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 56.692949999999990000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindowFrame
          HAlign = haCenter
          Memo.UTF8W = (
            #1581#1583#1575#1705#1579#1585' '#1605#1608#1580#1608#1583#1740)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 56.692949999999990000
          Width = 109.606370000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindowFrame
          HAlign = haCenter
          Memo.UTF8W = (
            #1608#1575#1581#1583' '#1575#1606#1583#1575#1586#1607' '#1711#1740#1585#1740)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 56.692949999999990000
          Width = 124.724490000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindowFrame
          HAlign = haCenter
          Memo.UTF8W = (
            #1583#1587#1578#1607' '#1576#1606#1583#1740' '#1705#1575#1604#1575)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 56.692949999999990000
          Width = 173.858380000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindowFrame
          HAlign = haCenter
          Memo.UTF8W = (
            #1586#1605#1575#1606' '#1570#1582#1585#1740#1606' '#1578#1585#1575#1705#1606#1588' '#1575#1606#1576#1575#1585)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.309832720000000000
        Top = 430.866420000000000000
        Width = 1020.473100000000000000
        DataSet = frxDBDetailes
        DataSetName = 'frxDBDetailes'
        RowCount = 0
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 786.142240000000000000
          Width = 188.976500000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Clipped = False
          DataField = #1586#1605#1575#1606' '#1578#1585#1575#1705#1606#1588
          DataSet = frxDBDetailes
          DataSetName = 'frxDBDetailes'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDetailes."'#1586#1605#1575#1606' '#1578#1585#1575#1705#1606#1588'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Width = 200.315090000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Clipped = False
          DataField = #1606#1608#1593' '#1578#1585#1575#1705#1606#1588
          DataSet = frxDBDetailes
          DataSetName = 'frxDBDetailes'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDetailes."'#1606#1608#1593' '#1578#1585#1575#1705#1606#1588'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
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
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Width = 113.385900000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Clipped = False
          DataField = #1575#1601#1586#1575#1740#1606#1583#1607' / '#1705#1575#1607#1606#1583#1607
          DataSet = frxDBDetailes
          DataSetName = 'frxDBDetailes'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDetailes."'#1575#1601#1586#1575#1740#1606#1583#1607' / '#1705#1575#1607#1606#1583#1607'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Width = 90.708720000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Clipped = False
          DataField = #1578#1593#1583#1575#1583' '#1578#1585#1575#1705#1606#1588
          DataSet = frxDBDetailes
          DataSetName = 'frxDBDetailes'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDetailes."'#1578#1593#1583#1575#1583' '#1578#1585#1575#1705#1606#1588'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 291.023810000000000000
          Width = 90.708720000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Clipped = False
          DataField = #1605#1608#1580#1608#1583#1740
          DataSet = frxDBDetailes
          DataSetName = 'frxDBDetailes'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDetailes."'#1605#1608#1580#1608#1583#1740'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Width = 291.023810000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Clipped = False
          DataSet = frxDBDetailes
          DataSetName = 'frxDBDetailes'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.724799050000000000
        Top = 18.897650000000000000
        Width = 1020.473100000000000000
        object lblCo: TfrxMemoView
          AllowVectorExport = True
          Left = 739.753092750000000000
          Top = 2.190785370000000000
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
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 68.935683400000000000
        Top = 83.149660000000000000
        Width = 1020.473100000000000000
        object Page: TfrxMemoView
          AllowVectorExport = True
          Left = 47.616883200000000000
          Top = 41.517625030000010000
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
          Left = 77.191713200000000000
          Top = 42.517625030000010000
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
          Left = 7.482993200000000000
          Top = 41.517625030000010000
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
          Left = 33.719233200000000000
          Top = 39.297155030000100000
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
          Left = 83.073593200000000000
          Top = 8.985775919999995000
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
        object lblDate: TfrxMemoView
          AllowVectorExport = True
          Left = 7.482993200000000000
          Top = 7.324365920000005000
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
        object Memo8: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 372.283705000000000000
          Top = 18.208719660000000000
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
            #1711#1586#1575#1585#1588' '#1578#1575#1585#1740#1582#1670#1607' '#1578#1585#1575#1705#1606#1588' '#1607#1575#1740' '#1575#1606#1576#1575#1585)
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 55.934446530000000000
        Top = 351.496290000000000000
        Width = 1020.473100000000000000
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 782.362710000000000000
          Top = 26.456709999999990000
          Width = 192.756030000000000000
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
            #1586#1605#1575#1606' '#1578#1585#1575#1705#1606#1588)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 26.456709999999990000
          Width = 200.315090000000000000
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
            #1606#1608#1593' '#1578#1585#1575#1705#1606#1588)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 975.118740000000000000
          Top = 26.456709999999990000
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
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 468.661720000000000000
          Top = 26.456709999999990000
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
            #1705#1575#1607#1606#1583#1607' / '#1575#1601#1586#1575#1740#1606#1583#1607)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 26.456709999999990000
          Width = 90.708720000000000000
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
            #1578#1593#1583#1575#1583' '#1578#1585#1575#1705#1606#1588)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 291.023810000000000000
          Top = 26.456709999999990000
          Width = 90.708720000000000000
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
            #1605#1608#1580#1608#1583#1740)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Top = 26.456709999999990000
          Width = 291.023810000000000000
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
            #1578#1608#1590#1740#1581#1575#1578)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Width = 1020.473100000000000000
          Height = 26.456710000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindowFrame
          HAlign = haCenter
          Memo.UTF8W = (
            #1578#1575#1585#1740#1582#1670#1607' '#1578#1585#1575#1705#1606#1588' '#1575#1606#1576#1575#1585' ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object qryDetailes: TUniQuery
    SQL.Strings = (
      'SELECT '
      #9'ID,'
      #9'DateTime,'
      #9'TransactionType,'
      '        TransactionSign,'
      #9'StuffBrandID,'
      #9'TransactionCount,'
      #9'LastStock '
      'FROM StockTransaction'
      'ORDER BY DateTime DESC')
    MasterSource = ds
    MasterFields = 'StuffBrandID'
    DetailFields = 'StuffBrandID'
    Left = 24
    Top = 536
    ParamData = <
      item
        DataType = ftFloat
        Name = 'StuffBrandID'
        ParamType = ptInput
        Value = 60093.000000000000000000
      end>
    object qryDetailesID: TFloatField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #1588#1606#1575#1587#1607' '#1578#1585#1575#1705#1606#1588
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object qryDetailesDateTime: TDateTimeField
      Alignment = taCenter
      DisplayLabel = #1586#1605#1575#1606' '#1578#1585#1575#1705#1606#1588
      FieldName = 'DateTime'
      Required = True
      OnGetText = qryDetailesDateTimeGetText
    end
    object qryDetailesTransactionType: TSmallintField
      Alignment = taCenter
      DisplayLabel = #1606#1608#1593' '#1578#1585#1575#1705#1606#1588
      FieldName = 'TransactionType'
      Required = True
      OnGetText = qryDetailesTransactionTypeGetText
    end
    object qryDetailesStuffBrandID: TFloatField
      DisplayLabel = #1588#1606#1575#1587#1607' '#1605#1581#1589#1608#1604
      FieldName = 'StuffBrandID'
      Required = True
    end
    object qryDetailesTransactionCount: TIntegerField
      Alignment = taCenter
      DisplayLabel = #1578#1593#1583#1575#1583' '#1578#1585#1575#1705#1606#1588
      FieldName = 'TransactionCount'
      Required = True
    end
    object qryDetailesLastStock: TIntegerField
      Alignment = taCenter
      DisplayLabel = #1605#1608#1580#1608#1583#1740
      FieldName = 'LastStock'
      Required = True
    end
    object qryDetailesTransactionSign: TSmallintField
      Alignment = taCenter
      DisplayLabel = #1705#1575#1607#1606#1583#1607' / '#1575#1601#1586#1575#1740#1606#1583#1607
      FieldName = 'TransactionSign'
      OnGetText = qryDetailesTransactionSignGetText
    end
  end
  object dsDetailes: TUniDataSource
    DataSet = qryDetailes
    Left = 24
    Top = 593
  end
  object frxDBDetailes: TfrxDBDataset
    UserName = 'frxDBDetailes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID='#1588#1606#1575#1587#1607' '#1578#1585#1575#1705#1606#1588
      'DateTime='#1586#1605#1575#1606' '#1578#1585#1575#1705#1606#1588
      'TransactionType='#1606#1608#1593' '#1578#1585#1575#1705#1606#1588
      'StuffBrandID='#1588#1606#1575#1587#1607' '#1605#1581#1589#1608#1604
      'TransactionCount='#1578#1593#1583#1575#1583' '#1578#1585#1575#1705#1606#1588
      'LastStock='#1605#1608#1580#1608#1583#1740
      'TransactionSign='#1575#1601#1586#1575#1740#1606#1583#1607' / '#1705#1575#1607#1606#1583#1607)
    DataSource = dsDetailes
    BCDToCurrency = False
    Left = 96
    Top = 584
  end
end
