inherited fmCorp: TfmCorp
  Tag = 1000
  Caption = #54924#49324#44288#47532
  ClientHeight = 503
  KeyPreview = False
  OnShow = FormShow
  ExplicitHeight = 541
  PixelsPerInch = 96
  TextHeight = 12
  inherited pnTop: TRzPanel
    Color = 16448250
    inherited btnInsert: TbsSkinSpeedButton
      Left = 360
      Visible = False
      ExplicitLeft = 360
    end
    inherited btnEdit: TbsSkinSpeedButton
      Left = 204
      ExplicitLeft = 204
    end
    inherited btnDelete: TbsSkinSpeedButton
      Left = 438
      Visible = False
      ExplicitLeft = 438
    end
    inherited btnPost: TbsSkinSpeedButton
      Left = 282
      ExplicitLeft = 282
    end
    inherited btnExcel: TbsSkinSpeedButton
      Visible = False
    end
    inherited nvMain: TRzDBNavigator
      Hints.Strings = ()
      Visible = False
    end
  end
  inherited pnBottom: TbsSkinPanel
    Top = 481
    ExplicitTop = 481
  end
  object pnMain: TRzPanel [2]
    Left = 0
    Top = 31
    Width = 937
    Height = 450
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = 16448250
    BorderHighlight = clWhite
    BorderShadow = 16448250
    Color = 16448250
    Ctl3D = False
    FlatColor = clGray
    FlatColorAdjustment = 0
    GradientColorStop = 16448250
    ParentCtl3D = False
    TabOrder = 2
    object RzGroupBox1: TRzGroupBox
      Left = 16
      Top = 14
      Width = 510
      Height = 97
      Caption = ' '#54924#49324#51221#48372' '
      Color = 16448250
      FrameController = MastDB.RzFrameController
      TabOrder = 0
      object bsSkinLabel10: TbsSkinLabel
        Left = 16
        Top = 18
        Width = 80
        Height = 20
        HintImageIndex = 0
        TabOrder = 0
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #54924#49324#47749
        AutoSize = False
      end
      object bsSkinLabel11: TbsSkinLabel
        Left = 258
        Top = 18
        Width = 80
        Height = 20
        HintImageIndex = 0
        TabOrder = 1
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #51204#54868#48264#54840
        AutoSize = False
      end
      object edCorpNm: TkcRzDBEdit
        Left = 102
        Top = 18
        Width = 150
        Height = 20
        DataSource = dsMain
        DataField = 'CORP_NM'
        Ctl3D = True
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ParentCtl3D = False
        TabOrder = 2
        EnterToTab = True
      end
      object edCorpTel: TkcRzDBEdit
        Left = 344
        Top = 18
        Width = 150
        Height = 20
        DataSource = dsMain
        DataField = 'CORP_TEL'
        Ctl3D = True
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ParentCtl3D = False
        TabOrder = 3
        EnterToTab = True
      end
      object bsSkinLabel19: TbsSkinLabel
        Left = 16
        Top = 44
        Width = 80
        Height = 20
        HintImageIndex = 0
        TabOrder = 4
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #48708#44256
        AutoSize = False
      end
      object edCorpBigo: TkcRzDBEdit
        Left = 102
        Top = 44
        Width = 392
        Height = 20
        DataSource = dsMain
        DataField = 'CORP_BIGO'
        Ctl3D = True
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ParentCtl3D = False
        TabOrder = 5
        EnterToTab = True
      end
      object RzPanel3: TRzPanel
        Left = 16
        Top = 70
        Width = 476
        Height = 20
        Alignment = taLeftJustify
        BorderOuter = fsFlat
        BorderColor = 16448250
        Caption = ' '#8251' '#48708#44256#45236#50857#51008' HTS '#47196#44536#51064#52285#50640' '#54364#49884#46121#45768#45796'.'
        Color = clWhite
        FlatColor = 8404992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
    end
    object RzGroupBox2: TRzGroupBox
      Left = 16
      Top = 114
      Width = 510
      Height = 89
      Caption = ' '#51077#44552#44228#51340' '#49444#51221' '
      Color = 16448250
      FrameController = MastDB.RzFrameController
      TabOrder = 1
      object bsSkinLabel2: TbsSkinLabel
        Left = 16
        Top = 21
        Width = 80
        Height = 20
        HintImageIndex = 0
        TabOrder = 0
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #51008#54665#47749
        AutoSize = False
      end
      object bsSkinLabel3: TbsSkinLabel
        Left = 258
        Top = 21
        Width = 80
        Height = 20
        HintImageIndex = 0
        TabOrder = 1
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #44228#51340#48264#54840
        AutoSize = False
      end
      object edBankNm: TkcRzDBEdit
        Left = 102
        Top = 21
        Width = 150
        Height = 20
        DataSource = dsMain
        DataField = 'BANK_NM'
        Ctl3D = True
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ParentCtl3D = False
        TabOrder = 2
        EnterToTab = True
      end
      object edAcntNo: TkcRzDBEdit
        Left = 344
        Top = 21
        Width = 150
        Height = 20
        DataSource = dsMain
        DataField = 'BANK_ACNT_NO'
        Ctl3D = True
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ParentCtl3D = False
        TabOrder = 3
        EnterToTab = True
      end
      object bsSkinLabel4: TbsSkinLabel
        Left = 16
        Top = 56
        Width = 80
        Height = 20
        HintImageIndex = 0
        TabOrder = 4
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #44228#51340#51452
        AutoSize = False
      end
      object edAcntNm: TkcRzDBEdit
        Left = 102
        Top = 56
        Width = 150
        Height = 20
        DataSource = dsMain
        DataField = 'BANK_ACNT_NM'
        Ctl3D = True
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ParentCtl3D = False
        TabOrder = 5
        EnterToTab = True
      end
    end
    object RzGroupBox3: TRzGroupBox
      Left = 16
      Top = 207
      Width = 510
      Height = 235
      Caption = ' HTS '#49444#51221' '
      Color = 16448250
      FrameController = MastDB.RzFrameController
      TabOrder = 2
      object ipyn: TbsSkinLabel
        Left = 258
        Top = 26
        Width = 130
        Height = 20
        HintImageIndex = 0
        TabOrder = 0
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #44288#47532#51088#54728#50857'IP'#49324#50857#50668#48512
        AutoSize = False
      end
      object bsSkinLabel6: TbsSkinLabel
        Left = 16
        Top = 57
        Width = 182
        Height = 20
        HintImageIndex = 0
        TabOrder = 1
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #54028#53944#45320' '#51312#54924' '#44592#44036
        AutoSize = False
      end
      object edMngAcptUseYn: TkcRzDBComboBox
        Left = 394
        Top = 26
        Width = 100
        Height = 20
        DataField = 'MNG_ACPT_USE_YN'
        DataSource = dsMain
        Style = csDropDownList
        Ctl3D = False
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ItemHeight = 12
        ParentCtl3D = False
        TabOrder = 3
        Items.Strings = (
          'Y'
          'N')
        EnterToTab = True
      end
      object bsSkinLabel1: TbsSkinLabel
        Left = 258
        Top = 57
        Width = 182
        Height = 20
        HintImageIndex = 0
        TabOrder = 10
        Visible = False
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #44277#51648#49324#54637' '#51068#44292#45236#50669' '#48372#44288' '#51068#49688
        AutoSize = False
      end
      object edHisDay: TRzDBSpinEdit
        Left = 204
        Top = 57
        Width = 47
        Height = 20
        DataSource = dsMain
        DataField = 'PARTNER_DISP_DAY'
        Ctl3D = True
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        TabOrder = 4
        AllowKeyEdit = True
        FlatButtonColor = 15790320
        Max = 60.000000000000000000
      end
      object edNotiDay: TRzDBSpinEdit
        Left = 446
        Top = 57
        Width = 47
        Height = 20
        DataSource = dsMain
        DataField = 'NOTICE_KEEP_DAY'
        Ctl3D = True
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        TabOrder = 5
        Visible = False
        AllowKeyEdit = True
        FlatButtonColor = 15790320
        Max = 60.000000000000000000
      end
      object bsSkinLabel15: TbsSkinLabel
        Left = 16
        Top = 26
        Width = 90
        Height = 20
        HintImageIndex = 0
        TabOrder = 11
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #51473#48373#54728#50857#50668#48512
        AutoSize = False
      end
      object edDupYn: TkcRzDBComboBox
        Left = 112
        Top = 26
        Width = 140
        Height = 20
        DataField = 'DUP_YN'
        DataSource = dsMain
        Style = csDropDownList
        Ctl3D = False
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ItemHeight = 12
        ParentCtl3D = False
        TabOrder = 2
        Items.Strings = (
          'Y'
          'N')
        EnterToTab = True
      end
      object bsSkinLabel16: TbsSkinLabel
        Left = 17
        Top = 120
        Width = 89
        Height = 20
        HintImageIndex = 0
        TabOrder = 12
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #54840#44032#48152#50689#50668#48512
        AutoSize = False
      end
      object cbVirtuarOrd: TkcRzDBComboBox
        Left = 112
        Top = 120
        Width = 140
        Height = 20
        DataField = 'VIRTUAL_ORD'
        DataSource = dsMain
        Style = csDropDownList
        Ctl3D = False
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ItemHeight = 12
        ParentCtl3D = False
        TabOrder = 8
        EnterToTab = True
      end
      object bsSkinLabel17: TbsSkinLabel
        Left = 17
        Top = 89
        Width = 182
        Height = 20
        HintImageIndex = 0
        TabOrder = 13
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #44032#49345#51452#47928#54868' '#54616#45716' '#54840#44032#50948#52824
        AutoSize = False
      end
      object RzDBSpinEdit1: TRzDBSpinEdit
        Left = 205
        Top = 89
        Width = 47
        Height = 20
        DataSource = dsMain
        DataField = 'HYB_HOGA_NO'
        Ctl3D = True
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        TabOrder = 6
        AllowKeyEdit = True
        FlatButtonColor = 15790320
        Max = 5.000000000000000000
        Min = 2.000000000000000000
        Value = 1.000000000000000000
      end
      object RzDBSpinEdit2: TRzDBSpinEdit
        Left = 447
        Top = 89
        Width = 47
        Height = 20
        DataSource = dsMain
        DataField = 'HYB_TIME_CONDITION'
        Ctl3D = True
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        TabOrder = 7
        AllowKeyEdit = True
        FlatButtonColor = 15790320
        Max = 60.000000000000000000
        Min = 5.000000000000000000
        Value = 2.000000000000000000
      end
      object bsSkinLabel5: TbsSkinLabel
        Left = 258
        Top = 120
        Width = 89
        Height = 20
        HintImageIndex = 0
        TabOrder = 14
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = 'OV/'#46041#49884#54840#44032
        AutoSize = False
      end
      object cbOverngtSame: TkcRzDBComboBox
        Left = 353
        Top = 120
        Width = 140
        Height = 20
        DataField = 'OVERNGT_YN'
        DataSource = dsMain
        Style = csDropDownList
        Ctl3D = False
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ItemHeight = 12
        ParentCtl3D = False
        TabOrder = 9
        EnterToTab = True
      end
      object bsSkinLabel20: TbsSkinLabel
        Left = 17
        Top = 152
        Width = 89
        Height = 20
        HintImageIndex = 0
        TabOrder = 15
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #44396#51340#44396#44036#49444#51221
        AutoSize = False
      end
      object cbGujaTp: TkcRzDBComboBox
        Left = 112
        Top = 152
        Width = 381
        Height = 20
        DataField = 'GUJA_TP'
        DataSource = dsMain
        Style = csDropDownList
        Ctl3D = False
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ItemHeight = 12
        ParentCtl3D = False
        TabOrder = 16
        EnterToTab = True
      end
      object bsSkinLabel21: TbsSkinLabel
        Left = 16
        Top = 178
        Width = 157
        Height = 20
        HintImageIndex = 0
        TabOrder = 17
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = 'HTS'#51312#54924' '#46356#49828#54540#47112#51060' '#51068#49688
        AutoSize = False
      end
      object RzDBSpinEdit3: TRzDBSpinEdit
        Left = 179
        Top = 178
        Width = 47
        Height = 20
        DataSource = dsMain
        DataField = 'PL_DISP_DAY'
        Ctl3D = True
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        TabOrder = 18
        AllowKeyEdit = True
        FlatButtonColor = 15790320
        Max = 100.000000000000000000
        Value = 3.000000000000000000
      end
      object bsSkinLabel22: TbsSkinLabel
        Left = 232
        Top = 178
        Width = 81
        Height = 20
        HintImageIndex = 0
        TabOrder = 19
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #50741#49496#44032#44201' MIN'
        AutoSize = False
      end
      object bsSkinLabel23: TbsSkinLabel
        Left = 389
        Top = 178
        Width = 33
        Height = 20
        HintImageIndex = 0
        TabOrder = 20
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = 'MAX'
        AutoSize = False
      end
      object edOpPrcMin: TkcRzDBEdit
        Left = 317
        Top = 178
        Width = 66
        Height = 20
        DataSource = dsMain
        DataField = 'OP_PRC_MIN'
        Ctl3D = True
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ParentCtl3D = False
        TabOrder = 21
        EnterToTab = True
      end
      object edOpPrcMax: TkcRzDBEdit
        Left = 426
        Top = 178
        Width = 66
        Height = 20
        DataSource = dsMain
        DataField = 'OP_PRC_MAX'
        Ctl3D = True
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ParentCtl3D = False
        TabOrder = 22
        EnterToTab = True
      end
      object bsSkinLabel33: TbsSkinLabel
        Left = 16
        Top = 204
        Width = 157
        Height = 20
        HintImageIndex = 0
        TabOrder = 23
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #51077#44552#49884' '#44228#51340#51452' '#54364#49884
        AutoSize = False
      end
      object kcRzDBComboBox6: TkcRzDBComboBox
        Left = 179
        Top = 204
        Width = 47
        Height = 20
        DataField = 'IN_BANKNM'
        DataSource = dsMain
        Style = csDropDownList
        Ctl3D = False
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ItemHeight = 12
        ParentCtl3D = False
        TabOrder = 24
        Items.Strings = (
          'Y'
          'N')
        Values.Strings = (
          'Y'
          'N')
        EnterToTab = True
      end
      object bsSkinLabel34: TbsSkinLabel
        Left = 232
        Top = 205
        Width = 264
        Height = 21
        HintImageIndex = 0
        TabOrder = 25
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = -12
        DefaultFont.Name = #44404#47548#52404
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = False
        Transparent = True
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = False
        BorderStyle = bvNone
        Caption = #8251' '#51077#44552#49884' Y:'#44228#51340#51452' N:'#54924#50896#47749' '#44592#48376#47749#51004#47196' '#54364#49884
        AutoSize = False
      end
    end
    object RzGroupBox4: TRzGroupBox
      Left = 532
      Top = 6
      Width = 388
      Height = 115
      Caption = ' '#44396#51340#44288#47532' '
      Color = 16448250
      FrameController = MastDB.RzFrameController
      TabOrder = 3
      object bsSkinLabel7: TbsSkinLabel
        Left = 16
        Top = 22
        Width = 80
        Height = 20
        HintImageIndex = 0
        TabOrder = 0
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #44396#51340#45817#44552#50529
        AutoSize = False
      end
      object bsSkinLabel8: TbsSkinLabel
        Left = 16
        Top = 76
        Width = 80
        Height = 20
        HintImageIndex = 0
        TabOrder = 1
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #52572#49548#44552#50529
        AutoSize = False
      end
      object edGujaAmt1: TkcRzDBEdit
        Left = 102
        Top = 22
        Width = 150
        Height = 20
        DataSource = dsMain
        DataField = 'GUJA_AMT_1'
        Ctl3D = True
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ParentCtl3D = False
        TabOrder = 2
        EnterToTab = True
      end
      object edMinAmt1: TkcRzDBEdit
        Left = 102
        Top = 76
        Width = 150
        Height = 20
        DataSource = dsMain
        DataField = 'GUJA_MIN_AMT_1'
        Ctl3D = True
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ParentCtl3D = False
        TabOrder = 4
        EnterToTab = True
      end
      object bsSkinLabel9: TbsSkinLabel
        Left = 16
        Top = 49
        Width = 80
        Height = 20
        HintImageIndex = 0
        TabOrder = 5
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #52572#45824#44396#51340#49688
        AutoSize = False
      end
      object edMaxCnt1: TkcRzDBEdit
        Left = 102
        Top = 49
        Width = 150
        Height = 20
        DataSource = dsMain
        DataField = 'GUJA_MAX_CNT_1'
        Ctl3D = True
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ParentCtl3D = False
        TabOrder = 3
        EnterToTab = True
      end
    end
    object RzGroupBox5: TRzGroupBox
      Left = 532
      Top = 181
      Width = 388
      Height = 115
      Caption = ' '#44396#51340#44288#47532'('#54644#50808') '
      Color = 16448250
      FrameController = MastDB.RzFrameController
      TabOrder = 4
      Visible = False
      object bsSkinLabel12: TbsSkinLabel
        Left = 16
        Top = 26
        Width = 80
        Height = 20
        HintImageIndex = 0
        TabOrder = 0
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #44396#51340#45817#44552#50529
        AutoSize = False
      end
      object bsSkinLabel13: TbsSkinLabel
        Left = 16
        Top = 80
        Width = 80
        Height = 20
        HintImageIndex = 0
        TabOrder = 1
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #52572#49548#44552#50529
        AutoSize = False
      end
      object edGujaAmt2: TkcRzDBEdit
        Left = 102
        Top = 26
        Width = 150
        Height = 20
        DataSource = dsMain
        DataField = 'GUJA_AMT_2'
        Ctl3D = True
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ParentCtl3D = False
        TabOrder = 2
        EnterToTab = True
      end
      object edMinAmt2: TkcRzDBEdit
        Left = 102
        Top = 80
        Width = 150
        Height = 20
        DataSource = dsMain
        DataField = 'GUJA_MIN_AMT_2'
        Ctl3D = True
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ParentCtl3D = False
        TabOrder = 4
        EnterToTab = True
      end
      object bsSkinLabel14: TbsSkinLabel
        Left = 16
        Top = 53
        Width = 80
        Height = 20
        HintImageIndex = 0
        TabOrder = 5
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #52572#45824#44396#51340#49688
        AutoSize = False
      end
      object edMaxCnt2: TkcRzDBEdit
        Left = 102
        Top = 53
        Width = 150
        Height = 20
        DataSource = dsMain
        DataField = 'GUJA_MAX_CNT_2'
        Ctl3D = True
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ParentCtl3D = False
        TabOrder = 3
        EnterToTab = True
      end
    end
    object RzGroupBox6: TRzGroupBox
      Left = 532
      Top = 183
      Width = 388
      Height = 233
      Caption = ' '#52404#44208' / '#50696#50557#51452#47928' '#49444#51221' '
      Color = 16448250
      FrameController = MastDB.RzFrameController
      TabOrder = 5
      object bsSkinLabel24: TbsSkinLabel
        Left = 16
        Top = 32
        Width = 104
        Height = 20
        HintImageIndex = 0
        TabOrder = 0
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #44397#45236#51452#44036' '#52404#44208#50984
        AutoSize = False
      end
      object bsSkinLabel25: TbsSkinLabel
        Left = 16
        Top = 58
        Width = 104
        Height = 20
        HintImageIndex = 0
        TabOrder = 1
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #44397#45236#50556#44036' '#52404#44208#50984
        AutoSize = False
      end
      object bsSkinLabel26: TbsSkinLabel
        Left = 16
        Top = 84
        Width = 104
        Height = 20
        HintImageIndex = 0
        TabOrder = 2
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #54644#50808#49440#47932' '#52404#44208#50984
        AutoSize = False
      end
      object RzDBSpinEdit4: TRzDBSpinEdit
        Left = 124
        Top = 32
        Width = 60
        Height = 20
        DataSource = dsMain
        DataField = 'CNTR_F_RT'
        Ctl3D = True
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        TabOrder = 3
        AllowKeyEdit = True
        FlatButtonColor = 15790320
        Max = 300.000000000000000000
        Min = 10.000000000000000000
        Value = 4.000000000000000000
      end
      object RzDBSpinEdit5: TRzDBSpinEdit
        Left = 124
        Top = 58
        Width = 60
        Height = 20
        DataSource = dsMain
        DataField = 'CNTR_N_RT'
        Ctl3D = True
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        TabOrder = 4
        AllowKeyEdit = True
        FlatButtonColor = 15790320
        Max = 300.000000000000000000
        Min = 10.000000000000000000
        Value = 5.000000000000000000
      end
      object RzDBSpinEdit6: TRzDBSpinEdit
        Left = 124
        Top = 84
        Width = 60
        Height = 20
        DataSource = dsMain
        DataField = 'CNTR_GF_RT'
        Ctl3D = True
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        TabOrder = 5
        AllowKeyEdit = True
        FlatButtonColor = 15790320
        Max = 300.000000000000000000
        Min = 10.000000000000000000
        Value = 6.000000000000000000
      end
      object bsSkinLabel27: TbsSkinLabel
        Left = 211
        Top = 33
        Width = 104
        Height = 20
        HintImageIndex = 0
        TabOrder = 6
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #54788#51116#44032#52404#44208
        AutoSize = False
      end
      object bsSkinLabel28: TbsSkinLabel
        Left = 211
        Top = 84
        Width = 104
        Height = 20
        HintImageIndex = 0
        TabOrder = 7
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #51092#47049#52488#44592#54868#54840#44032
        AutoSize = False
      end
      object kcRzDBComboBox1: TkcRzDBComboBox
        Left = 318
        Top = 32
        Width = 60
        Height = 20
        DataField = 'NOWPRC_CNTR'
        DataSource = dsMain
        Style = csDropDownList
        Ctl3D = False
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ItemHeight = 12
        ParentCtl3D = False
        TabOrder = 8
        Items.Strings = (
          'Y'
          'N')
        Values.Strings = (
          'Y'
          'N')
        EnterToTab = True
      end
      object kcRzDBComboBox2: TkcRzDBComboBox
        Left = 318
        Top = 84
        Width = 60
        Height = 20
        DataField = 'REMN_INIT_HOGA'
        DataSource = dsMain
        Style = csDropDownList
        Ctl3D = False
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ItemHeight = 12
        ParentCtl3D = False
        TabOrder = 9
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
        EnterToTab = True
      end
      object bsSkinLabel30: TbsSkinLabel
        Left = 16
        Top = 148
        Width = 168
        Height = 20
        HintImageIndex = 0
        TabOrder = 10
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #50696#50557#51452#47928' '#49884#51109#44032' '#52376#47532
        AutoSize = False
      end
      object kcRzDBComboBox3: TkcRzDBComboBox
        Left = 186
        Top = 148
        Width = 60
        Height = 20
        DataField = 'MIT_MKT_YN'
        DataSource = dsMain
        Style = csDropDownList
        Ctl3D = False
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ItemHeight = 12
        ParentCtl3D = False
        TabOrder = 11
        Items.Strings = (
          'Y'
          'N')
        Values.Strings = (
          'Y'
          'N')
        EnterToTab = True
      end
      object bsSkinLabel31: TbsSkinLabel
        Left = 16
        Top = 116
        Width = 168
        Height = 20
        HintImageIndex = 0
        TabOrder = 12
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #44277#48177#51452#47928' '#52376#47532
        AutoSize = False
      end
      object kcRzDBComboBox4: TkcRzDBComboBox
        Left = 186
        Top = 116
        Width = 60
        Height = 20
        DataField = 'NULLHOGA_YN'
        DataSource = dsMain
        Style = csDropDownList
        Ctl3D = False
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ItemHeight = 12
        ParentCtl3D = False
        TabOrder = 13
        Items.Strings = (
          'Y'
          'N')
        Values.Strings = (
          'Y'
          'N')
        EnterToTab = True
      end
      object bsSkinLabel32: TbsSkinLabel
        Left = 16
        Top = 174
        Width = 168
        Height = 20
        HintImageIndex = 0
        TabOrder = 14
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = 'MIT / STOPLOSS '#52572#45824'1'#54001#52376#47532
        AutoSize = False
      end
      object kcRzDBComboBox5: TkcRzDBComboBox
        Left = 186
        Top = 174
        Width = 60
        Height = 20
        DataField = 'FIX_MITSL'
        DataSource = dsMain
        Style = csDropDownList
        Ctl3D = False
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ItemHeight = 12
        ParentCtl3D = False
        TabOrder = 15
        Items.Strings = (
          'Y'
          'N')
        Values.Strings = (
          'Y'
          'N')
        EnterToTab = True
      end
      object bsSkinLabel35: TbsSkinLabel
        Left = 16
        Top = 199
        Width = 168
        Height = 20
        HintImageIndex = 0
        TabOrder = 16
        SkinData = fmMain.bsSkinData
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        Transparent = False
        ShadowEffect = False
        ShadowColor = clBlack
        ShadowOffset = 0
        ShadowSize = 3
        ReflectionEffect = False
        ReflectionOffset = -5
        EllipsType = bsetNoneEllips
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Alignment = taCenter
        Caption = #49828#53457#47196#49828#48156#46041#49884' '#54788#51333#47785#52712#49548
        AutoSize = False
      end
      object kcRzDBComboBox7: TkcRzDBComboBox
        Left = 186
        Top = 199
        Width = 60
        Height = 20
        DataField = 'SL_CANCEL'
        DataSource = dsMain
        Style = csDropDownList
        Ctl3D = False
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft IME 2010'
        ItemHeight = 12
        ParentCtl3D = False
        TabOrder = 17
        Items.Strings = (
          'Y'
          'N')
        Values.Strings = (
          'Y'
          'N')
        EnterToTab = True
      end
    end
    object bsSkinLabel29: TbsSkinLabel
      Left = 658
      Top = 421
      Width = 264
      Height = 21
      HintImageIndex = 0
      TabOrder = 6
      SkinDataName = 'label'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -12
      DefaultFont.Name = #44404#47548#52404
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      Transparent = True
      ShadowEffect = False
      ShadowColor = clBlack
      ShadowOffset = 0
      ShadowSize = 3
      ReflectionEffect = False
      ReflectionOffset = -5
      EllipsType = bsetNoneEllips
      UseSkinSize = False
      UseSkinFontColor = False
      BorderStyle = bvNone
      Caption = #8251' '#52404#44208'/'#50696#50557#51452#47928#49444#51221#48320#44221#49884' '#47749#51068' '#51201#50857#46121#45768#45796'.'
      AutoSize = False
    end
  end
  object bsSkinLabel18: TbsSkinLabel [3]
    Left = 274
    Top = 326
    Width = 183
    Height = 20
    HintImageIndex = 0
    TabOrder = 3
    SkinData = fmMain.bsSkinData
    SkinDataName = 'label'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 13
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    Transparent = False
    ShadowEffect = False
    ShadowColor = clBlack
    ShadowOffset = 0
    ShadowSize = 3
    ReflectionEffect = False
    ReflectionOffset = -5
    EllipsType = bsetNoneEllips
    UseSkinSize = False
    UseSkinFontColor = True
    BorderStyle = bvFrame
    Alignment = taCenter
    Caption = #44032#49345#51452#47928#54868' '#54616#45716#49884#44036' ('#52488')'
    AutoSize = False
  end
  inherited imgBtn: TImageList
    Left = 120
    Top = 384
    Bitmap = {
      494C01010B009400980010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B531000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000006B0000006B0000006B0000006B0000006B0000006B0000006B
      0000006B0000006B0000006B0000006B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000063
      9400006394000063940000639400006394000063940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000639400314A5200B5310000314242000063940000639400000000000000
      00000000000000000000000000000000000094635A00A56B6B00A56B6B00A56B
      6B00A56B6B00006B0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00006B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000073AD0031CE
      EF0010CEFF0021CEFF0052DEFF0073E7FF0029A5D60000639400000000000000
      0000000000000000000000000000000000000000000000000000000000000073
      AD0031CEEF0010CEFF0073422900B53100007B73630029A5D600006394000000
      0000000000000000000000000000000000009C6B6300FFE7C600F7D6AD00F7CE
      9C00EFCE9400006B0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00006B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000073AD0073FFFF0039E7
      FF0010CEFF0018C6F70000008400000084000000840000008400000084000000
      84000000840000008400000000000000000000000000000000000073AD0073FF
      FF0039E7FF0010CEFF0029ADCE0084391800AD420000526363000084C6000063
      9400000000000000000000000000000000009C6B6300FFE7CE00F7D6B500F7D6
      AD00EFCE9C00006B0000FFFFFF007BBD7B00006B000018841800FFFFFF006BB5
      6B00006B00004AA54A00FFFFFF00006B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000073AD0073FFFF0039E7
      FF0010CEFF0018C6F700000084002152FF001042FF000029FF000021FF000010
      F7000008E70000008400000000000000000000000000000000000073AD0073FF
      FF0039E7FF0010CEFF0021CEFF0063847B0094421800B5310000394242000063
      940000000000000000000000000000000000A56B6300FFEFD600F7DEC600F7D6
      B500F7D6AD00006B0000FFFFFF00FFFFFF00B5DEB500006B0000087B0800006B
      00006BB56B00FFFFFF00FFFFFF00006B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000073AD0073FFFF0039E7
      FF0010CEFF0018C6F70000008400295AFF00184AFF000831FF000021FF000018
      FF000010EF0000008400000000000000000000000000000000000073AD0073FF
      FF0039E7FF0010CEFF0021CEFF0052DEF700844A3100BD633100A52900002942
      4A0000000000000000000000000000000000A5736300FFF7E700F7E7CE00F7DE
      BD00F7D6B500006B0000FFFFFF00FFFFFF00FFFFFF004AA54A00006B00000873
      0800FFFFFF00FFFFFF00FFFFFF00006B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000073AD009CFFFF00A5F7
      FF00B5F7FF00DEF7FF0000008400000084000000840000008400000084000000
      84000000840000008400000000000000000000000000000000000073AD009CFF
      FF00A5F7FF00B5F7FF00DEFFFF00E7FFFF00C6C6BD0094421800E7B57B00A529
      000000000000000000000000000000000000AD7B6B00FFFFEF00F7E7D600F7E7
      CE00F7DEBD00006B0000FFFFFF00FFFFFF005AAD5A00006B00004AA54A00006B
      0000218C2100EFF7EF00FFFFFF00006B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000073AD00A5EFF70018AD
      D6000094C6000084BD00108CBD001894BD00107BAD007BC6DE00006394000000
      00000000000000000000000000000000000000000000000000000073AD00A5EF
      F70018ADD6000094C600008CBD00B5420000B5420000AD420000CE8C5A00FFE7
      A500A5290000000000000000000000000000B57B6B00FFFFFF00FFEFE700F7E7
      D600F7E7CE00006B0000FFFFFF00429C4200006B000063AD6300FFFFFF00BDDE
      BD00006B0000218C2100FFFFFF00006B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000073AD0031B5D60039E7
      FF0010CEFF0021CEFF0052DEFF0073E7FF0031B5DE00006BA500006B9C000000
      00000000000000000000000000000000000000000000000000000073AD0031B5
      D60039E7FF0010CEFF0021CEFF00B5420000BD734200FFD69400EFB57B00AD29
      0000A5290000A52900000000000000000000BD846B00FFFFFF00FFF7EF00FFEF
      E700FFEFD600006B0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00006B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000073AD0073FFFF0039E7
      FF0010CEFF0021CEFF0052DEFF0073E7FF0031B5DE000084C600006394000000
      00000000000000000000000000000000000000000000000000000073AD0073FF
      FF0039E7FF0010CEFF0021CEFF0052DEFF00B5420000BD6B3100F7B56B00DE8C
      4200A5290000000000000000000000000000BD847300FFFFFF00FFFFFF00FFF7
      EF00FFEFE700006B0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00006B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000073AD0073FFFF0039E7
      FF0010CEFF0021CEFF0052DEFF0073E7FF0031B5DE000084C600006394000000
      00000000000000000000000000000000000000000000000000000073AD0073FF
      FF0039E7FF0010CEFF0021CEFF0052DEFF0073E7FF00B5420000B5521000DE73
      1800C65A0800AD2900000000000000000000C68C7300FFFFFF00FFFFFF00FFFF
      FF00FFF7EF00006B0000006B0000006B0000006B0000006B0000006B0000006B
      0000006B0000006B0000006B0000006B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000073AD0073FFFF0039E7
      FF0010CEFF0021CEFF0052DEFF0073E7FF0031B5DE000084C600006394000000
      00000000000000000000000000000000000000000000000000000073AD0073FF
      FF0039E7FF0010CEFF0021CEFF0052DEFF0073E7FF0031B5DE00B5420000B542
      0000B5420000A5290000A529000000000000CE947300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFEFDE00FFE7D600FFEFD600E7D6BD00B5AD9C00A56B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000073AD007BFFFF006BF7
      FF0052F7FF005AFFFF007BFFFF008CFFFF004ACEF700008CC600006394000000
      00000000000000000000000000000000000000000000000000000073AD007BFF
      FF006BF7FF0052F7FF005AFFFF007BFFFF008CFFFF004ACEF700008CC6000063
      940000000000000000000000000000000000CE947300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFEFE700A56B6B00A56B6B00A56B6B00A56B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000073AD00FFFFFF00F7FF
      FF00C6FFFF00A5FFFF009CFFFF009CFFFF0094FFFF0052F7FF00006394000000
      00000000000000000000000000000000000000000000000000000073AD00FFFF
      FF00F7FFFF00C6FFFF00A5FFFF009CFFFF009CFFFF0094FFFF0052F7FF000063
      940000000000000000000000000000000000D6947B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7EFE700A56B6B00E7A55A00EF9C3900BD73
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007BAD00EFFF
      FF00DEFFFF00B5FFFF009CFFFF008CFFFF0084FFFF00086B9C00000000000000
      000000000000000000000000000000000000000000000000000000000000007B
      AD00EFFFFF00DEFFFF00B5FFFF009CFFFF008CFFFF0084FFFF00086B9C000000
      000000000000000000000000000000000000D69C7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A56B6B00E7A55A00C6845A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000073
      AD000073AD000073AD000073AD000073AD000073AD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000073AD000073AD000073AD000073AD000073AD000073AD00000000000000
      000000000000000000000000000000000000D6946B00D6946B00D6946B00D694
      6B00D6946B00D6946B00D6946B00D6946B00A56B6B00BD7B6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000005A0000005A0000005A
      0000005A00000000000000000000000000000000000000000000000000000000
      0000000000000000000084180000841800008418000084180000841800008418
      000084180000841800000000000000000000000000000000000000086B000008
      6B0000085A000008520000084A0000084A0000084A0000084A0000084A000008
      4A0000084A000008420000000000000000000000000000000000003994000039
      94000031840000317B0000297B0000297B0000297B0000297B0000297B000029
      7B0000297B0000296B0000000000000000000000000000000000006394000063
      94000063940000639400006394000063940000000000005A0000089410000094
      0800005A00000000000000000000000000000000000000000000006394000063
      9400006394000063940084180000FFFFFF00FFFFFF00FFFFFF00738CFF00A5B5
      FF00FFFFFF0084180000000000000000000000000000001094000010BD000010
      B5000010AD000010A5000010A50000109400001094000010A500001094000010
      94000010A50000087B00000842000000000000000000004AC600005AE7000052
      D6000052D600004AC600004AC600004AC600004AC600004AC600004AC600004A
      C600004AC6000042A50000296B0000000000000000000073AD0031CEEF0010CE
      FF0021CEFF0052DEFF0073E7FF0029A5D60000639400005A0000089C1800089C
      1000005A0000000000000000000000000000000000000073AD0031CEEF0010CE
      FF0021CEFF0052DEFF0084180000FFFFFF00FFFFFF006384FF000018FF00395A
      FF00FFFFFF00841800000000000000000000000000000010BD000018E7000018
      D6000018CE000018C6000010B5000010B5000010AD000010AD000010B5000010
      AD000010B5000010A50000084A0000000000000000000052DE00006BFF000063
      FF00005AEF00005AEF00005AE7000052D6000052D6000052D6000052D6000052
      DE000052DE00004AC60000317B00000000000073AD0073FFFF0039E7FF0010CE
      FF0021CEFF0052D6F700005A0000005A0000005A0000005A000010A5210008A5
      1800005A0000005A0000005A0000005A00000073AD0073FFFF0039E7FF0010CE
      FF0021CEFF0052DEFF0084180000CED6FF00294AFF000018FF00294AFF000021
      FF00CED6FF00841800000000000000000000000000000018C6000018F7000018
      E7000018D6000018C6000018C6000010B5000010B5000010AD000010A5000010
      AD000010AD000010A50000084A000000000000000000005AEF00006BFF00006B
      FF000063FF00005AEF000063E700C6DEFF001873DE000052D600004ACE00004A
      CE000052DE00004AC60000317B00000000000073AD0073FFFF0039E7FF0010CE
      FF0021CEFF0052D6F700005A000021C6420021C6420018B5310018B5310010AD
      210010A5210008A51800089C1000005A00000073AD0073FFFF0039E7FF0010CE
      FF0021CEFF0052DEFF0084180000395AFF000829FF00ADBDFF00EFEFFF000829
      FF00395AFF00841800000000000000000000000000000018CE000021FF000018
      F7000018E7000018D6000018CE000018C6000010B5000010B5000010AD000010
      A5000010BD000010940000084A000000000000000000005AF7001073FF00086B
      FF00006BFF00006BFF00C6DEFF00FFFFFF0073B5F7000052D6000052D600004A
      CE000052D600004AC60000297B00000000000073AD0073FFFF0039E7FF0010CE
      FF0021CEFF0052DEF700005A000029D6520021CE4A0021C6420018BD390018B5
      310010B5290010AD210010A52100005A00000073AD0073FFFF0039E7FF0010CE
      FF0021CEFF0052DEFF0084180000DEE7FF00CED6FF00FFFFFF00FFFFFF008494
      FF000018FF004A1839000000000000000000000000000018CE001039FF000029
      FF000018F7000018E7000018D6000018CE000018CE000010BD000010B5000010
      AD000010AD000010A50000084A000000000000000000005AF7002184FF00107B
      FF001073FF00C6E7FF00FFFFFF00FFFFFF00D6EFFF00005AE7000052D6000052
      D6000052D600004AC60000297B00000000000073AD009CFFFF00A5F7FF00B5F7
      FF00DEFFFF00E7F7FF00005A0000005A0000005A0000005A000021CE4A0021C6
      4200005A0000005A0000005A0000005A00000073AD009CFFFF00A5F7FF00B5F7
      FF00DEFFFF00E7FFFF0084180000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00395AFF000018FF000000000000000000000000000018CE00315AFF000831
      FF000021FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000010
      BD000010B5000010A50000084A000000000000000000005AF700429CFF001884
      FF00DEEFFF00FFFFFF00C6E7FF00429CFF00FFFFFF002984F700005AEF000052
      DE000052DE00004AC60000317B00000000000073AD00A5EFF70018ADD6000094
      C600008CBD00108CBD001894BD00107BAD007BC6DE00005A000029D6520029CE
      5200005A00000000000000000000000000000073AD00A5EFF70018ADD6000094
      C600008CBD00108CBD0084180000841800008418000084180000841800008418
      0000731800001018BD000018FF0000000000000000000018CE004A6BFF001839
      FF000021FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000018
      C6000018C60000109C0000085A000000000000000000005AF7005AA5FF00298C
      FF005AA5FF0094C6FF000873FF00006BFF009CCEFF008CC6FF00005AEF00005A
      E700005AE700004ACE0000318400000000000073AD0031B5D60039E7FF0010CE
      FF0021CEFF0052DEFF0073E7FF0031B5DE00006BA500005A000031DE630031DE
      5A00005A00000000000000000000000000000073AD0031B5D60039E7FF0010CE
      FF0021CEFF0052DEFF0073E7FF0031B5DE00006BA500006B9C00000000000000
      000000000000000000000018FF000018FF00000000000018CE005A7BFF002142
      FF000829FF000021FF000018F7000018EF000018EF000018E7000018D6000018
      CE000018CE000010B50000086B000000000000000000005AF7006BADFF00318C
      FF00187BFF000873FF00006BFF00006BFF00187BFF00D6EFFF00006BFF000063
      FF00005AF7000052D60000399400000000000073AD0073FFFF0039E7FF0010CE
      FF0021CEFF0052DEFF0073E7FF0031B5DE000084C600005A0000005A0000005A
      0000005A00000000000000000000000000000073AD0073FFFF0039E7FF0010CE
      FF0021CEFF0052DEFF0073E7FF0031B5DE000084C60000639400000000000000
      00000000000000000000000000000018FF00000000000018CE006384FF002952
      FF001039FF000831FF000021FF000018FF000018F7000018F7000018EF000018
      DE000018DE000010BD0000087B000000000000000000005AF70073B5FF003994
      FF002184FF001884FF00107BFF000873FF00086BFF004A9CFF005AA5FF00006B
      FF00006BFF00005AE7000042A500000000000073AD0073FFFF0039E7FF0010CE
      FF0021CEFF0052DEFF0073E7FF0031B5DE000084C60000639400000000000000
      0000000000000000000000000000000000000073AD0073FFFF0039E7FF0010CE
      FF0021CEFF0052DEFF0073E7FF0031B5DE000084C60000639400000000000000
      000000000000000000000000000000000000000000000018CE007394FF004263
      FF001839FF001039FF000829FF000029FF000021FF000021FF000018EF000018
      EF000018E7000018C600001084000000000000000000005AF70084BDFF0052A5
      FF00298CFF002184FF00187BFF00107BFF001073FF000873FF006BB5FF00006B
      FF00006BFF00005AEF000042AD00000000000073AD0073FFFF0039E7FF0010CE
      FF0021CEFF0052DEFF0073E7FF0031B5DE000084C60000639400000000000000
      0000000000000000000000000000000000000073AD0073FFFF0039E7FF0010CE
      FF0021CEFF0052DEFF0073E7FF0031B5DE000084C60000639400000000000000
      000000000000000000000000000000000000000000000018CE007B9CFF00738C
      FF005273FF004263FF00315AFF00294AFF001039FF000021FF000018FF000018
      EF000018EF000018DE00001094000000000000000000005AF7008CC6FF007BBD
      FF0063ADFF0052A5FF004A9CFF00318CFF002184FF001073FF00086BFF00006B
      FF00086BFF00006BFF00004AC600000000000073AD007BFFFF006BF7FF0052F7
      FF005AFFFF007BFFFF008CFFFF004ACEF700008CC60000639400000000000000
      0000000000000000000000000000000000000073AD007BFFFF006BF7FF0052F7
      FF005AFFFF007BFFFF008CFFFF004ACEF700008CC60000639400000000000000
      000000000000000000000000000000000000000000000018CE005A73FF007B9C
      FF00849CFF007394FF006384FF004A6BFF00294AFF000831FF000021FF000018
      FF000018EF000018E7000010A5000000000000000000005AF70063ADFF008CC6
      FF0094C6FF0084BDFF0073B5FF005AA5FF003194FF001884FF000873FF000873
      FF00086BFF00006BFF00004ACE00000000000073AD00FFFFFF00F7FFFF00C6FF
      FF00A5FFFF009CFFFF009CFFFF0094FFFF0052F7FF0000639400000000000000
      0000000000000000000000000000000000000073AD00FFFFFF00F7FFFF00C6FF
      FF00A5FFFF009CFFFF009CFFFF0094FFFF0052F7FF0000639400000000000000
      00000000000000000000000000000000000000000000000000000018EF000829
      FF000831FF000829FF000029FF000021FF000018EF000018DE000018D6000018
      CE000018D6000010B50000000000000000000000000000000000006BFF00187B
      FF00187BFF001884FF00107BFF000873FF00006BFF00006BFF00005AF700005A
      F700005AF700005AE700000000000000000000000000007BAD00EFFFFF00DEFF
      FF00B5FFFF009CFFFF008CFFFF0084FFFF00086B9C0000000000000000000000
      00000000000000000000000000000000000000000000007BAD00F7FFFF00DEFF
      FF00B5FFFF009CFFFF008CFFFF0084FFFF00086B9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000073AD000073
      AD000073AD000073AD000073AD000073AD000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000073AD000073
      AD000073AD000073AD000073AD000073AD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000052637B0052636B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000003994000039
      94000031840000317B0000297B0000297B0000297B0000297B0000297B000029
      7B0000297B0000296B0000000000000000000000000000000000006394000063
      9400006394000063940000639400006394000000000000000000000000000000
      0000000000005A637B00086BD6004294D600000000000000000000086B000008
      6B0000085A000008520000084A0000084A0000084A0000084A0000084A000008
      4A0000084A00000842000000000000000000000000000000000000086B000008
      6B0000085A000008520000084A0000084A0000084A0000084A0000084A000008
      4A0000084A0000084200000000000000000000000000004AC600005AE7000052
      DE000052D600004AC600004AC600004AC600004AC600004AC600004AC600004A
      C600004AC6000042A50000296B0000000000000000000073AD0031CEEF0010CE
      FF0021CEFF0052DEFF0073E7FF0029A5D6000063940000000000000000000000
      00005A6B7B00106BD60031A5FF00399CF70000000000001094000010BD000010
      B5000010AD000010A5000010A50000109400001094000010A500001094000010
      94000010A50000087B00000842000000000000000000001094000010BD000010
      B5000010AD000010A5000010A50000109400001094000010A500001094000010
      94000010A50000087B000008420000000000000000000052DE00006BFF000063
      FF00005AF700005AEF00005AE7000052D6000052DE000052D6000052DE000052
      DE000052DE00004ACE0000297B00000000000073AD0073FFFF0039E7FF0010CE
      FF0021CEFF0052DEFF0073DEF70031ADDE000084BD000063940000000000736B
      7B001063C600319CFF00399CF70000000000000000000010BD000018E7000018
      D6000018CE000018C6000010B5000010B5000010AD000010AD000010B5000010
      AD000010B5000010A50000084A0000000000000000000010BD000018E7000018
      D6000018CE000018C6000010B5000010B5000010AD000010AD000010B5000010
      AD000010B5000010A50000084A000000000000000000005AF700006BFF00006B
      FF000063F700005AEF00005AE700005AE7000052DE000052D6000052D6000052
      CE000052DE00004AC60000317B00000000000073AD0073FFFF0039E7FF0010CE
      FF0021CEFF005AC6E7009C7B7B00B58C8400B59C8C009C6B630073525200427B
      AD0031A5FF00319CFF000000000000000000000000000018C6000018F7000018
      E7000018D6000018C6000018C6000010B5000010B5000010AD000010A5000010
      AD000010AD000010A50000084A0000000000000000000018C6000018F7000018
      E7000018D6000018C6003152D600EFEFFF008C9CE7000018AD000010A5000010
      AD000010AD000010A50000084A000000000000000000005AF7000873FF00086B
      FF00006BFF00FFFFFF00C6E7FF000063EF00005AE7008CBDEF00FFFFFF000052
      CE000052DE00004AC60000297B00000000000073AD0073FFFF0039E7FF0010CE
      FF0029B5DE009C7B7B00E7D6C600FFFFCE00FFFFDE00F7EFCE00C6A58C009C6B
      6300319CFF00000000000000000000000000000000000018CE000021FF000018
      F7000018E7000018D6000018C600FFFFFF00F7F7FF000010B5000010AD000010
      A5000010BD000010940000084A0000000000000000000018CE000021FF000018
      F7009CADF7000021D6000018CE009CADEF00FFFFFF008C9CE7000010AD000010
      AD000010AD000010A50000084A000000000000000000005AF7002184FF00107B
      FF00086BFF00C6E7FF00FFFFFF00C6E7FF008CBDEF00FFFFFF00C6E7FF000052
      D6000052D600004AC60000297B00000000000073AD009CFFFF00A5F7FF00B5F7
      FF00A58C8400E7D6CE00FFFFEF00FFFFCE00FFFFCE00FFFFC600FFEFAD00BD8C
      730000000000000000000000000000000000000000000018CE001039FF000029
      FF000018F7000018E7000018DE00FFFFFF00FFFFFF000010BD000010B5000010
      AD000010AD000010A50000084A0000000000000000000018CE001039FF000029
      FF00FFFFFF00738CF7000018D6003152DE00FFFFFF00ADBDEF000010B5000010
      AD000010B5000010940000084A000000000000000000005AF700429CFF001884
      FF000873FF000873FF00C6E7FF00FFFFFF00FFFFFF00C6E7FF000063EF000052
      DE00005AE700004AC60000317B00000000000073AD00A5EFF70018ADD6000094
      C600847B7300FFFFD600FFFFCE00FFFFCE00FFFFD600FFF7BD00F7C68400EFC6
      94009C6B6B00000000000000000000000000000000000018CE00315AFF000831
      FF000021FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000010
      BD000010B5000010A50000084A0000000000000000000018CE00315AFF000831
      FF00FFFFFF00FFFFFF00738CF700EFEFFF00FFFFFF008C9CEF000018C6000010
      B5000010B5000010A50000084A000000000000000000005AF7005AA5FF00298C
      FF000873FF000873FF008CC6FF00FFFFFF00FFFFFF00C6E7FF000063F700005A
      EF00005AE7000052CE0000318400000000000073AD0031B5D60039E7FF0010CE
      FF008C848400FFFFDE00FFFFCE00FFFFCE00FFFFD600F7CE9400EFAD6B00F7D6
      A5009C6B6B00000000000000000000000000000000000018CE004A6BFF001839
      FF000021FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000018
      C6000018C6000010A5000008520000000000000000000018CE004A6BFF001839
      FF004A6BFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFFF001839D6000018
      C6000010BD000010AD00000852000000000000000000005AF7006BADFF00318C
      FF00107BFF0094C6FF00FFFFFF00C6E7FF00C6E7FF00FFFFFF00C6E7FF000063
      F700005AEF000052D60000399400000000000073AD0073FFFF0039E7FF0010CE
      FF007B7B7B00F7F7CE00FFFFCE00FFFFC600F7DE9C00EFBD8400FFE7A500DEBD
      94009C6B6B00000000000000000000000000000000000018CE005A7BFF002142
      FF000829FF000021FF000018F700FFFFFF00FFFFFF000018E7000018DE000018
      CE000018CE000010B50000086B0000000000000000000018CE005A7BFF002142
      FF000829FF00294AFF006384FF004263F700C6CEFF00FFFFFF00EFEFFF001839
      D6000018CE000010B50000086B000000000000000000005AF70073B5FF003994
      FF002184FF00EFF7FF00CEE7FF00107BFF000873FF00CEE7FF00FFFFFF000063
      FF00006BFF00005AE7000042A500000000000073AD0073FFFF0039E7FF0010CE
      FF004294AD00C6AD8C00FFF7B500F7C68400F7BD7300FFF7D600F7F7EF009C6B
      6B0000000000000000000000000000000000000000000018CE006384FF002952
      FF001039FF000831FF000021FF00FFFFFF00FFFFFF000018EF000018E7000018
      E7000018DE000010BD0000087B0000000000000000000018CE006384FF002952
      FF001039FF000831FF000021FF000018FF000029FF00EFEFFF00FFFFFF00EFEF
      FF000018DE000010BD0000087B000000000000000000005AF70084BDFF0052A5
      FF00298CFF002184FF00187BFF00107BFF00107BFF000873FF000063FF00006B
      FF00006BFF00005AEF000042AD00000000000073AD0073FFFF0039E7FF0010CE
      FF0021CEFF00738C9C00BD947B00EFC69400F7D6A500CEB5A5009C6B6B009C6B
      6B0000000000000000000000000000000000000000000018CE007394FF004263
      FF001839FF001039FF000829FF000029FF000021FF000021FF000018F7000018
      EF000018E7000018CE000010840000000000000000000018CE007394FF004263
      FF001839FF001039FF000829FF000029FF000021FF001842FF00EFEFFF00C6CE
      FF000018E7000018CE00001084000000000000000000005AF7008CC6FF007BBD
      FF0063ADFF0052A5FF00429CFF003194FF002184FF00107BFF000873FF00006B
      FF00086BFF000063FF00004AC600000000000073AD007BFFFF006BF7FF0052F7
      FF005AFFFF007BFFFF008CB5B500737B84006B6B6B006B525200000000000000
      000000000000000000000000000000000000000000000018CE007B9CFF00738C
      FF005273FF004263FF00315AFF00294AFF001039FF000021FF000018FF000018
      EF000018F7000018DE000010A50000000000000000000018CE007B9CFF00738C
      FF005273FF004263FF00315AFF00214AFF001839FF000021FF000021FF000018
      F7000018F7000018DE000010A5000000000000000000005AF70063ADFF008CC6
      FF008CC6FF0084BDFF0073B5FF005AA5FF003194FF001884FF000873FF000873
      FF000873FF000063FF000052D600000000000073AD00FFFFFF00F7FFFF00C6FF
      FF00A5FFFF009CFFFF009CFFFF0094FFFF0052F7FF0000639400000000000000
      000000000000000000000000000000000000000000000018CE005A73FF007B9C
      FF00849CFF007394FF006384FF004A6BFF00294AFF000831FF000021FF000018
      FF000018FF000018E7000010A50000000000000000000018CE005A73FF007B9C
      FF00849CFF007394FF006384FF004A6BFF00294AFF000831FF000018FF000018
      FF000018FF000018DE000010A500000000000000000000000000006BFF00187B
      FF001884FF00187BFF00107BFF000873FF000063FF000063FF000063FF00005A
      F700005AF7000052DE00000000000000000000000000007BAD00EFFFFF00DEFF
      FF00B5FFFF009CFFFF0094FFFF007BFFFF00086B9C0000000000000000000000
      00000000000000000000000000000000000000000000000000000018EF000829
      FF000831FF000829FF000029FF000021FF000018EF000018DE000018D6000018
      CE000018D6000010B500000000000000000000000000000000000018EF000829
      FF000831FF000829FF000029FF000021FF000018EF000018DE000018D6000018
      CE000018CE000010BD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000073AD000073
      AD000073AD000073AD000073AD000073AD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFFFBFFF8000000E07FF03F00000000
      C03FE01F000000008003C00F000000008003C00F000000008003C00F00000000
      8003C00F00000000801FC00700000000801FC00300000000801FC00700000000
      801FC00300000000801FC001000F0000801FC00F000F0000801FC00F000F0000
      C03FE01F001F0000E07FF03F003F0000FFFFFFFFFF87FC03C003C003C087C003
      8001800180078003800180010000000380018001000000038001800100000003
      80018001000000038001800100070001800180010007003C800180010007003E
      80018001003F003F80018001003F003F80018001003F003F80018001003F003F
      C003C003807F807FFFFFFFFFC0FFC0FFFFFFFFFCFFFFFFFFC003C0F8C003C003
      8001807080018001800100218001800180010003800180018001000780018001
      8001000F80018001800100078001800180010007800180018001000780018001
      8001000F800180018001000F800180018001003F800180018001003F80018001
      C003807FC003C003FFFFC0FFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited dbMain: TUniQuery
    SQL.Strings = (
      'SELECT            '
      '           CORP_SEQ          '
      '          ,CORP_NM           '
      '          ,CORP_TEL          '
      '          ,CORP_BIGO         '
      '          ,BANK_NM           '
      '          ,BANK_ACNT_NO      '
      '          ,BANK_ACNT_NM      '
      '          ,DUP_YN            '
      '          ,CNTR_RT           '
      '          ,GUJA_AMT_1        '
      '          ,GUJA_MAX_CNT_1    '
      '          ,GUJA_MIN_AMT_1    '
      '          ,GUJA_AMT_2        '
      '          ,GUJA_MAX_CNT_2    '
      '          ,GUJA_MIN_AMT_2    '
      '          ,HIS_KEEP_DAY      '
      '          ,NOTICE_KEEP_DAY   '
      '          ,CURR_TRADE_DT     '
      '          ,MNG_ACPT_USE_YN   '
      '          ,HYB_HOGA_NO       '
      '          ,HYB_TIME_CONDITION'
      '          ,VIRTUAL_ORD       '
      '          ,OVERNGT_YN        '
      '          ,GUJA_TP           '
      '          ,PL_DISP_DAY       '
      '          ,OP_PRC_MIN        '
      '          ,OP_PRC_MAX        '
      '          ,CNTR_F_RT         '
      '          ,CNTR_N_RT         '
      '          ,CNTR_GF_RT        '
      '          ,NOWPRC_CNTR       '
      '          ,REMN_INIT_HOGA    '
      '          ,MIT_MKT_YN        '
      '          ,NULLHOGA_YN        '
      '          ,FIX_MITSL         '
      '          ,IN_BANKNM         '
      '          ,SL_CANCEL '
      '          ,PARTNER_DISP_DAY'
      '          FROM CORP_MST')
    AfterOpen = dbMainAfterOpen
    BeforePost = dbMainBeforePost
    AfterPost = dbMainAfterPost
    Left = 32
    Top = 400
    object dbMainCORP_SEQ: TIntegerField
      FieldName = 'CORP_SEQ'
      ReadOnly = True
      Required = True
    end
    object dbMainCORP_NM: TStringField
      FieldName = 'CORP_NM'
    end
    object dbMainCORP_TEL: TStringField
      FieldName = 'CORP_TEL'
      Size = 40
    end
    object dbMainCORP_BIGO: TStringField
      FieldName = 'CORP_BIGO'
      Size = 200
    end
    object dbMainBANK_NM: TStringField
      FieldName = 'BANK_NM'
    end
    object dbMainBANK_ACNT_NO: TStringField
      FieldName = 'BANK_ACNT_NO'
    end
    object dbMainBANK_ACNT_NM: TStringField
      FieldName = 'BANK_ACNT_NM'
    end
    object dbMainDUP_YN: TStringField
      FieldName = 'DUP_YN'
      FixedChar = True
      Size = 1
    end
    object dbMainCNTR_RT: TFloatField
      FieldName = 'CNTR_RT'
    end
    object dbMainGUJA_AMT_1: TFloatField
      FieldName = 'GUJA_AMT_1'
    end
    object dbMainGUJA_MAX_CNT_1: TIntegerField
      FieldName = 'GUJA_MAX_CNT_1'
    end
    object dbMainGUJA_MIN_AMT_1: TFloatField
      FieldName = 'GUJA_MIN_AMT_1'
    end
    object dbMainGUJA_AMT_2: TFloatField
      FieldName = 'GUJA_AMT_2'
    end
    object dbMainGUJA_MAX_CNT_2: TIntegerField
      FieldName = 'GUJA_MAX_CNT_2'
    end
    object dbMainGUJA_MIN_AMT_2: TFloatField
      FieldName = 'GUJA_MIN_AMT_2'
    end
    object dbMainHIS_KEEP_DAY: TIntegerField
      FieldName = 'HIS_KEEP_DAY'
    end
    object dbMainNOTICE_KEEP_DAY: TIntegerField
      FieldName = 'NOTICE_KEEP_DAY'
    end
    object dbMainCURR_TRADE_DT: TStringField
      FieldName = 'CURR_TRADE_DT'
      FixedChar = True
      Size = 8
    end
    object dbMainMNG_ACPT_USE_YN: TStringField
      FieldName = 'MNG_ACPT_USE_YN'
      FixedChar = True
      Size = 1
    end
    object dbMainHYB_HOGA_NO: TIntegerField
      FieldName = 'HYB_HOGA_NO'
    end
    object dbMainHYB_TIME_CONDITION: TIntegerField
      FieldName = 'HYB_TIME_CONDITION'
    end
    object dbMainVIRTUAL_ORD: TIntegerField
      FieldName = 'VIRTUAL_ORD'
    end
    object dbMainOVERNGT_YN: TStringField
      FieldName = 'OVERNGT_YN'
      FixedChar = True
      Size = 1
    end
    object dbMainGUJA_TP: TStringField
      FieldName = 'GUJA_TP'
      FixedChar = True
      Size = 1
    end
    object dbMainPL_DISP_DAY: TIntegerField
      FieldName = 'PL_DISP_DAY'
    end
    object dbMainOP_PRC_MIN: TFloatField
      FieldName = 'OP_PRC_MIN'
    end
    object dbMainOP_PRC_MAX: TFloatField
      FieldName = 'OP_PRC_MAX'
    end
    object dbMainCNTR_F_RT: TIntegerField
      FieldName = 'CNTR_F_RT'
    end
    object dbMainCNTR_N_RT: TIntegerField
      FieldName = 'CNTR_N_RT'
    end
    object dbMainCNTR_GF_RT: TIntegerField
      FieldName = 'CNTR_GF_RT'
    end
    object dbMainNOWPRC_CNTR: TStringField
      FieldName = 'NOWPRC_CNTR'
      FixedChar = True
      Size = 1
    end
    object dbMainREMN_INIT_HOGA: TIntegerField
      FieldName = 'REMN_INIT_HOGA'
    end
    object dbMainMIT_MKT_YN: TStringField
      FieldName = 'MIT_MKT_YN'
      FixedChar = True
      Size = 1
    end
    object dbMainNULLHOGA_YN: TStringField
      FieldName = 'NULLHOGA_YN'
      FixedChar = True
      Size = 1
    end
    object dbMainFIX_MITSL: TStringField
      FieldName = 'FIX_MITSL'
      FixedChar = True
      Size = 1
    end
    object dbMainIN_BANKNM: TStringField
      FieldName = 'IN_BANKNM'
      FixedChar = True
      Size = 1
    end
    object dbMainSL_CANCEL: TStringField
      FieldName = 'SL_CANCEL'
      FixedChar = True
      Size = 1
    end
    object dbMainPARTNER_DISP_DAY: TIntegerField
      FieldName = 'PARTNER_DISP_DAY'
    end
  end
  inherited dsMain: TDataSource
    Left = 72
    Top = 400
  end
  inherited dbPart: TUniQuery
    Left = 185
    Top = 384
  end
end
