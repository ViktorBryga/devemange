inherited BugManageDlg: TBugManageDlg
  Left = 93
  Top = 142
  Width = 1099
  Height = 834
  Caption = #38169#35823#31649#29702
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 15
  object plCenter: TPanel
    Left = 0
    Top = 95
    Width = 1091
    Height = 705
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pcBug: TPageControl
      Left = 0
      Top = 0
      Width = 1091
      Height = 705
      ActivePage = tsBugItem
      Align = alClient
      TabOrder = 0
      OnChanging = pcBugChanging
      object tsBugItem: TTabSheet
        Caption = #38382#39064#21015#34920
        object Splitter1: TSplitter
          Left = 189
          Top = 0
          Width = 10
          Height = 675
          Beveled = True
          ResizeStyle = rsLine
        end
        object tvProject: TTreeView
          Left = 0
          Top = 0
          Width = 189
          Height = 675
          Align = alLeft
          HideSelection = False
          Images = DM.ImageListTree
          Indent = 19
          PopupMenu = pmBugTree
          ReadOnly = True
          TabOrder = 0
          OnChange = tvProjectChange
          OnChanging = tvProjectChanging
          OnExpanding = tvProjectExpanding
        end
        object plBugList: TPanel
          Left = 199
          Top = 0
          Width = 884
          Height = 675
          Align = alClient
          BevelOuter = bvNone
          Caption = 'plBugList'
          TabOrder = 1
          object lbProjectName: TLabel
            Left = 0
            Top = 40
            Width = 884
            Height = 15
            Align = alTop
            Caption = 'lbProjectName'
            Color = clGray
            Font.Charset = GB2312_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object dgBugItem: TDBGrid
            Left = 0
            Top = 55
            Width = 884
            Height = 580
            Align = alClient
            DataSource = dsBugItem
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            PopupMenu = pmBugItem
            TabOrder = 0
            TitleFont.Charset = GB2312_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = #23435#20307
            TitleFont.Style = []
            OnDrawColumnCell = dgBugItemDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'ZID'
                Title.Alignment = taCenter
                Title.Caption = #32534#21495
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ZTITLE'
                Title.Alignment = taCenter
                Title.Caption = #38382#39064
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ZBUGTYPE'
                Title.Alignment = taCenter
                Title.Caption = #31867#22411
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ZOPENEDNAME'
                Title.Alignment = taCenter
                Title.Caption = #30001#35841#21019#24314
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ZOPENEDDATE'
                Title.Alignment = taCenter
                Title.Caption = #21019#24314#26102#38388
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ZASSIGNEDNAME'
                Title.Alignment = taCenter
                Title.Caption = #25351#27966#32473
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ZRESOLVEDNAME'
                Title.Alignment = taCenter
                Title.Caption = #30001#35841#35299#20915
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ZRESOLUTIONNAME'
                Title.Alignment = taCenter
                Title.Caption = #35299#20915#26041#26696
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ZRESOLVEDDATE'
                Title.Alignment = taCenter
                Title.Caption = #35299#20915#26102#38388
                Width = 150
                Visible = True
              end>
          end
          object plBugTop: TPanel
            Left = 0
            Top = 0
            Width = 884
            Height = 40
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Label20: TLabel
              Left = 583
              Top = 12
              Width = 8
              Height = 15
              Caption = '='
            end
            object BitBtn3: TBitBtn
              Left = 11
              Top = 8
              Width = 100
              Height = 25
              Action = actBug_AddBug
              Caption = #21457#29616#26032#38382#39064
              TabOrder = 0
            end
            object BitBtn15: TBitBtn
              Left = 120
              Top = 8
              Width = 100
              Height = 25
              Action = actBug_MeBuild
              Caption = #30001#25105#21019#24314
              TabOrder = 1
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
                00000EEEEEEEEEEEEEE00EEEEEEEEEEEEEE00EEEEEEEEEEEEEE00EEEEEEEEEEE
                EEE00EEEEEEEEEEEEEE00EEEEEEEEEEEEEE00EEEEEEEEEEEEEE00EEEEEEEEEEE
                EEE00EEEEEEEEEEEEEE00EEEEEEEEEEEEEE00EEEEEEEEEEEEEE00EEEEEEEEEEE
                EEE00EEEEEEEEEEEEEE00EEEEEEEEEEEEEE00000000000000000}
            end
            object BitBtn16: TBitBtn
              Left = 229
              Top = 8
              Width = 100
              Height = 25
              Action = actBug_AssingToMe
              Caption = #25351#27966#32473#25105
              TabOrder = 2
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00FF00FF00FF00FF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00FF00FF00FF00FF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00FF00FF00FF00FF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00FF00FF00FF00FF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00FF00FF00FF00FF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00FF00FF00FF00FF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00FF00FF00FF00FF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00FF00FF00FF00FF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00FF00FF00FF00FF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00FF00FF00FF00FF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00FF00FF00FF00FF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00FF00FF00FF00FF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00FF00FF00FF00FF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            end
            object BitBtn17: TBitBtn
              Left = 340
              Top = 8
              Width = 100
              Height = 25
              Action = actBug_ResoMe
              Caption = #30001#25105#35299#20915
              TabOrder = 3
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
                000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
                000000FF000000FF000000FF000000FF000000FF0000FF00FF00FF00FF0000FF
                000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
                000000FF000000FF000000FF000000FF000000FF0000FF00FF00FF00FF0000FF
                000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
                000000FF000000FF000000FF000000FF000000FF0000FF00FF00FF00FF0000FF
                000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
                000000FF000000FF000000FF000000FF000000FF0000FF00FF00FF00FF0000FF
                000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
                000000FF000000FF000000FF000000FF000000FF0000FF00FF00FF00FF0000FF
                000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
                000000FF000000FF000000FF000000FF000000FF0000FF00FF00FF00FF0000FF
                000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
                000000FF000000FF000000FF000000FF000000FF0000FF00FF00FF00FF0000FF
                000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
                000000FF000000FF000000FF000000FF000000FF0000FF00FF00FF00FF0000FF
                000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
                000000FF000000FF000000FF000000FF000000FF0000FF00FF00FF00FF0000FF
                000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
                000000FF000000FF000000FF000000FF000000FF0000FF00FF00FF00FF0000FF
                000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
                000000FF000000FF000000FF000000FF000000FF0000FF00FF00FF00FF0000FF
                000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
                000000FF000000FF000000FF000000FF000000FF0000FF00FF00FF00FF0000FF
                000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
                000000FF000000FF000000FF000000FF000000FF0000FF00FF00FF00FF0000FF
                000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
                000000FF000000FF000000FF000000FF000000FF0000FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            end
            object cbFindVer: TComboBox
              Left = 448
              Top = 9
              Width = 132
              Height = 23
              Style = csDropDownList
              Color = clSkyBlue
              ItemHeight = 15
              TabOrder = 4
              Items.Strings = (
                ''
                #20986#29616#38382#39064#30340#29256#26412
                #35299#20915#38382#39064#30340#29256#26412)
            end
            object DBLookupComboBox7: TDBLookupComboBox
              Left = 595
              Top = 9
              Width = 111
              Height = 23
              Color = clSkyBlue
              KeyField = 'ZID'
              ListField = 'ZVER'
              ListSource = dsProject
              TabOrder = 5
            end
            object cbSort: TComboBox
              Left = 716
              Top = 9
              Width = 102
              Height = 23
              Hint = #25353#20160#20040#25490#24207
              Style = csDropDownList
              Color = clSkyBlue
              ItemHeight = 15
              ItemIndex = 0
              TabOrder = 6
              Text = #32534#21495
              Items.Strings = (
                #32534#21495
                #26368#21518#20462#25913#26102#38388)
            end
          end
          object plBugItemBottom: TPanel
            Left = 0
            Top = 635
            Width = 884
            Height = 40
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object lbPageCount: TLabel
              Left = 497
              Top = 13
              Width = 88
              Height = 15
              Caption = 'lbPageCount'
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object BitBtn11: TBitBtn
              Left = 19
              Top = 8
              Width = 100
              Height = 25
              Action = actBug_FirstPage
              Caption = #31532#19968#39029
              TabOrder = 0
            end
            object BitBtn1: TBitBtn
              Left = 133
              Top = 8
              Width = 100
              Height = 25
              Action = actBug_PrivPage
              Caption = #19978#19968#39029
              TabOrder = 1
            end
            object BitBtn2: TBitBtn
              Left = 243
              Top = 8
              Width = 100
              Height = 25
              Action = actBug_NewPage
              Caption = #19979#19968#39029
              TabOrder = 2
            end
            object BitBtn6: TBitBtn
              Left = 355
              Top = 8
              Width = 100
              Height = 25
              Action = actBug_LastPage
              Caption = #26368#21518#19968#39029
              TabOrder = 3
            end
          end
        end
      end
      object tsBugContext: TTabSheet
        Caption = #38382#39064#20869#23481
        ImageIndex = 1
        object lbBugCaption: TLabel
          Left = 0
          Top = 0
          Width = 1083
          Height = 15
          Align = alTop
          Caption = 'lbBugCaption'
          Color = clGray
          Font.Charset = GB2312_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Splitter2: TSplitter
          Left = 0
          Top = 215
          Width = 1083
          Height = 10
          Cursor = crVSplit
          Align = alTop
          Beveled = True
          ResizeStyle = rsLine
        end
        object ScrollBox1: TScrollBox
          Left = 0
          Top = 15
          Width = 1083
          Height = 200
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 16
            Top = 82
            Width = 68
            Height = 15
            Caption = #25805#20316#31995#32479':'
          end
          object Label3: TLabel
            Left = 16
            Top = 51
            Width = 75
            Height = 15
            Caption = #38382#39064#26631#39064#65306
          end
          object Label4: TLabel
            Left = 18
            Top = 15
            Width = 77
            Height = 15
            Caption = #39033'    '#30446#65306
          end
          object Label5: TLabel
            Left = 447
            Top = 14
            Width = 105
            Height = 15
            Caption = #20986#38382#39064#30340#29256#26412#65306
          end
          object Label2: TLabel
            Left = 249
            Top = 80
            Width = 75
            Height = 15
            Caption = #38382#39064#31561#32423#65306
          end
          object Label6: TLabel
            Left = 480
            Top = 80
            Width = 75
            Height = 15
            Caption = #38382#39064#31867#22411#65306
          end
          object Label7: TLabel
            Left = 27
            Top = 111
            Width = 60
            Height = 15
            Caption = #25351#27966#32473#65306
          end
          object Label8: TLabel
            Left = 18
            Top = 140
            Width = 75
            Height = 15
            Caption = #37038#20214#36890#30693#65306
          end
          object Label14: TLabel
            Left = 248
            Top = 111
            Width = 75
            Height = 15
            Caption = #25351#27966#26102#38388#65306
          end
          object Label16: TLabel
            Left = 27
            Top = 172
            Width = 60
            Height = 15
            Caption = #35299#20915#20154#65306
          end
          object Label17: TLabel
            Left = 252
            Top = 172
            Width = 75
            Height = 15
            Caption = #35299#20915#26041#26696#65306
          end
          object Label18: TLabel
            Left = 483
            Top = 172
            Width = 75
            Height = 15
            Caption = #35299#20915#29256#26412#65306
          end
          object Label15: TLabel
            Left = 479
            Top = 111
            Width = 75
            Height = 15
            Caption = #35299#20915#26102#38388#65306
          end
          object Label19: TLabel
            Left = 523
            Top = 143
            Width = 24
            Height = 15
            Caption = '<<<'
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 87
            Top = 77
            Width = 145
            Height = 23
            DataField = 'ZOS'
            DataSource = dsBugItem
            KeyField = 'ZID'
            ListField = 'ZNAME'
            ListSource = DM.dsOS
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 88
            Top = 12
            Width = 345
            Height = 23
            Color = clMenuBar
            DataField = 'ZTREEPATH'
            DataSource = dsBugItem
            ReadOnly = True
            TabOrder = 1
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 547
            Top = 12
            Width = 145
            Height = 23
            DataField = 'ZOPENVER'
            DataSource = dsBugItem
            KeyField = 'ZID'
            ListField = 'ZVER'
            ListSource = dsProject
            TabOrder = 2
          end
          object DBEdit1: TDBEdit
            Left = 88
            Top = 47
            Width = 600
            Height = 23
            DataField = 'ZTITLE'
            DataSource = dsBugItem
            TabOrder = 3
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 320
            Top = 77
            Width = 145
            Height = 23
            DataField = 'ZLEVEL'
            DataSource = dsBugItem
            KeyField = 'ZID'
            ListField = 'ZNAME'
            ListSource = dsBugLevel
            TabOrder = 4
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 549
            Top = 77
            Width = 145
            Height = 23
            DataField = 'ZTYPE'
            DataSource = dsBugItem
            KeyField = 'ZID'
            ListField = 'ZNAME'
            ListSource = dsBugType
            TabOrder = 5
          end
          object BitBtn4: TBitBtn
            Left = 728
            Top = 10
            Width = 100
            Height = 25
            Action = actBugItem_Save
            Caption = #20445#23384
            TabOrder = 6
          end
          object BitBtn5: TBitBtn
            Left = 728
            Top = 43
            Width = 100
            Height = 25
            Action = actBugItem_Cancel
            Caption = #21462#28040
            TabOrder = 7
          end
          object DBLookupComboBox5: TDBLookupComboBox
            Left = 87
            Top = 108
            Width = 145
            Height = 23
            DataField = 'ZASSIGNEDTO'
            DataSource = dsBugItem
            KeyField = 'ZID'
            ListField = 'ZNAME'
            ListSource = DM.dsUsers
            TabOrder = 8
          end
          object DBEdit3: TDBEdit
            Left = 86
            Top = 138
            Width = 433
            Height = 23
            Hint = #22810#20010#20197#20998#21495#20998#24320
            DataField = 'ZMAILTO'
            DataSource = dsBugItem
            TabOrder = 9
          end
          object DBEdit4: TDBEdit
            Left = 318
            Top = 108
            Width = 146
            Height = 23
            DataField = 'ZASSIGNEDDATE'
            DataSource = dsBugItem
            TabOrder = 10
          end
          object DBEdit5: TDBEdit
            Left = 85
            Top = 170
            Width = 146
            Height = 23
            Color = clScrollBar
            DataField = 'ZRESOLVEDNAME'
            DataSource = dsBugItem
            ReadOnly = True
            TabOrder = 11
          end
          object DBEdit6: TDBEdit
            Left = 322
            Top = 170
            Width = 142
            Height = 23
            Color = clScrollBar
            DataField = 'ZRESOLUTIONNAME'
            DataSource = dsBugItem
            ReadOnly = True
            TabOrder = 12
          end
          object DBLookupComboBox6: TDBLookupComboBox
            Left = 553
            Top = 169
            Width = 144
            Height = 23
            Color = clScrollBar
            DataField = 'ZRESOLVEDVER'
            DataSource = dsBugItem
            KeyField = 'ZID'
            ListField = 'ZVER'
            ListSource = dsProject
            ReadOnly = True
            TabOrder = 13
          end
          object BitBtn13: TBitBtn
            Left = 728
            Top = 75
            Width = 100
            Height = 25
            Action = actBugHistory_PrivBug
            Caption = #19978#19968#20010#38382#39064
            TabOrder = 14
          end
          object BitBtn14: TBitBtn
            Left = 728
            Top = 106
            Width = 100
            Height = 25
            Action = actBugHistory_NextBug
            Caption = #19979#19968#20010#38382#39064
            TabOrder = 15
          end
          object DBEdit7: TDBEdit
            Left = 551
            Top = 108
            Width = 141
            Height = 23
            DataField = 'ZRESOLVEDDATE'
            DataSource = dsBugItem
            TabOrder = 16
          end
          object dblcSelectUsermail: TDBLookupComboBox
            Left = 551
            Top = 138
            Width = 144
            Height = 23
            KeyField = 'ZID'
            ListField = 'ZNAME'
            ListSource = DM.dsUsers
            TabOrder = 17
            OnCloseUp = dblcSelectUsermailCloseUp
          end
        end
        object plBugHistory: TPanel
          Left = 0
          Top = 225
          Width = 1083
          Height = 450
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object plBugHistoryTop: TPanel
            Left = 0
            Top = 0
            Width = 1083
            Height = 40
            Align = alTop
            BevelOuter = bvNone
            Color = clGray
            TabOrder = 0
            object Label13: TLabel
              Left = 15
              Top = 13
              Width = 45
              Height = 15
              Caption = #21160#20316#65306
              Font.Charset = GB2312_CHARSET
              Font.Color = clWhite
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Bevel1: TBevel
              Left = 397
              Top = 5
              Width = 9
              Height = 31
              Shape = bsLeftLine
            end
            object BitBtn7: TBitBtn
              Left = 60
              Top = 8
              Width = 100
              Height = 25
              Action = actBugHistory_Add
              Caption = #25105#35201#22238#22797
              TabOrder = 0
            end
            object BitBtn10: TBitBtn
              Left = 285
              Top = 8
              Width = 100
              Height = 25
              Action = actBugHistory_ReSet
              Caption = #28608#27963#38382#39064
              TabOrder = 1
            end
            object BitBtn8: TBitBtn
              Left = 419
              Top = 8
              Width = 100
              Height = 25
              Action = actBugHistory_Save
              Caption = #22238#22797#20445#23384
              TabOrder = 2
            end
            object BitBtn9: TBitBtn
              Left = 171
              Top = 8
              Width = 100
              Height = 25
              Action = actBugHistory_Resolu
              Caption = #25105#35299#20915#20102
              TabOrder = 3
            end
            object BitBtn12: TBitBtn
              Left = 531
              Top = 7
              Width = 100
              Height = 25
              Action = actBugHistory_Cancel
              Caption = #22238#22797#25764#28040
              TabOrder = 4
            end
          end
          object Panel1: TPanel
            Left = 0
            Top = 40
            Width = 1083
            Height = 410
            Align = alClient
            BevelOuter = bvLowered
            Caption = 'Panel1'
            TabOrder = 1
            object dbcBugHistory: TDBCtrlGrid
              Left = 1
              Top = 1
              Width = 1081
              Height = 408
              Align = alClient
              AllowDelete = False
              AllowInsert = False
              DataSource = dsBugBugHistory
              PanelHeight = 102
              PanelWidth = 1064
              TabOrder = 0
              RowCount = 4
              SelectedColor = clMedGray
              object DBText1: TDBText
                Left = 67
                Top = 3
                Width = 186
                Height = 17
                Color = clBtnFace
                DataField = 'ZUSERNAME'
                DataSource = dsBugBugHistory
                Font.Charset = GB2312_CHARSET
                Font.Color = clBlack
                Font.Height = -15
                Font.Name = #23435#20307
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object DBText2: TDBText
                Left = 350
                Top = 3
                Width = 193
                Height = 17
                Color = clBtnFace
                DataField = 'ZACTIONDATE'
                DataSource = dsBugBugHistory
                Font.Charset = GB2312_CHARSET
                Font.Color = clBlack
                Font.Height = -15
                Font.Name = #23435#20307
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label9: TLabel
                Left = 304
                Top = 4
                Width = 38
                Height = 15
                Caption = #26085#26399':'
              end
              object Label10: TLabel
                Left = 7
                Top = 4
                Width = 60
                Height = 15
                Caption = #22238#22797#20154#65306
              end
              object Label11: TLabel
                Left = 301
                Top = 79
                Width = 38
                Height = 15
                Anchors = [akLeft, akBottom]
                Caption = #38468#20214':'
              end
              object DBText3: TDBText
                Left = 349
                Top = 79
                Width = 476
                Height = 17
                Cursor = crHandPoint
                Hint = #21452#20987#25171#24320#38468#20214
                Anchors = [akLeft, akBottom]
                Color = clBtnFace
                DataField = 'ZANNEXFILENAME'
                DataSource = dsBugBugHistory
                Font.Charset = GB2312_CHARSET
                Font.Color = clBlue
                Font.Height = -15
                Font.Name = #23435#20307
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
                OnDblClick = DBText3DblClick
              end
              object Label12: TLabel
                Left = 7
                Top = 78
                Width = 45
                Height = 15
                Anchors = [akLeft, akBottom]
                Caption = #29366#24577#65306
              end
              object DBText4: TDBText
                Left = 52
                Top = 78
                Width = 195
                Height = 17
                Anchors = [akLeft, akBottom]
                Color = clBtnFace
                DataField = 'ZSTATUSNAME'
                DataSource = dsBugBugHistory
                Font.Charset = GB2312_CHARSET
                Font.Color = clBlack
                Font.Height = -15
                Font.Name = #23435#20307
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object DBText5: TDBText
                Left = 1028
                Top = 3
                Width = 25
                Height = 16
                Alignment = taCenter
                Anchors = [akTop, akRight]
                Color = clTeal
                DataField = 'ZNO'
                DataSource = dsBugBugHistory
                Font.Charset = GB2312_CHARSET
                Font.Color = clYellow
                Font.Height = -15
                Font.Name = #23435#20307
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object DBMemo1: TDBMemo
                Left = 7
                Top = 22
                Width = 1046
                Height = 52
                Anchors = [akLeft, akTop, akRight, akBottom]
                DataField = 'ZCONTEXT'
                DataSource = dsBugBugHistory
                ScrollBars = ssVertical
                TabOrder = 0
              end
            end
          end
        end
      end
    end
  end
  object plnovisible: TPanel
    Left = 0
    Top = 0
    Width = 1091
    Height = 95
    Align = alTop
    Alignment = taRightJustify
    Caption = #19981#21487#35270
    TabOrder = 1
    Visible = False
  end
  object cdsBugTree: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 112
    Top = 16
  end
  object ActionList1: TActionList
    Images = DM.ImageList1
    Left = 48
    Top = 16
    object actBug_AddDir: TAction
      Category = #38382#39064#21015#34920
      Caption = #22686#21152#39033#30446
      OnExecute = actBug_AddDirExecute
    end
    object actBugHistory_Cancel: TAction
      Category = #38382#39064#20869#23481
      Caption = #22238#22797#25764#28040
      OnExecute = actBugHistory_CancelExecute
      OnUpdate = actBugHistory_CancelUpdate
    end
    object actBug_Del: TAction
      Category = #38382#39064#21015#34920
      Caption = #21024#38500#39033#30446
      OnExecute = actBug_DelExecute
      OnUpdate = actBug_DelUpdate
    end
    object actBug_Update: TAction
      Category = #38382#39064#21015#34920
      Caption = #20462#25913#39033#30446
      OnExecute = actBug_UpdateExecute
      OnUpdate = actBug_UpdateUpdate
    end
    object actBug_NewPage: TAction
      Category = #38382#39064#21015#34920
      Caption = #19979#19968#39029
      OnExecute = actBug_NewPageExecute
      OnUpdate = actBug_NewPageUpdate
    end
    object actBug_PrivPage: TAction
      Category = #38382#39064#21015#34920
      Caption = #19978#19968#39029
      OnExecute = actBug_PrivPageExecute
      OnUpdate = actBug_PrivPageUpdate
    end
    object actBug_FirstPage: TAction
      Category = #38382#39064#21015#34920
      Caption = #31532#19968#39029
      Hint = #31532#19968#39029
      OnExecute = actBug_FirstPageExecute
      OnUpdate = actBug_FirstPageUpdate
    end
    object actBugHistory_Save: TAction
      Category = #38382#39064#20869#23481
      Caption = #22238#22797#20445#23384
      OnExecute = actBugHistory_SaveExecute
      OnUpdate = actBugHistory_SaveUpdate
    end
    object actBug_LastPage: TAction
      Category = #38382#39064#21015#34920
      Caption = #26368#21518#19968#39029
      OnExecute = actBug_LastPageExecute
      OnUpdate = actBug_LastPageUpdate
    end
    object actBug_AddBug: TAction
      Category = #38382#39064#21015#34920
      Caption = #21457#29616#26032#38382#39064
      OnExecute = actBug_AddBugExecute
      OnUpdate = actBug_AddBugUpdate
    end
    object actBugItem_Save: TAction
      Category = #38382#39064#20869#23481
      Caption = #20445#23384
      OnExecute = actBugItem_SaveExecute
      OnUpdate = actBugItem_SaveUpdate
    end
    object actBugItem_Cancel: TAction
      Category = #38382#39064#20869#23481
      Caption = #21462#28040
      OnExecute = actBugItem_CancelExecute
      OnUpdate = actBugItem_CancelUpdate
    end
    object actBugHistory_Add: TAction
      Category = #38382#39064#20869#23481
      Caption = #25105#35201#22238#22797
      OnExecute = actBugHistory_AddExecute
      OnUpdate = actBugHistory_AddUpdate
    end
    object actBugHistory_Resolu: TAction
      Category = #38382#39064#20869#23481
      Caption = #25105#35299#20915#20102
      OnExecute = actBugHistory_ResoluExecute
      OnUpdate = actBugHistory_ResoluUpdate
    end
    object actBugHistory_ReSet: TAction
      Category = #38382#39064#20869#23481
      Caption = #28608#27963#38382#39064
      OnExecute = actBugHistory_ReSetExecute
      OnUpdate = actBugHistory_ReSetUpdate
    end
    object actBugHistory_PrivBug: TAction
      Category = #38382#39064#20869#23481
      Caption = #19978#19968#20010#38382#39064
      OnExecute = actBugHistory_PrivBugExecute
      OnUpdate = actBugHistory_PrivBugUpdate
    end
    object actBugHistory_NextBug: TAction
      Category = #38382#39064#20869#23481
      Caption = #19979#19968#20010#38382#39064
      OnExecute = actBugHistory_NextBugExecute
      OnUpdate = actBugHistory_NextBugUpdate
    end
    object actBug_MeBuild: TAction
      Category = #38382#39064#21015#34920
      Caption = #30001#25105#21019#24314
      Hint = #26174#31034#30001#25105#21019#24314#30340#25152#26377#38382#39064
      ImageIndex = 0
      OnExecute = actBug_MeBuildExecute
    end
    object actBug_AssingToMe: TAction
      Category = #38382#39064#21015#34920
      Caption = #25351#27966#32473#25105
      ImageIndex = 1
      OnExecute = actBug_AssingToMeExecute
    end
    object actBug_ResoMe: TAction
      Category = #38382#39064#21015#34920
      Caption = #30001#25105#35299#20915
      ImageIndex = 2
      OnExecute = actBug_ResoMeExecute
    end
    object actBugHistory_OpenFile: TAction
      Category = #38382#39064#20869#23481
      Caption = #25171#24320#38468#20214
      OnExecute = actBugHistory_OpenFileExecute
      OnUpdate = actBugHistory_OpenFileUpdate
    end
    object actBug_RefreshData: TAction
      Category = #38382#39064#21015#34920
      Caption = #21047#26032#25968#25454
      Hint = #37325#26032#21152#36733#25968#25454
      OnExecute = actBug_RefreshDataExecute
      OnUpdate = actBug_RefreshDataUpdate
    end
  end
  object pmBugTree: TPopupMenu
    AutoHotkeys = maManual
    Left = 16
    Top = 48
    object N10: TMenuItem
      Action = actBug_RefreshData
    end
    object N1: TMenuItem
      Action = actBug_AddDir
    end
    object N3: TMenuItem
      Action = actBug_Update
    end
    object N2: TMenuItem
      Action = actBug_Del
    end
  end
  object cdsBugItem: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforePost = cdsBugItemBeforePost
    OnNewRecord = cdsBugItemNewRecord
    Left = 144
    Top = 16
  end
  object dsBugItem: TDataSource
    DataSet = cdsBugItem
    Left = 144
    Top = 48
  end
  object pmBugItem: TPopupMenu
    AutoHotkeys = maManual
    Left = 16
    Top = 16
    object N8: TMenuItem
      Action = actBug_AddBug
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Action = actBug_FirstPage
    end
    object N6: TMenuItem
      Action = actBug_PrivPage
    end
    object N5: TMenuItem
      Action = actBug_NewPage
    end
    object N7: TMenuItem
      Action = actBug_LastPage
    end
  end
  object cdsBugType: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 16
  end
  object cdsBugPlan: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 16
  end
  object cdsBugLevel: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 264
    Top = 16
  end
  object dsBugLevel: TDataSource
    DataSet = cdsBugLevel
    Left = 265
    Top = 50
  end
  object cdsProject: TClientDataSet
    Tag = -1
    Aggregates = <>
    Params = <>
    Left = 304
    Top = 16
  end
  object dsProject: TDataSource
    DataSet = cdsProject
    Left = 304
    Top = 48
  end
  object dsBugType: TDataSource
    DataSet = cdsBugType
    Left = 184
    Top = 48
  end
  object cdsBugHistory: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforePost = cdsBugHistoryBeforePost
    OnNewRecord = cdsBugHistoryNewRecord
    Left = 336
    Top = 16
  end
  object dsBugBugHistory: TDataSource
    DataSet = cdsBugHistory
    Left = 336
    Top = 48
  end
  object dsBugPlan: TDataSource
    DataSet = cdsBugPlan
    Left = 224
    Top = 48
  end
  object cdsBugStatus: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 376
    Top = 16
  end
  object dsBugStatus: TDataSource
    DataSet = cdsBugStatus
    Left = 376
    Top = 48
  end
end