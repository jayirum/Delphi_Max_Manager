inherited fmPresent: TfmPresent
  Tag = 3009
  Caption = #54788#54889#54032
  ClientHeight = 643
  ClientWidth = 1377
  OnActivate = FormActivate
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  ExplicitWidth = 1393
  ExplicitHeight = 681
  PixelsPerInch = 96
  TextHeight = 12
  inherited pnTop: TRzPanel
    Width = 1377
    ExplicitWidth = 1377
    inherited btnInsert: TbsSkinSpeedButton
      Left = 651
      Top = 4
      Visible = False
      ExplicitLeft = 651
      ExplicitTop = 4
    end
    inherited btnEdit: TbsSkinSpeedButton
      Left = 729
      Visible = False
      ExplicitLeft = 729
    end
    inherited btnDelete: TbsSkinSpeedButton
      Left = 805
      Visible = False
      ExplicitLeft = 805
    end
    inherited btnPost: TbsSkinSpeedButton
      Left = 881
      Visible = False
      ExplicitLeft = 881
    end
    inherited btnClose: TbsSkinSpeedButton
      Left = 1292
      ExplicitLeft = 1015
    end
    inherited bsRibbonDivider4: TbsRibbonDivider
      Visible = False
    end
    inherited btnExcel: TbsSkinSpeedButton
      Left = 1068
      Visible = False
      OnClick = btnExcelClick
      ExplicitLeft = 1068
    end
    inherited pnTitle: TRzPanel
      OnDblClick = pnTitleDblClick
    end
    inherited nvMain: TRzDBNavigator
      Left = 962
      Hints.Strings = ()
      Visible = False
      ExplicitLeft = 962
    end
    object cbAutoTime: TkcRzComboBox
      Left = 202
      Top = 5
      Width = 80
      Height = 20
      Style = csDropDownList
      Ctl3D = False
      FrameController = MastDB.RzFrameController
      ImeName = 'Microsoft Office IME 2007'
      ItemHeight = 12
      ParentCtl3D = False
      TabOrder = 2
      Text = '30'#52488#47560#45796
      Items.Strings = (
        '30'#52488#47560#45796
        '1'#48516#47560#45796
        '2'#48516#47560#45796
        '5'#48516#47560#45796
        '10'#48516#47560#45796)
      ItemIndex = 0
      Values.Strings = (
        '30'
        '60'
        '120'
        '300'
        '600')
      EnterToTab = True
    end
    object chAutoSelect: TbsSkinCheckRadioBox
      Left = 287
      Top = 4
      Width = 75
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
      State = cbUnchecked
      ImageIndex = 0
      Flat = True
      UseSkinFontColor = False
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = #51088#46041#51312#54924
      OnClick = chAutoSelectClick
    end
    object chUserTp: TbsSkinCheckRadioBox
      Left = 465
      Top = 4
      Width = 107
      Height = 25
      Cursor = crHandPoint
      HintImageIndex = 0
      TabOrder = 4
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
    end
    object chName: TbsSkinCheckRadioBox
      Left = 368
      Top = 4
      Width = 91
      Height = 25
      Cursor = crHandPoint
      HintImageIndex = 0
      TabOrder = 5
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
      State = cbUnchecked
      ImageIndex = 0
      Flat = True
      UseSkinFontColor = False
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = #51333#47785#47749#54364#49884
    end
  end
  inherited pnBottom: TbsSkinPanel
    Top = 621
    Width = 1377
    ExplicitTop = 621
    ExplicitWidth = 1377
  end
  object pnMain: TRzPanel [2]
    Left = 0
    Top = 31
    Width = 1377
    Height = 590
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = 16448250
    BorderHighlight = clWhite
    BorderShadow = 16448250
    Color = 16448250
    FlatColor = clGray
    FlatColorAdjustment = 0
    TabOrder = 2
    object RzGroupBox1: TRzGroupBox
      Left = 1
      Top = 4
      Width = 213
      Height = 573
      Caption = ' '#51092#44256#54633#49328#45236#50669' '
      Color = 16448250
      FrameController = MastDB.RzFrameController
      TabOrder = 0
      object gdMain: TDBGridEh
        Left = 5
        Top = 18
        Width = 202
        Height = 271
        TabStop = False
        ColumnDefValues.Layout = tlCenter
        Ctl3D = False
        DataSource = dsMain
        DynProps = <>
        FixedColor = 15790320
        Flat = True
        ImeName = 'Microsoft IME 2010'
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ParentCtl3D = False
        RowDetailPanel.Color = clBtnFace
        RowHeight = 21
        TabOrder = 0
        TitleParams.Color = clBtnFace
        TitleParams.RowHeight = 21
        TitleParams.FillStyle = cfstGradientEh
        Visible = False
        Columns = <
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'STK_CD'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #51333#47785#47749'('#51068#48152')'
            Title.Color = 16250871
            Width = 80
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'BS_TP'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #44396#48516
            Title.Color = 16250871
            Width = 40
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'NCLR_POS_QTY'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #49688#47049
            Title.Color = 16250871
            Width = 40
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 9
        Top = 18
        Width = 198
        Height = 548
        TabStop = False
        ColumnDefValues.Layout = tlCenter
        ColumnDefValues.Title.TitleButton = True
        Ctl3D = False
        DataSource = dsNclr
        DynProps = <>
        FixedColor = 15790320
        Flat = True
        ImeName = 'Microsoft IME 2010'
        IndicatorOptions = [gioShowRecNoEh]
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ParentCtl3D = False
        RowDetailPanel.Color = clBtnFace
        RowHeight = 21
        TabOrder = 1
        TitleParams.Color = clBtnFace
        TitleParams.RowHeight = 21
        TitleParams.FillStyle = cfstGradientEh
        OnTitleBtnClick = DBGridEh1TitleBtnClick
        Columns = <
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'STK_CD'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #51333#47785#47749'(VVIP)'
            Title.Color = 16250871
            Width = 80
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'BS_TP'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #44396#48516
            Title.Color = 16250871
            Width = 40
            OnAdvDrawDataCell = DBGridEh1Columns1AdvDrawDataCell
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'NCLR_POS_QTY'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #49688#47049
            Title.Color = 16250871
            Width = 40
            OnAdvDrawDataCell = DBGridEh1Columns2AdvDrawDataCell
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object RzGroupBox2: TRzGroupBox
      Left = 219
      Top = 4
      Width = 381
      Height = 573
      Caption = ' '#51092#44256#45236#50669' '
      Color = 16448250
      FrameController = MastDB.RzFrameController
      TabOrder = 1
      object DBGridEh2: TDBGridEh
        Left = 9
        Top = 18
        Width = 365
        Height = 271
        TabStop = False
        ColumnDefValues.Layout = tlCenter
        Ctl3D = False
        DataSource = dsNclrListR
        DynProps = <>
        FixedColor = 15790320
        Flat = True
        ImeName = 'Microsoft IME 2010'
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ParentCtl3D = False
        RowDetailPanel.Color = clBtnFace
        RowHeight = 21
        TabOrder = 0
        TitleParams.Color = clBtnFace
        TitleParams.RowHeight = 21
        TitleParams.FillStyle = cfstGradientEh
        Visible = False
        Columns = <
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'OVERNGT_YN'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #49888#52397#44396#48516
            Title.Color = 16250871
            Width = 55
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'USER_NM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #54924#50896#47749
            Title.Color = 16250871
            Width = 60
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'STK_CD'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #51333#47785#47749'('#51068#48152')'
            Title.Color = 16250871
            Width = 80
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'BS_TP'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #44396#48516
            Title.Color = 16250871
            Width = 40
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'NCLR_POS_QTY'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #49688#47049
            Title.Color = 16250871
            Width = 40
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'AVG_PRC'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #54217#44512#44032
            Title.Color = 16250871
            Width = 60
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 9
        Top = 18
        Width = 365
        Height = 549
        TabStop = False
        ColumnDefValues.Layout = tlCenter
        ColumnDefValues.Title.TitleButton = True
        Ctl3D = False
        DataSource = dsNclrListV
        DynProps = <>
        FixedColor = 15790320
        Flat = True
        ImeMode = imDisable
        IndicatorOptions = [gioShowRecNoEh]
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ParentCtl3D = False
        RowDetailPanel.Color = clBtnFace
        RowHeight = 21
        TabOrder = 1
        TitleParams.Color = clBtnFace
        TitleParams.RowHeight = 21
        TitleParams.FillStyle = cfstGradientEh
        OnTitleBtnClick = DBGridEh3TitleBtnClick
        Columns = <
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'OVERNGT_YN'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #49888#52397#44396#48516
            Title.Color = 16250871
            Visible = False
            Width = 55
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'USER_NM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #54924#50896#47749
            Title.Color = 16250871
            Width = 60
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'STK_CD'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #51333#47785#47749'(VVIP)'
            Title.Color = 16250871
            Width = 80
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'BS_TP'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #44396#48516
            Title.Color = 16250871
            Width = 40
            OnAdvDrawDataCell = DBGridEh3Columns3AdvDrawDataCell
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'NCLR_POS_QTY'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #49688#47049
            Title.Color = 16250871
            Width = 40
            OnAdvDrawDataCell = DBGridEh3Columns4AdvDrawDataCell
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'AVG_PRC'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #54217#44512#44032
            Title.Color = 16250871
            Width = 60
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'LEVERAGE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #48708#50984
            Title.Color = 16250871
            Width = 45
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object RzGroupBox3: TRzGroupBox
      Left = 991
      Top = 4
      Width = 380
      Height = 573
      Caption = ' '#50696#50557'(MIT) '#45236#50669' '
      Color = 16448250
      FrameController = MastDB.RzFrameController
      TabOrder = 2
      object DBGridEh4: TDBGridEh
        Left = 9
        Top = 18
        Width = 340
        Height = 271
        TabStop = False
        ColumnDefValues.Layout = tlCenter
        Ctl3D = False
        DataSource = dsMitR
        DynProps = <>
        FixedColor = 15790320
        Flat = True
        ImeName = 'Microsoft IME 2010'
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ParentCtl3D = False
        RowDetailPanel.Color = clBtnFace
        RowHeight = 21
        TabOrder = 0
        TitleParams.Color = clBtnFace
        TitleParams.RowHeight = 21
        TitleParams.FillStyle = cfstGradientEh
        Visible = False
        Columns = <
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'USER_NM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #54924#50896#47749
            Title.Color = 16250871
            Width = 60
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'STK_CD'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #51333#47785#47749'('#51068#48152')'
            Title.Color = 16250871
            Width = 80
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'BS_TP'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #44396#48516
            Title.Color = 16250871
            Width = 40
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'REMN_QTY'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #49688#47049
            Title.Color = 16250871
            Width = 40
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'MIT_PRC'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #45800#44032
            Title.Color = 16250871
            Width = 60
          end>
        object RowDetailData: TRowDetailPanelControlEh
          object DBGridEh8: TDBGridEh
            Left = -399
            Top = -271
            Width = 399
            Height = 271
            TabStop = False
            ColumnDefValues.Layout = tlCenter
            Ctl3D = False
            DataSource = dsMitR
            DynProps = <>
            FixedColor = 15790320
            Flat = True
            ImeName = 'Microsoft IME 2010'
            IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
            ParentCtl3D = False
            RowDetailPanel.Color = clBtnFace
            RowHeight = 21
            TabOrder = 0
            TitleParams.Color = clBtnFace
            TitleParams.RowHeight = 21
            TitleParams.FillStyle = cfstGradientEh
            Columns = <
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'USER_NM'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #54924#50896#47749
                Title.Color = 16250871
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'STK_CD'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #51333#47785#47749
                Title.Color = 16250871
                Width = 80
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'BS_TP'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #44396#48516
                Title.Color = 16250871
                Width = 50
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'REMN_QTY'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #49688#47049
                Title.Color = 16250871
                Width = 50
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'MIT_PRC'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #45800#44032
                Title.Color = 16250871
                Width = 60
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object DBGridEh9: TDBGridEh
            Left = -399
            Top = -271
            Width = 399
            Height = 271
            TabStop = False
            ColumnDefValues.Layout = tlCenter
            Ctl3D = False
            DataSource = dsMitR
            DynProps = <>
            FixedColor = 15790320
            Flat = True
            ImeName = 'Microsoft IME 2010'
            IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
            ParentCtl3D = False
            RowDetailPanel.Color = clBtnFace
            RowHeight = 21
            TabOrder = 1
            TitleParams.Color = clBtnFace
            TitleParams.RowHeight = 21
            TitleParams.FillStyle = cfstGradientEh
            Columns = <
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'USER_NM'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #54924#50896#47749
                Title.Color = 16250871
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'STK_CD'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #51333#47785#47749
                Title.Color = 16250871
                Width = 80
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'BS_TP'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #44396#48516
                Title.Color = 16250871
                Width = 50
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'REMN_QTY'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #49688#47049
                Title.Color = 16250871
                Width = 50
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'MIT_PRC'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #45800#44032
                Title.Color = 16250871
                Width = 60
              end>
            object RowDetailData: TRowDetailPanelControlEh
              object DBGridEh10: TDBGridEh
                Left = -399
                Top = -271
                Width = 399
                Height = 271
                TabStop = False
                ColumnDefValues.Layout = tlCenter
                Ctl3D = False
                DataSource = dsMitR
                DynProps = <>
                FixedColor = 15790320
                Flat = True
                ImeName = 'Microsoft IME 2010'
                IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
                OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
                ParentCtl3D = False
                RowDetailPanel.Color = clBtnFace
                RowHeight = 21
                TabOrder = 0
                TitleParams.Color = clBtnFace
                TitleParams.RowHeight = 21
                TitleParams.FillStyle = cfstGradientEh
                Columns = <
                  item
                    Alignment = taCenter
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'USER_NM'
                    Footers = <>
                    Title.Alignment = taCenter
                    Title.Caption = #54924#50896#47749
                    Title.Color = 16250871
                  end
                  item
                    Alignment = taCenter
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'STK_CD'
                    Footers = <>
                    Title.Alignment = taCenter
                    Title.Caption = #51333#47785#47749
                    Title.Color = 16250871
                    Width = 80
                  end
                  item
                    Alignment = taCenter
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'BS_TP'
                    Footers = <>
                    Title.Alignment = taCenter
                    Title.Caption = #44396#48516
                    Title.Color = 16250871
                    Width = 50
                  end
                  item
                    Alignment = taCenter
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'REMN_QTY'
                    Footers = <>
                    Title.Alignment = taCenter
                    Title.Caption = #49688#47049
                    Title.Color = 16250871
                    Width = 50
                  end
                  item
                    Alignment = taCenter
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'MIT_PRC'
                    Footers = <>
                    Title.Alignment = taCenter
                    Title.Caption = #45800#44032
                    Title.Color = 16250871
                    Width = 60
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
          end
        end
      end
      object DBGridEh5: TDBGridEh
        Left = 9
        Top = 18
        Width = 365
        Height = 548
        TabStop = False
        ColumnDefValues.Layout = tlCenter
        ColumnDefValues.Title.TitleButton = True
        Ctl3D = False
        DataSource = dsMitV
        DynProps = <>
        FixedColor = 15790320
        Flat = True
        ImeName = 'Microsoft IME 2010'
        IndicatorOptions = [gioShowRecNoEh]
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ParentCtl3D = False
        RowDetailPanel.Color = clBtnFace
        RowHeight = 21
        TabOrder = 1
        TitleParams.Color = clBtnFace
        TitleParams.RowHeight = 21
        TitleParams.FillStyle = cfstGradientEh
        OnTitleBtnClick = DBGridEh5TitleBtnClick
        Columns = <
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'USER_NM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #54924#50896#47749
            Title.Color = 16250871
            Width = 60
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'STK_CD'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #51333#47785#47749'(VVIP)'
            Title.Color = 16250871
            Width = 80
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'BS_TP'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #44396#48516
            Title.Color = 16250871
            Width = 40
            OnAdvDrawDataCell = DBGridEh5Columns2AdvDrawDataCell
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'REMN_QTY'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #49688#47049
            Title.Color = 16250871
            Width = 40
            OnAdvDrawDataCell = DBGridEh5Columns3AdvDrawDataCell
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'MIT_PRC'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #45800#44032
            Title.Color = 16250871
            Width = 60
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'LEVERAGE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #48708#50984
            Title.Color = 16250871
            Width = 45
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object RzGroupBox4: TRzGroupBox
      Left = 605
      Top = 4
      Width = 381
      Height = 573
      Caption = ' '#48120#52404#44208' '#51452#47928#45236#50669' '
      Color = 16448250
      FrameController = MastDB.RzFrameController
      TabOrder = 3
      object DBGridEh11: TDBGridEh
        Left = 9
        Top = 18
        Width = 340
        Height = 271
        TabStop = False
        ColumnDefValues.Layout = tlCenter
        Ctl3D = False
        DataSource = dsNoCntrR
        DynProps = <>
        FixedColor = 15790320
        Flat = True
        ImeName = 'Microsoft IME 2010'
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ParentCtl3D = False
        RowDetailPanel.Color = clBtnFace
        RowHeight = 21
        TabOrder = 0
        TitleParams.Color = clBtnFace
        TitleParams.RowHeight = 21
        TitleParams.FillStyle = cfstGradientEh
        Visible = False
        Columns = <
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'USER_NM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #54924#50896#47749
            Title.Color = 16250871
            Width = 60
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'STK_CD'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #51333#47785#47749'('#51068#48152')'
            Title.Color = 16250871
            Width = 80
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'BS_TP'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #44396#48516
            Title.Color = 16250871
            Width = 40
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'REMN_QTY'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #49688#47049
            Title.Color = 16250871
            Width = 40
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'ORD_PRC'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #45800#44032
            Title.Color = 16250871
            Width = 60
          end>
        object RowDetailData: TRowDetailPanelControlEh
          object DBGridEh12: TDBGridEh
            Left = -399
            Top = -271
            Width = 399
            Height = 271
            TabStop = False
            ColumnDefValues.Layout = tlCenter
            Ctl3D = False
            DataSource = dsMitR
            DynProps = <>
            FixedColor = 15790320
            Flat = True
            ImeName = 'Microsoft IME 2010'
            IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
            ParentCtl3D = False
            RowDetailPanel.Color = clBtnFace
            RowHeight = 21
            TabOrder = 0
            TitleParams.Color = clBtnFace
            TitleParams.RowHeight = 21
            TitleParams.FillStyle = cfstGradientEh
            Columns = <
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'USER_NM'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #54924#50896#47749
                Title.Color = 16250871
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'STK_CD'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #51333#47785#47749
                Title.Color = 16250871
                Width = 80
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'BS_TP'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #44396#48516
                Title.Color = 16250871
                Width = 50
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'REMN_QTY'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #49688#47049
                Title.Color = 16250871
                Width = 50
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'MIT_PRC'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #45800#44032
                Title.Color = 16250871
                Width = 60
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object DBGridEh13: TDBGridEh
            Left = -399
            Top = -271
            Width = 399
            Height = 271
            TabStop = False
            ColumnDefValues.Layout = tlCenter
            Ctl3D = False
            DataSource = dsMitR
            DynProps = <>
            FixedColor = 15790320
            Flat = True
            ImeName = 'Microsoft IME 2010'
            IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
            ParentCtl3D = False
            RowDetailPanel.Color = clBtnFace
            RowHeight = 21
            TabOrder = 1
            TitleParams.Color = clBtnFace
            TitleParams.RowHeight = 21
            TitleParams.FillStyle = cfstGradientEh
            Columns = <
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'USER_NM'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #54924#50896#47749
                Title.Color = 16250871
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'STK_CD'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #51333#47785#47749
                Title.Color = 16250871
                Width = 80
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'BS_TP'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #44396#48516
                Title.Color = 16250871
                Width = 50
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'REMN_QTY'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #49688#47049
                Title.Color = 16250871
                Width = 50
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'MIT_PRC'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #45800#44032
                Title.Color = 16250871
                Width = 60
              end>
            object RowDetailData: TRowDetailPanelControlEh
              object DBGridEh14: TDBGridEh
                Left = -399
                Top = -271
                Width = 399
                Height = 271
                TabStop = False
                ColumnDefValues.Layout = tlCenter
                Ctl3D = False
                DataSource = dsMitR
                DynProps = <>
                FixedColor = 15790320
                Flat = True
                ImeName = 'Microsoft IME 2010'
                IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
                OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
                ParentCtl3D = False
                RowDetailPanel.Color = clBtnFace
                RowHeight = 21
                TabOrder = 0
                TitleParams.Color = clBtnFace
                TitleParams.RowHeight = 21
                TitleParams.FillStyle = cfstGradientEh
                Columns = <
                  item
                    Alignment = taCenter
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'USER_NM'
                    Footers = <>
                    Title.Alignment = taCenter
                    Title.Caption = #54924#50896#47749
                    Title.Color = 16250871
                  end
                  item
                    Alignment = taCenter
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'STK_CD'
                    Footers = <>
                    Title.Alignment = taCenter
                    Title.Caption = #51333#47785#47749
                    Title.Color = 16250871
                    Width = 80
                  end
                  item
                    Alignment = taCenter
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'BS_TP'
                    Footers = <>
                    Title.Alignment = taCenter
                    Title.Caption = #44396#48516
                    Title.Color = 16250871
                    Width = 50
                  end
                  item
                    Alignment = taCenter
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'REMN_QTY'
                    Footers = <>
                    Title.Alignment = taCenter
                    Title.Caption = #49688#47049
                    Title.Color = 16250871
                    Width = 50
                  end
                  item
                    Alignment = taCenter
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'MIT_PRC'
                    Footers = <>
                    Title.Alignment = taCenter
                    Title.Caption = #45800#44032
                    Title.Color = 16250871
                    Width = 60
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
          end
        end
      end
      object DBGridEh6: TDBGridEh
        Left = 9
        Top = 18
        Width = 365
        Height = 548
        TabStop = False
        ColumnDefValues.Layout = tlCenter
        ColumnDefValues.Title.TitleButton = True
        Ctl3D = False
        DataSource = dsNoCntrV
        DynProps = <>
        FixedColor = 15790320
        Flat = True
        ImeName = 'Microsoft IME 2010'
        IndicatorOptions = [gioShowRecNoEh]
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ParentCtl3D = False
        RowDetailPanel.Color = clBtnFace
        RowHeight = 21
        TabOrder = 1
        TitleParams.Color = clBtnFace
        TitleParams.RowHeight = 21
        TitleParams.FillStyle = cfstGradientEh
        OnTitleBtnClick = DBGridEh6TitleBtnClick
        Columns = <
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'USER_NM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #54924#50896#47749
            Title.Color = 16250871
            Width = 60
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'STK_CD'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #51333#47785#47749'(VVIP)'
            Title.Color = 16250871
            Width = 80
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'BS_TP'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #44396#48516
            Title.Color = 16250871
            Width = 40
            OnAdvDrawDataCell = DBGridEh6Columns2AdvDrawDataCell
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'REMN_QTY'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #49688#47049
            Title.Color = 16250871
            Width = 40
            OnAdvDrawDataCell = DBGridEh6Columns3AdvDrawDataCell
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'ORD_PRC'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #45800#44032
            Title.Color = 16250871
            Width = 60
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'LEVERAGE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #48708#50984
            Title.Color = 16250871
            Width = 45
          end>
        object RowDetailData: TRowDetailPanelControlEh
          object DBGridEh7: TDBGridEh
            Left = -399
            Top = -271
            Width = 399
            Height = 271
            TabStop = False
            ColumnDefValues.Layout = tlCenter
            Ctl3D = False
            DataSource = dsMitR
            DynProps = <>
            FixedColor = 15790320
            Flat = True
            ImeName = 'Microsoft IME 2010'
            IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
            ParentCtl3D = False
            RowDetailPanel.Color = clBtnFace
            RowHeight = 21
            TabOrder = 0
            TitleParams.Color = clBtnFace
            TitleParams.RowHeight = 21
            TitleParams.FillStyle = cfstGradientEh
            Columns = <
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'USER_NM'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #54924#50896#47749
                Title.Color = 16250871
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'STK_CD'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #51333#47785#47749
                Title.Color = 16250871
                Width = 80
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'BS_TP'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #44396#48516
                Title.Color = 16250871
                Width = 50
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'REMN_QTY'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #49688#47049
                Title.Color = 16250871
                Width = 50
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'MIT_PRC'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #45800#44032
                Title.Color = 16250871
                Width = 60
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object DBGridEh15: TDBGridEh
            Left = -399
            Top = -271
            Width = 399
            Height = 271
            TabStop = False
            ColumnDefValues.Layout = tlCenter
            Ctl3D = False
            DataSource = dsMitR
            DynProps = <>
            FixedColor = 15790320
            Flat = True
            ImeName = 'Microsoft IME 2010'
            IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
            ParentCtl3D = False
            RowDetailPanel.Color = clBtnFace
            RowHeight = 21
            TabOrder = 1
            TitleParams.Color = clBtnFace
            TitleParams.RowHeight = 21
            TitleParams.FillStyle = cfstGradientEh
            Columns = <
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'USER_NM'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #54924#50896#47749
                Title.Color = 16250871
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'STK_CD'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #51333#47785#47749
                Title.Color = 16250871
                Width = 80
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'BS_TP'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #44396#48516
                Title.Color = 16250871
                Width = 50
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'REMN_QTY'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #49688#47049
                Title.Color = 16250871
                Width = 50
              end
              item
                Alignment = taCenter
                DynProps = <>
                EditButtons = <>
                FieldName = 'MIT_PRC'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #45800#44032
                Title.Color = 16250871
                Width = 60
              end>
            object RowDetailData: TRowDetailPanelControlEh
              object DBGridEh16: TDBGridEh
                Left = -399
                Top = -271
                Width = 399
                Height = 271
                TabStop = False
                ColumnDefValues.Layout = tlCenter
                Ctl3D = False
                DataSource = dsMitR
                DynProps = <>
                FixedColor = 15790320
                Flat = True
                ImeName = 'Microsoft IME 2010'
                IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
                OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
                ParentCtl3D = False
                RowDetailPanel.Color = clBtnFace
                RowHeight = 21
                TabOrder = 0
                TitleParams.Color = clBtnFace
                TitleParams.RowHeight = 21
                TitleParams.FillStyle = cfstGradientEh
                Columns = <
                  item
                    Alignment = taCenter
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'USER_NM'
                    Footers = <>
                    Title.Alignment = taCenter
                    Title.Caption = #54924#50896#47749
                    Title.Color = 16250871
                  end
                  item
                    Alignment = taCenter
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'STK_CD'
                    Footers = <>
                    Title.Alignment = taCenter
                    Title.Caption = #51333#47785#47749
                    Title.Color = 16250871
                    Width = 80
                  end
                  item
                    Alignment = taCenter
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'BS_TP'
                    Footers = <>
                    Title.Alignment = taCenter
                    Title.Caption = #44396#48516
                    Title.Color = 16250871
                    Width = 50
                  end
                  item
                    Alignment = taCenter
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'REMN_QTY'
                    Footers = <>
                    Title.Alignment = taCenter
                    Title.Caption = #49688#47049
                    Title.Color = 16250871
                    Width = 50
                  end
                  item
                    Alignment = taCenter
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'MIT_PRC'
                    Footers = <>
                    Title.Alignment = taCenter
                    Title.Caption = #45800#44032
                    Title.Color = 16250871
                    Width = 60
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
          end
        end
      end
    end
  end
  inherited imgBtn: TImageList
    Bitmap = {
      494C01010B006800780010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      'SELECT STK_CD,'
      
        '       (SELECT CODE_VALUE_NM FROM CODE_MST WHERE CODE_ID = %s AN' +
        'D CODE_VALUE = A.BS_TP) AS BS_TP,'
      '       SUM(NCLR_POS_QTY) AS NCLR_POS_QTY'
      'FROM NCLR_POS A'
      'WHERE API_TP = '#39'R'#39
      'GROUP BY STK_CD,BS_TP')
    FetchRows = 50
    SpecificOptions.Strings = (
      'SQL Server.FetchAll=False')
    Left = 56
    Top = 136
    object dbMainSTK_CD: TStringField
      FieldName = 'STK_CD'
      Required = True
      Size = 10
    end
    object dbMainBS_TP: TStringField
      FieldName = 'BS_TP'
      FixedChar = True
      Size = 1
    end
    object dbMainNCLR_POS_QTY: TIntegerField
      FieldName = 'NCLR_POS_QTY'
      ReadOnly = True
    end
  end
  inherited dsMain: TDataSource
    Left = 96
    Top = 136
  end
  inherited dbPart: TUniQuery
    Left = 161
  end
  object dbNclr: TUniQuery
    Connection = MastDB.UniConnection
    SQL.Strings = (
      'SELECT STK_CD,'
      
        '       (SELECT CODE_VALUE_NM FROM CODE_MST WHERE CODE_ID = %s AN' +
        'D CODE_VALUE = A.BS_TP) AS BS_TP,'
      '       SUM(NCLR_POS_QTY) AS NCLR_POS_QTY'
      'FROM NCLR_POS A'
      'WHERE API_TP = '#39'V'#39
      'GROUP BY STK_CD,BS_TP')
    FetchRows = 50
    SpecificOptions.Strings = (
      'SQL Server.FetchAll=False')
    Left = 48
    Top = 352
    object dbNclrSTK_CD: TStringField
      FieldName = 'STK_CD'
      Required = True
      Size = 10
    end
    object dbNclrBS_TP: TStringField
      FieldName = 'BS_TP'
      FixedChar = True
      Size = 1
    end
    object dbNclrNCLR_POS_QTY: TIntegerField
      FieldName = 'NCLR_POS_QTY'
      ReadOnly = True
    end
  end
  object dsNclr: TDataSource
    DataSet = dbNclr
    Left = 88
    Top = 352
  end
  object dbNclrListR: TUniQuery
    Connection = MastDB.UniConnection
    SQL.Strings = (
      'SELECT A.STK_CD,'
      
        '       (SELECT CODE_VALUE_NM FROM CODE_MST WHERE CODE_ID = '#39'BS_T' +
        'P'#39' AND CODE_VALUE = A.BS_TP) AS BS_TP,'
      '       A.NCLR_POS_QTY,'
      '       A.AVG_PRC,'
      '       B.USER_NM,'
      
        '       CASE WHEN B.OVERNGT_YN = '#39'1'#39' THEN '#39#46041#49884#39' WHEN B.OVERNGT_YN ' +
        '= '#39'2'#39' THEN '#39#50724#48260#39' END OVERNGT_YN  '
      'FROM NCLR_POS A,'
      '     ACNT_MST B'
      'WHERE A.ACNT_NO = B.ACNT_NO'
      'AND A.API_TP = '#39'R'#39)
    FetchRows = 50
    SpecificOptions.Strings = (
      'SQL Server.FetchAll=False')
    Left = 312
    Top = 152
    object dbNclrListRSTK_CD: TStringField
      FieldName = 'STK_CD'
      Required = True
      Size = 10
    end
    object dbNclrListRBS_TP: TStringField
      FieldName = 'BS_TP'
      ReadOnly = True
    end
    object dbNclrListRNCLR_POS_QTY: TIntegerField
      FieldName = 'NCLR_POS_QTY'
    end
    object dbNclrListRAVG_PRC: TFloatField
      FieldName = 'AVG_PRC'
    end
    object dbNclrListRUSER_NM: TStringField
      FieldName = 'USER_NM'
      ReadOnly = True
      Required = True
    end
    object dbNclrListROVERNGT_YN: TStringField
      FieldName = 'OVERNGT_YN'
      ReadOnly = True
      Size = 4
    end
  end
  object dsNclrListR: TDataSource
    DataSet = dbNclrListR
    Left = 368
    Top = 152
  end
  object dbNclrListV: TUniQuery
    Connection = MastDB.UniConnection
    SQL.Strings = (
      'SELECT A.STK_CD,'
      
        '       (SELECT CODE_VALUE_NM FROM CODE_MST WHERE CODE_ID = '#39'BS_T' +
        'P'#39' AND CODE_VALUE = A.BS_TP) AS BS_TP,'
      '       A.NCLR_POS_QTY,'
      '       A.AVG_PRC,'
      '       B.USER_NM,'
      
        '       CASE WHEN B.OVERNGT_YN = '#39'1'#39' THEN '#39#46041#49884#39' WHEN B.OVERNGT_YN ' +
        '= '#39'2'#39' THEN '#39#50724#48260#39' END OVERNGT_YN  '
      'FROM NCLR_POS A,'
      '     ACNT_MST B'
      'WHERE A.ACNT_NO = B.ACNT_NO'
      'AND A.API_TP = '#39'V'#39)
    FetchRows = 50
    SpecificOptions.Strings = (
      'SQL Server.FetchAll=False')
    Left = 320
    Top = 416
    object dbNclrListVSTK_CD: TStringField
      FieldName = 'STK_CD'
      Required = True
      Size = 10
    end
    object dbNclrListVBS_TP: TStringField
      FieldName = 'BS_TP'
      ReadOnly = True
    end
    object dbNclrListVNCLR_POS_QTY: TIntegerField
      FieldName = 'NCLR_POS_QTY'
    end
    object dbNclrListVAVG_PRC: TFloatField
      FieldName = 'AVG_PRC'
    end
    object dbNclrListVUSER_NM: TStringField
      FieldName = 'USER_NM'
      ReadOnly = True
      Required = True
    end
    object dbNclrListVOVERNGT_YN: TStringField
      FieldName = 'OVERNGT_YN'
      ReadOnly = True
      Size = 4
    end
    object dbNclrListVNCLR_POS_QTY1: TIntegerField
      FieldName = 'LEVERAGE'
    end
  end
  object dsNclrListV: TDataSource
    DataSet = dbNclrListV
    Left = 376
    Top = 416
  end
  object dbMitR: TUniQuery
    Connection = MastDB.UniConnection
    SQL.Strings = (
      'SELECT B.USER_NM,'
      '       A.STK_CD,'
      
        '       (SELECT CODE_VALUE_NM FROM CODE_MST WHERE CODE_ID = '#39'BS_T' +
        'P'#39' AND CODE_VALUE = A.BS_TP) AS BS_TP,'
      '       A.REMN_QTY,'
      '       A.MIT_PRC   '
      'FROM ORD A,'
      '     ACNT_MST B'
      'WHERE A.ACNT_NO = B.ACNT_NO '
      'AND A.COND_TP = '#39'1'#39
      'AND A.REMN_QTY > 0'
      'AND A.API_TP = '#39'R'#39)
    FetchRows = 50
    SpecificOptions.Strings = (
      'SQL Server.FetchAll=False')
    Left = 1208
    Top = 152
    object dbMitRUSER_NM: TStringField
      FieldName = 'USER_NM'
      Required = True
    end
    object dbMitRSTK_CD: TStringField
      FieldName = 'STK_CD'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object dbMitRBS_TP: TStringField
      FieldName = 'BS_TP'
      ReadOnly = True
    end
    object dbMitRREMN_QTY: TIntegerField
      FieldName = 'REMN_QTY'
      ReadOnly = True
    end
    object dbMitRMIT_PRC: TFloatField
      FieldName = 'MIT_PRC'
      ReadOnly = True
    end
  end
  object dsMitR: TDataSource
    DataSet = dbMitR
    Left = 1256
    Top = 152
  end
  object dbMitV: TUniQuery
    Connection = MastDB.UniConnection
    SQL.Strings = (
      'SELECT B.USER_NM,'
      '       A.STK_CD,'
      
        '       (SELECT CODE_VALUE_NM FROM CODE_MST WHERE CODE_ID = '#39'BS_T' +
        'P'#39' AND CODE_VALUE = A.BS_TP) AS BS_TP,'
      '       A.REMN_QTY,'
      '       A.MIT_PRC   '
      'FROM ORD A,'
      '     ACNT_MST B'
      'WHERE A.ACNT_NO = B.ACNT_NO '
      'AND A.COND_TP = '#39'1'#39
      'AND A.REMN_QTY > 0'
      'AND A.API_TP = '#39'V'#39)
    FetchRows = 50
    SpecificOptions.Strings = (
      'SQL Server.FetchAll=False')
    Left = 1200
    Top = 392
    object dbMitVUSER_NM: TStringField
      FieldName = 'USER_NM'
      Required = True
    end
    object dbMitVSTK_CD: TStringField
      FieldName = 'STK_CD'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object dbMitVBS_TP: TStringField
      FieldName = 'BS_TP'
      ReadOnly = True
    end
    object dbMitVREMN_QTY: TIntegerField
      FieldName = 'REMN_QTY'
      ReadOnly = True
    end
    object dbMitVMIT_PRC: TFloatField
      FieldName = 'MIT_PRC'
      ReadOnly = True
    end
    object dbMitVLEVERAGE: TIntegerField
      FieldName = 'LEVERAGE'
    end
  end
  object dsMitV: TDataSource
    DataSet = dbMitV
    Left = 1240
    Top = 392
  end
  object dbNoCntrR: TUniQuery
    Connection = MastDB.UniConnection
    SQL.Strings = (
      'SELECT B.USER_NM,'
      '       A.STK_CD,'
      
        '       (SELECT CODE_VALUE_NM FROM CODE_MST WHERE CODE_ID = '#39'BS_T' +
        'P'#39' AND CODE_VALUE = A.BS_TP) AS BS_TP,'
      '       A.REMN_QTY,'
      '       A.ORD_PRC'
      'FROM ORD A,'
      '     ACNT_MST B'
      'WHERE A.ACNT_NO = B.ACNT_NO '
      'AND A.COND_TP <> '#39'1'#39
      'AND A.REMN_QTY > 0'
      'AND A.API_TP = '#39'R'#39
      'ORDER BY B.USER_NM DESC, A.STK_CD DESC')
    FetchRows = 50
    SpecificOptions.Strings = (
      'SQL Server.FetchAll=False')
    Left = 752
    Top = 128
    object dbNoCntrRUSER_NM: TStringField
      FieldName = 'USER_NM'
      Required = True
    end
    object dbNoCntrRSTK_CD: TStringField
      FieldName = 'STK_CD'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object dbNoCntrRBS_TP: TStringField
      FieldName = 'BS_TP'
      ReadOnly = True
    end
    object dbNoCntrRREMN_QTY: TIntegerField
      FieldName = 'REMN_QTY'
      ReadOnly = True
    end
    object dbNoCntrRORD_PRC: TFloatField
      FieldName = 'ORD_PRC'
      ReadOnly = True
    end
  end
  object dsNoCntrR: TDataSource
    DataSet = dbNoCntrR
    Left = 800
    Top = 128
  end
  object dbNoCntrV: TUniQuery
    Connection = MastDB.UniConnection
    SQL.Strings = (
      'SELECT B.USER_NM,'
      '       A.STK_CD,'
      
        '       (SELECT CODE_VALUE_NM FROM CODE_MST WHERE CODE_ID = '#39'BS_T' +
        'P'#39' AND CODE_VALUE = A.BS_TP) AS BS_TP,'
      '       A.REMN_QTY,'
      '       A.ORD_PRC'
      'FROM ORD A,'
      '     ACNT_MST B'
      'WHERE A.ACNT_NO = B.ACNT_NO '
      'AND A.COND_TP <> '#39'1'#39
      'AND A.REMN_QTY > 0'
      'AND A.API_TP = '#39'V'#39
      'ORDER BY B.USER_NM DESC, A.STK_CD DESC')
    FetchRows = 50
    SpecificOptions.Strings = (
      'SQL Server.FetchAll=False')
    Left = 760
    Top = 416
    object dbNoCntrVUSER_NM: TStringField
      FieldName = 'USER_NM'
      Required = True
    end
    object dbNoCntrVSTK_CD: TStringField
      FieldName = 'STK_CD'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object dbNoCntrVBS_TP: TStringField
      FieldName = 'BS_TP'
      ReadOnly = True
    end
    object dbNoCntrVREMN_QTY: TIntegerField
      FieldName = 'REMN_QTY'
      ReadOnly = True
    end
    object dbNoCntrVORD_PRC: TFloatField
      FieldName = 'ORD_PRC'
      ReadOnly = True
    end
    object dbNoCntrVLEVERAGE: TIntegerField
      FieldName = 'LEVERAGE'
    end
  end
  object dsNoCntrV: TDataSource
    DataSet = dbNoCntrV
    Left = 816
    Top = 416
  end
  object tmAuto: TThreadedTimer
    Interval = 30000
    OnTimer = tmAutoTimer
    Left = 128
    Top = 200
  end
end
