inherited fmPLList: TfmPLList
  Tag = 3004
  Caption = #54924#50896#48324#49552#51061#51312#54924
  ClientWidth = 1152
  KeyPreview = False
  OnShow = FormShow
  ExplicitWidth = 1168
  PixelsPerInch = 96
  TextHeight = 12
  inherited pnTop: TRzPanel
    Width = 1152
    ExplicitWidth = 1152
    inherited btnFilter: TbsSkinSpeedButton
      Left = 599
      Top = 4
      Height = 23
      Anchors = [akLeft]
      ExplicitLeft = 599
      ExplicitTop = 4
      ExplicitHeight = 23
    end
    inherited btnInsert: TbsSkinSpeedButton
      Left = 945
      Top = 1
      Visible = False
      ExplicitLeft = 945
      ExplicitTop = 1
    end
    inherited btnEdit: TbsSkinSpeedButton
      Left = 945
      Top = 0
      Visible = False
      ExplicitLeft = 945
      ExplicitTop = 0
    end
    inherited btnDelete: TbsSkinSpeedButton
      Left = 945
      Top = 1
      Visible = False
      ExplicitLeft = 945
      ExplicitTop = 1
    end
    inherited btnPost: TbsSkinSpeedButton
      Left = 945
      Top = 0
      Visible = False
      ExplicitLeft = 945
      ExplicitTop = 0
    end
    inherited btnClose: TbsSkinSpeedButton
      Left = 1067
      ExplicitLeft = 1007
    end
    inherited bsRibbonDivider4: TbsRibbonDivider
      Left = 586
      Anchors = [akLeft]
      ExplicitLeft = 586
    end
    inherited btnExcel: TbsSkinSpeedButton
      Left = 953
      Top = 1
      Visible = False
      OnClick = btnExcelClick
      ExplicitLeft = 953
      ExplicitTop = 1
    end
    inherited nvMain: TRzDBNavigator
      Left = 1034
      Top = 5
      Hints.Strings = ()
      Visible = False
      ExplicitLeft = 1034
      ExplicitTop = 5
    end
    object edUserID: TkcRzDBEdit
      Left = 732
      Top = 7
      Width = 150
      Height = 20
      DataSource = dsUser
      DataField = 'USER_ID'
      ReadOnly = True
      FrameController = MastDB.RzFrameController
      ImeMode = imSAlpha
      ImeName = 'Microsoft IME 2010'
      TabOrder = 2
      Visible = False
      OnChange = edUserIDChange
      EnterToTab = True
    end
    object edTreadeDt: TkcRzDBEdit
      Left = 680
      Top = 5
      Width = 150
      Height = 20
      DataSource = dsClsPL
      DataField = 'TRADE_DT'
      ReadOnly = True
      FrameController = MastDB.RzFrameController
      ImeMode = imSAlpha
      ImeName = 'Microsoft IME 2010'
      TabOrder = 3
      Visible = False
      OnChange = edTreadeDtChange
      EnterToTab = True
    end
    object edClsUserId: TkcRzDBEdit
      Left = 696
      Top = 5
      Width = 150
      Height = 20
      DataSource = dsClsPL
      DataField = 'USER_ID'
      ReadOnly = True
      FrameController = MastDB.RzFrameController
      ImeMode = imSAlpha
      ImeName = 'Microsoft IME 2010'
      TabOrder = 4
      Visible = False
      OnChange = edClsUserIdChange
      EnterToTab = True
    end
    object rgClsPLAcntTp: TbsSkinRadioGroup
      Left = 122
      Top = 3
      Width = 216
      Height = 24
      HintImageIndex = 0
      Anchors = [akLeft]
      TabOrder = 5
      SkinData = fmMain.bsSkinData
      SkinDataName = 'panel'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 13
      DefaultFont.Name = 'Tahoma'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      EmptyDrawing = False
      RibbonStyle = False
      ImagePosition = bsipDefault
      TransparentMode = False
      CaptionImageIndex = -1
      RealHeight = -1
      AutoEnabledControls = True
      CheckedMode = False
      Checked = False
      DefaultAlignment = taLeftJustify
      DefaultCaptionHeight = 22
      BorderStyle = bvFrame
      CaptionMode = False
      RollUpMode = False
      RollUpState = False
      NumGlyphs = 1
      Spacing = 2
      Caption = 'rgAcntTP'
      OnClick = rgClsPLAcntTpClick
      UseSkinSize = False
      ButtonSkinDataName = 'radiobox'
      ButtonDefaultFont.Charset = DEFAULT_CHARSET
      ButtonDefaultFont.Color = clWindowText
      ButtonDefaultFont.Height = 13
      ButtonDefaultFont.Name = 'Tahoma'
      ButtonDefaultFont.Style = []
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        #51204#52404
        #44397#45236
        #54644#50808)
    end
    object dtStart: TkcRzDateTimeEdit
      Left = 342
      Top = 5
      Width = 121
      Height = 20
      CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
      CaptionTodayBtn = #50724#45720#47196
      EditType = etDate
      Anchors = [akLeft]
      FrameController = MastDB.RzFrameController
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 6
      EnterToTab = True
    end
    object dtEnd: TkcRzDateTimeEdit
      Left = 469
      Top = 5
      Width = 121
      Height = 20
      CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
      CaptionTodayBtn = #50724#45720#47196
      EditType = etDate
      Anchors = [akLeft]
      FrameController = MastDB.RzFrameController
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 7
      Visible = False
      EnterToTab = True
    end
    object edAcntTp: TkcRzDBEdit
      Left = 696
      Top = 6
      Width = 150
      Height = 20
      DataSource = dsClsPL
      DataField = 'ACNT_TP'
      ReadOnly = True
      FrameController = MastDB.RzFrameController
      ImeMode = imSAlpha
      ImeName = 'Microsoft IME 2010'
      TabOrder = 8
      Visible = False
      OnChange = edAcntTpChange
      EnterToTab = True
    end
  end
  inherited pnBottom: TbsSkinPanel
    Width = 1152
    ExplicitWidth = 1152
  end
  object pnLeft: TRzSizePanel [2]
    Left = 0
    Top = 31
    Width = 232
    Height = 500
    Color = 15987699
    HotSpotVisible = True
    SizeBarWidth = 7
    TabOrder = 2
    object RzPanel5: TRzPanel
      Left = 0
      Top = 81
      Width = 224
      Height = 419
      Align = alClient
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 12303291
      Color = 15790320
      FlatColor = clGray
      FlatColorAdjustment = 0
      FrameController = MastDB.PanelRzFrameController
      TabOrder = 0
      object gdUser: TDBGridEh
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 216
        Height = 411
        TabStop = False
        Align = alClient
        ColumnDefValues.Layout = tlCenter
        ColumnDefValues.Title.TitleButton = True
        Ctl3D = False
        DataSource = dsUser
        DynProps = <>
        FixedColor = 15790320
        Flat = True
        ImeName = 'Microsoft IME 2010'
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ParentCtl3D = False
        RowDetailPanel.Color = clBtnFace
        RowHeight = 21
        TabOrder = 0
        TitleParams.Color = clBtnFace
        TitleParams.RowHeight = 21
        TitleParams.FillStyle = cfstGradientEh
        Visible = False
        OnDblClick = gdUserDblClick
        OnTitleBtnClick = gdUserTitleBtnClick
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'USER_NM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #54924#50896#47749
            Title.Color = 16250871
            Width = 80
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'USER_ID'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #54924#50896'ID'
            Title.Color = 16250871
            Width = 80
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object RzPanel6: TRzPanel
      Left = 0
      Top = 0
      Width = 224
      Height = 81
      Align = alTop
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 12303291
      Color = 15790320
      FlatColor = clGray
      FlatColorAdjustment = 0
      FrameController = MastDB.PanelRzFrameController
      TabOrder = 1
      object btnFind: TbsSkinSpeedButton
        Tag = 500
        Left = 145
        Top = 45
        Width = 57
        Height = 20
        Cursor = crHandPoint
        HintImageIndex = 0
        Visible = False
        SkinData = fmMain.bsSkinData
        SkinDataName = 'resizetoolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        CheckedMode = False
        ImageList = imgBtn
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = -1
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = #44160#49353
        ShowCaption = True
        NumGlyphs = 1
        Spacing = 1
        OnClick = btnFindClick
      end
      object edFind: TRzEdit
        Left = 4
        Top = 45
        Width = 135
        Height = 20
        FrameController = MastDB.RzFrameController
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
        Visible = False
        OnKeyDown = edFindKeyDown
      end
      object cbFind: TkcRzComboBox
        Left = 70
        Top = 13
        Width = 132
        Height = 20
        Style = csDropDownList
        Ctl3D = False
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft Office IME 2007'
        ItemHeight = 12
        ParentCtl3D = False
        TabOrder = 1
        Text = #51204#52404#51312#54924
        OnChange = cbFindChange
        Items.Strings = (
          #51204#52404#51312#54924
          #54924#50896#51312#54924)
        ItemIndex = 0
        Values.Strings = (
          '0'
          '1')
        EnterToTab = True
      end
      object bsSkinLabel1: TbsSkinLabel
        Left = 5
        Top = 13
        Width = 60
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
        Caption = #44160#49353#51312#44148
        AutoSize = False
      end
    end
  end
  object RzPanel1: TRzPanel [3]
    Left = 232
    Top = 31
    Width = 920
    Height = 500
    Align = alClient
    BorderOuter = fsFlat
    BorderHighlight = clWhite
    BorderShadow = 12303291
    Color = 15790320
    FlatColor = clGray
    FlatColorAdjustment = 0
    FrameController = MastDB.PanelRzFrameController
    TabOrder = 3
    object RzSizePanel1: TRzSizePanel
      Left = 1
      Top = 224
      Width = 918
      Height = 275
      Align = alBottom
      Color = 15987699
      HotSpotVisible = True
      SizeBarWidth = 7
      TabOrder = 0
      object RzPanel2: TRzPanel
        Left = 0
        Top = 8
        Width = 918
        Height = 267
        Align = alClient
        BorderOuter = fsFlat
        BorderHighlight = clWhite
        BorderShadow = 12303291
        Color = 15790320
        FlatColor = clGray
        FlatColorAdjustment = 0
        FrameController = MastDB.PanelRzFrameController
        TabOrder = 0
        object RzPanel3: TRzPanel
          Left = 1
          Top = 1
          Width = 916
          Height = 32
          Align = alTop
          BorderOuter = fsFlat
          BorderHighlight = clWhite
          BorderShadow = 12303291
          Color = 15790320
          FlatColor = clGray
          FlatColorAdjustment = 0
          FrameController = MastDB.PanelRzFrameController
          TabOrder = 0
          DesignSize = (
            915
            31)
          object btnPLExcel: TbsSkinSpeedButton
            Tag = 600
            Left = 611
            Top = 4
            Width = 75
            Height = 24
            Cursor = crHandPoint
            HintImageIndex = 0
            Anchors = [akTop, akRight]
            SkinData = fmMain.bsSkinData
            SkinDataName = 'resizetoolbutton'
            DefaultFont.Charset = DEFAULT_CHARSET
            DefaultFont.Color = clWindowText
            DefaultFont.Height = 14
            DefaultFont.Name = 'Arial'
            DefaultFont.Style = []
            DefaultWidth = 0
            DefaultHeight = 0
            UseSkinFont = True
            CheckedMode = False
            ImageList = imgBtn
            UseSkinSize = True
            UseSkinFontColor = True
            WidthWithCaption = 0
            WidthWithoutCaption = 0
            ImageIndex = 10
            RepeatMode = False
            RepeatInterval = 100
            Transparent = False
            Flat = False
            AllowAllUp = False
            Down = False
            GroupIndex = 0
            Caption = #50641#49472
            ShowCaption = True
            NumGlyphs = 1
            Spacing = 1
            OnClick = btnPLExcelClick
            ExplicitLeft = 496
          end
          object RzDBNavigator1: TRzDBNavigator
            Left = 692
            Top = 4
            Width = 100
            Height = 23
            DataSource = dsMain
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
            Anchors = [akTop, akRight]
            BorderOuter = fsNone
            Color = 16185078
            TabOrder = 0
          end
          object pnCntr: TRzPanel
            Left = 798
            Top = 5
            Width = 113
            Height = 23
            Anchors = [akTop, akRight]
            BorderOuter = fsFlat
            Color = clWhite
            FlatColor = 8404992
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object bsSkinLabel45: TbsSkinLabel
            Left = 8
            Top = 6
            Width = 80
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
            Caption = #51333#47785#48324#49552#51061
            AutoSize = False
          end
          object rgPLAcntTp: TbsSkinRadioGroup
            Left = 91
            Top = 4
            Width = 216
            Height = 24
            HintImageIndex = 0
            TabOrder = 3
            Visible = False
            SkinData = fmMain.bsSkinData
            SkinDataName = 'panel'
            DefaultFont.Charset = DEFAULT_CHARSET
            DefaultFont.Color = clWindowText
            DefaultFont.Height = 13
            DefaultFont.Name = 'Tahoma'
            DefaultFont.Style = []
            DefaultWidth = 0
            DefaultHeight = 0
            UseSkinFont = True
            EmptyDrawing = False
            RibbonStyle = False
            ImagePosition = bsipDefault
            TransparentMode = False
            CaptionImageIndex = -1
            RealHeight = -1
            AutoEnabledControls = True
            CheckedMode = False
            Checked = False
            DefaultAlignment = taLeftJustify
            DefaultCaptionHeight = 22
            BorderStyle = bvFrame
            CaptionMode = False
            RollUpMode = False
            RollUpState = False
            NumGlyphs = 1
            Spacing = 2
            Caption = 'rgAcntTP'
            OnClick = rgPLAcntTpClick
            UseSkinSize = False
            ButtonSkinDataName = 'radiobox'
            ButtonDefaultFont.Charset = DEFAULT_CHARSET
            ButtonDefaultFont.Color = clWindowText
            ButtonDefaultFont.Height = 13
            ButtonDefaultFont.Name = 'Tahoma'
            ButtonDefaultFont.Style = []
            Columns = 3
            ItemIndex = 0
            Items.Strings = (
              #51204#52404
              #44397#45236
              #54644#50808)
          end
        end
        object gdMain: TDBGridEh
          Left = 1
          Top = 33
          Width = 916
          Height = 233
          TabStop = False
          Align = alClient
          ColumnDefValues.Layout = tlCenter
          ColumnDefValues.Title.TitleButton = True
          Ctl3D = False
          DataSource = dsMain
          DynProps = <>
          FixedColor = 15790320
          Flat = True
          FooterRowCount = 1
          FooterParams.Font.Charset = DEFAULT_CHARSET
          FooterParams.Font.Color = clWindowText
          FooterParams.Font.Height = -12
          FooterParams.Font.Name = #44404#47548#52404
          FooterParams.Font.Style = [fsBold]
          FooterParams.ParentFont = False
          ImeName = 'Microsoft IME 2010'
          IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
          ParentCtl3D = False
          RowDetailPanel.Color = clBtnFace
          RowHeight = 21
          SumList.Active = True
          SumList.VirtualRecords = True
          TabOrder = 1
          TitleParams.Color = clBtnFace
          TitleParams.RowHeight = 21
          TitleParams.FillStyle = cfstGradientEh
          OnTitleBtnClick = gdMainTitleBtnClick
          Columns = <
            item
              Alignment = taCenter
              DynProps = <>
              EditButtons = <>
              FieldName = 'TRADE_DT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              Footer.Alignment = taRightJustify
              Footer.Value = #54633#44228
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #50689#50629#51068
              Title.Color = 16250871
              Width = 80
            end
            item
              Alignment = taCenter
              DynProps = <>
              EditButtons = <>
              FieldName = 'ACNT_TP'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #44228#51340#44396#48516
              Title.Color = 16250871
              Width = 75
            end
            item
              Alignment = taCenter
              DynProps = <>
              EditButtons = <>
              FieldName = 'ACNT_NO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #44228#51340#48264#54840
              Title.Color = 16250871
              Width = 80
            end
            item
              Alignment = taCenter
              DynProps = <>
              EditButtons = <>
              FieldName = 'STK_NM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #51333#47785#47749
              Title.Color = 16250871
              Width = 169
            end
            item
              Alignment = taCenter
              Color = 16250879
              DynProps = <>
              EditButtons = <>
              FieldName = 'STK_CD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #51333#47785#53076#46300
              Title.Color = 16250871
              Width = 70
            end
            item
              Alignment = taCenter
              DynProps = <>
              EditButtons = <>
              FieldName = 'TRADE_QTY'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #44144#47000#49688#47049
              Title.Color = 16250871
              Width = 55
            end
            item
              Alignment = taCenter
              Color = clWhite
              DynProps = <>
              EditButtons = <>
              FieldName = 'TRADE_CNT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #44144#47000#44148#49688
              Title.Color = 16250871
              Width = 55
            end
            item
              Alignment = taCenter
              DynProps = <>
              EditButtons = <>
              FieldName = 'NCLR_QTY'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #51092#44256#49688#47049
              Title.Color = 16250871
              Width = 55
            end
            item
              Alignment = taCenter
              DynProps = <>
              EditButtons = <>
              FieldName = 'CLR_PL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              Footer.ValueType = fvtStaticText
              Footers = <
                item
                  Alignment = taRightJustify
                  FieldName = 'CLR_PL'
                  ValueType = fvtSum
                end>
              Title.Alignment = taCenter
              Title.Caption = #52397#49328#49552#51061
              Title.Color = 16250871
              Width = 90
            end
            item
              Alignment = taCenter
              DynProps = <>
              EditButtons = <>
              FieldName = 'CMSN'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              Footer.ValueType = fvtStaticText
              Footers = <
                item
                  Alignment = taRightJustify
                  FieldName = 'CMSN'
                  ValueType = fvtSum
                end>
              Title.Alignment = taCenter
              Title.Caption = #49688#49688#47308
              Title.Color = 16250871
              Width = 80
            end
            item
              Alignment = taCenter
              Color = 16515071
              DynProps = <>
              EditButtons = <>
              FieldName = 'NET_PL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              Footer.ValueType = fvtStaticText
              Footers = <
                item
                  Alignment = taRightJustify
                  FieldName = 'NET_PL'
                  ValueType = fvtSum
                end>
              Title.Alignment = taCenter
              Title.Caption = #49692#49552#51061
              Title.Color = 16250871
              Width = 100
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
    object RzPanel4: TRzPanel
      Left = 1
      Top = 1
      Width = 918
      Height = 32
      Align = alTop
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 12303291
      Color = 15790320
      FlatColor = clGray
      FlatColorAdjustment = 0
      FrameController = MastDB.PanelRzFrameController
      TabOrder = 1
      DesignSize = (
        917
        31)
      object btnPLClsExcel: TbsSkinSpeedButton
        Tag = 600
        Left = 609
        Top = 3
        Width = 75
        Height = 24
        Cursor = crHandPoint
        HintImageIndex = 0
        Anchors = [akRight, akBottom]
        SkinData = fmMain.bsSkinData
        SkinDataName = 'resizetoolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        CheckedMode = False
        ImageList = imgBtn
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 10
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = #50641#49472
        ShowCaption = True
        NumGlyphs = 1
        Spacing = 1
        OnClick = btnPLClsExcelClick
        ExplicitLeft = 395
        ExplicitTop = 4
      end
      object pnClsPL: TRzPanel
        Left = 796
        Top = 3
        Width = 113
        Height = 23
        Anchors = [akRight, akBottom]
        BorderOuter = fsFlat
        Color = clWhite
        FlatColor = 8404992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object RzDBNavigator2: TRzDBNavigator
        Left = 690
        Top = 3
        Width = 100
        Height = 23
        DataSource = dsClsPL
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
        Anchors = [akRight, akBottom]
        BorderOuter = fsNone
        Color = 16185078
        TabOrder = 1
      end
      object bsSkinLabel2: TbsSkinLabel
        Left = 8
        Top = 6
        Width = 80
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
        Caption = #44592#44036#48324#49552#51061
        AutoSize = False
      end
      object chUserTp: TbsSkinCheckRadioBox
        Left = 94
        Top = 5
        Width = 107
        Height = 25
        Cursor = crHandPoint
        HintImageIndex = 0
        TabOrder = 3
        SkinDataName = 'checkbox'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = False
        WordWrap = False
        AllowGrayed = False
        State = cbChecked
        ImageIndex = 0
        Flat = True
        UseSkinFontColor = False
        TabStop = True
        CanFocused = True
        Radio = False
        Checked = True
        GroupIndex = 0
        Caption = #51221#54924#50896#47564' '#51312#54924
        OnClick = chUserTpClick
      end
      object dtDetailStart: TkcRzDateTimeEdit
        Left = 288
        Top = 6
        Width = 121
        Height = 20
        CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
        CaptionTodayBtn = #50724#45720#47196
        EditType = etDate
        Anchors = [akLeft]
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 4
        EnterToTab = True
      end
      object bsSkinLabel3: TbsSkinLabel
        Left = 207
        Top = 6
        Width = 75
        Height = 20
        HintImageIndex = 0
        Anchors = [akLeft]
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
        Caption = #49884#51216#51068#51088
        AutoSize = False
      end
      object cbUserGrade: TkcRzComboBox
        Left = 415
        Top = 6
        Width = 132
        Height = 20
        Style = csDropDownList
        Ctl3D = False
        FrameController = MastDB.RzFrameController
        ImeName = 'Microsoft Office IME 2007'
        ItemHeight = 12
        ParentCtl3D = False
        TabOrder = 6
        Text = #54924#50896#46321#44553
        Visible = False
        OnChange = cbFindChange
        Items.Strings = (
          #54924#50896#46321#44553)
        ItemIndex = 0
        Values.Strings = (
          '0'
          '1')
        EnterToTab = True
      end
    end
    object gdClsPL: TDBGridEh
      Left = 1
      Top = 33
      Width = 918
      Height = 191
      Hint = #45908#48660#53364#47533#49884' '#51333#47785#48324#49552#51061#51312#54924
      TabStop = False
      Align = alClient
      ColumnDefValues.Layout = tlCenter
      ColumnDefValues.Title.TitleButton = True
      Ctl3D = False
      DataSource = dsClsPL
      DynProps = <>
      FixedColor = 15790320
      Flat = True
      FooterRowCount = 1
      FooterParams.Font.Charset = DEFAULT_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -12
      FooterParams.Font.Name = #44404#47548#52404
      FooterParams.Font.Style = [fsBold]
      FooterParams.ParentFont = False
      ImeName = 'Microsoft IME 2010'
      IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ParentCtl3D = False
      RowDetailPanel.Color = clBtnFace
      RowHeight = 21
      SumList.Active = True
      SumList.VirtualRecords = True
      TabOrder = 2
      TitleParams.Color = clBtnFace
      TitleParams.RowHeight = 21
      TitleParams.FillStyle = cfstGradientEh
      OnCellClick = gdClsPLCellClick
      OnDblClick = gdClsPLDblClick
      OnTitleBtnClick = gdClsPLTitleBtnClick
      Columns = <
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'TRADE_DT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Footer.Alignment = taRightJustify
          Footer.Value = #54633#44228
          Footer.ValueType = fvtStaticText
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #50689#50629#51068
          Title.Color = 16250871
          Width = 80
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'USER_NM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Footer.Alignment = taRightJustify
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #54924#50896#47749
          Title.Color = 16250871
          Width = 80
        end
        item
          Alignment = taCenter
          Color = 16250879
          DynProps = <>
          EditButtons = <>
          FieldName = 'ACNT_TP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Footer.Alignment = taRightJustify
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #44228#51340#44396#48516
          Title.Color = 16250871
          Width = 75
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'ACNT_NO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Footer.Alignment = taRightJustify
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #44228#51340#48264#54840
          Title.Color = 16250871
          Width = 80
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'ACNT_AMT_BF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Footer.Alignment = taRightJustify
          Footers = <
            item
              Alignment = taRightJustify
              FieldName = 'ACNT_AMT_BF'
              ValueType = fvtSum
            end>
          Title.Alignment = taCenter
          Title.Caption = #51204#51068#51092#50529
          Title.Color = 16250871
          Width = 110
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'ACNT_AMT_TODAY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Footer.Alignment = taRightJustify
          Footers = <
            item
              Alignment = taRightJustify
              FieldName = 'ACNT_AMT_TODAY'
              ValueType = fvtSum
            end>
          Title.Alignment = taCenter
          Title.Caption = #45817#51068#51092#50529
          Title.Color = 16250871
          Width = 110
        end
        item
          Alignment = taCenter
          Color = clWhite
          DynProps = <>
          EditButtons = <>
          FieldName = 'RQST_IN_AMT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Footer.Alignment = taRightJustify
          Footers = <
            item
              Alignment = taRightJustify
              FieldName = 'RQST_IN_AMT'
              ValueType = fvtSum
            end>
          Title.Alignment = taCenter
          Title.Caption = #51077#44552#50836#52397#50529
          Title.Color = 16250871
          Width = 90
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'RSLT_IN_AMT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Footer.Alignment = taRightJustify
          Footers = <
            item
              Alignment = taRightJustify
              FieldName = 'RSLT_IN_AMT'
              ValueType = fvtSum
            end>
          Title.Alignment = taCenter
          Title.Caption = #51077#44552#52376#47532#50529
          Title.Color = 16250871
          Width = 90
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'RQST_OUT_AMT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Footer.Alignment = taRightJustify
          Footers = <
            item
              Alignment = taRightJustify
              FieldName = 'RQST_OUT_AMT'
              ValueType = fvtSum
            end>
          Title.Alignment = taCenter
          Title.Caption = #52636#44552#50836#52397#50529
          Title.Color = 16250871
          Width = 90
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'RSLT_OUT_AMT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Footer.Alignment = taRightJustify
          Footers = <
            item
              Alignment = taRightJustify
              FieldName = 'RSLT_OUT_AMT'
              ValueType = fvtSum
            end>
          Title.Alignment = taCenter
          Title.Caption = #52636#44552#52376#47532#50529
          Title.Color = 16250871
          Width = 90
        end
        item
          Alignment = taCenter
          Color = 16515071
          DynProps = <>
          EditButtons = <>
          FieldName = 'NET_PL_SUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Footer.Alignment = taRightJustify
          Footers = <
            item
              Alignment = taRightJustify
              FieldName = 'NET_PL_SUM'
              ValueType = fvtSum
            end>
          Title.Alignment = taCenter
          Title.Caption = #49692#49552#51061#54633
          Title.Color = 16250871
          Width = 100
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'CLR_PL_SUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Footer.Alignment = taRightJustify
          Footers = <
            item
              Alignment = taRightJustify
              FieldName = 'CLR_PL_SUM'
              ValueType = fvtSum
            end>
          Title.Alignment = taCenter
          Title.Caption = #52397#49328#49552#51061#54633
          Title.Color = 16250871
          Width = 90
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'CMSN_SUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Footer.Alignment = taRightJustify
          Footers = <
            item
              Alignment = taRightJustify
              FieldName = 'CMSN_SUM'
              ValueType = fvtSum
            end>
          Title.Alignment = taCenter
          Title.Caption = #49688#49688#47308#54633
          Title.Color = 16250871
          Width = 90
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'KSF_PL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Footer.Alignment = taRightJustify
          Footers = <
            item
              Alignment = taRightJustify
              FieldName = 'KSF_PL'
              ValueType = fvtSum
            end>
          Title.Alignment = taCenter
          Title.Caption = #44397#45236#49440#47932#49552#51061
          Title.Color = 16250871
          Width = 90
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'KSF_CMSN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Footer.Alignment = taRightJustify
          Footers = <
            item
              Alignment = taRightJustify
              FieldName = 'KSF_CMSN'
              ValueType = fvtSum
            end>
          Title.Alignment = taCenter
          Title.Caption = #44397#45236#49440#47932#49688#49688#47308
          Title.Color = 16250871
          Width = 90
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'KSF_NCLR_QTY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Footer.Alignment = taRightJustify
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #44397#49440#51092#44256
          Title.Color = 16250871
          Width = 60
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'KSO_PL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Footer.Alignment = taRightJustify
          Footers = <
            item
              Alignment = taRightJustify
              FieldName = 'KSO_PL'
              ValueType = fvtSum
            end>
          Title.Alignment = taCenter
          Title.Caption = #44397#45236#50741#49496#49552#51061
          Title.Color = 16250871
          Width = 90
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'KSO_CMSN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Footer.Alignment = taRightJustify
          Footers = <
            item
              Alignment = taRightJustify
              FieldName = 'KSO_CMSN'
              ValueType = fvtSum
            end>
          Title.Alignment = taCenter
          Title.Caption = #44397#45236#50741#49496#49688#49688#47308
          Title.Color = 16250871
          Width = 90
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'KSO_NCLR_QTY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Footer.Alignment = taRightJustify
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #44397#45236#50741#49496#51092#44256
          Title.Color = 16250871
          Width = 80
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'GF_PL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Footer.Alignment = taRightJustify
          Footers = <
            item
              Alignment = taRightJustify
              FieldName = 'GF_PL'
              ValueType = fvtSum
            end>
          Title.Alignment = taCenter
          Title.Caption = #54644#50808#49440#47932#49552#51061
          Title.Color = 16250871
          Width = 90
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'GF_CMSN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Footer.Alignment = taRightJustify
          Footers = <
            item
              Alignment = taRightJustify
              FieldName = 'GF_CMSN'
              ValueType = fvtSum
            end>
          Title.Alignment = taCenter
          Title.Caption = #54644#50808#49440#47932#49688#49688#47308
          Title.Color = 16250871
          Width = 90
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'GF_NCLR_QTY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Footer.Alignment = taRightJustify
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #54644#50808#49440#47932#51092#44256
          Title.Color = 16250871
          Width = 80
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited imgBtn: TImageList
    Bitmap = {
      494C01010B00C800CC0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    FetchRows = 50
    SpecificOptions.Strings = (
      'SQL Server.FetchAll=False')
  end
  inherited dbPart: TUniQuery
    Left = 161
  end
  object dbUser: TUniQuery
    Connection = MastDB.UniConnection
    SQL.Strings = (
      'SELECT USER_NM, USER_ID'
      'FROM USER_MST')
    FetchRows = 50
    SpecificOptions.Strings = (
      'SQL Server.FetchAll=False')
    Left = 113
    Top = 384
    object dbUserUSER_NM: TStringField
      FieldName = 'USER_NM'
    end
    object dbUserUSER_ID: TStringField
      FieldName = 'USER_ID'
      Required = True
    end
  end
  object dsUser: TDataSource
    DataSet = dbUser
    Left = 160
    Top = 384
  end
  object tmOpen: TTimer
    Enabled = False
    Interval = 500
    OnTimer = tmOpenTimer
    Left = 64
    Top = 384
  end
  object dbClsPL: TUniQuery
    Connection = MastDB.UniConnection
    FetchRows = 50
    SpecificOptions.Strings = (
      'SQL Server.FetchAll=False')
    Left = 760
    Top = 176
  end
  object dsClsPL: TDataSource
    DataSet = dbClsPL
    Left = 816
    Top = 176
  end
  object tmPLOpen: TTimer
    Enabled = False
    Interval = 500
    OnTimer = tmPLOpenTimer
    Left = 120
    Top = 344
  end
  object tmPLAll: TTimer
    Enabled = False
    Interval = 500
    OnTimer = tmPLAllTimer
    Left = 168
    Top = 344
  end
end
