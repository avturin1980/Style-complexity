object Main_Form: TMain_Form
  Left = 195
  Top = 44
  Width = 795
  Height = 572
  Caption = 'Редактор программных модулей'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 24
    Width = 769
    Height = 497
    ActivePage = Style_computation
    MultiLine = True
    TabOrder = 0
    object Style_computation: TTabSheet
      Caption = 'Оценка стиля программирования'
      object Label5: TLabel
        Left = 16
        Top = 16
        Width = 205
        Height = 13
        Caption = 'Последний исследованный файл :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 488
        Top = 413
        Width = 198
        Height = 13
        Caption = 'Итоговый стиль программы (%) :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 480
        Top = 48
        Width = 90
        Height = 13
        Caption = 'Критерии оценки:'
      end
      object Label14: TLabel
        Left = 32
        Top = 48
        Width = 147
        Height = 13
        Caption = 'Исходный текст программы:'
      end
      object Load_f: TButton
        Left = 7
        Top = 436
        Width = 80
        Height = 25
        Hint = 'Загрузка файла для исследования'
        Caption = 'Открыть'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = Load_fClick
      end
      object Memo1: TMemo
        Left = 8
        Top = 72
        Width = 425
        Height = 329
        BiDiMode = bdRightToLeft
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Terminal'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 1
      end
      object path_to_file: TEdit
        Left = 224
        Top = 12
        Width = 529
        Height = 21
        TabOrder = 2
      end
      object Save_f: TButton
        Left = 96
        Top = 436
        Width = 80
        Height = 25
        Hint = 'Сохранение измененного файла'
        Caption = 'Сохранить'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object Analyse: TButton
        Left = 184
        Top = 436
        Width = 80
        Height = 25
        Hint = 'Анализ стиля программы'
        Caption = 'Исследовать'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        Visible = False
        OnClick = AnalyseClick
      end
      object Visual: TButton
        Left = 344
        Top = 436
        Width = 80
        Height = 25
        Hint = 'Диаграммы оценок и анализа стиля'
        Caption = 'Диаграммы'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        Visible = False
        OnClick = VisualClick
      end
      object AnalyseProc: TButton
        Left = 184
        Top = 436
        Width = 153
        Height = 25
        Hint = 'Анализ стиля процедуры'
        Caption = 'Анализировать процедуру'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        Visible = False
        OnClick = AnalyseProcClick
      end
      object Edit11: TEdit
        Left = 696
        Top = 408
        Width = 41
        Height = 21
        TabOrder = 7
      end
      object Edit12: TEdit
        Left = 432
        Top = 440
        Width = 49
        Height = 21
        TabOrder = 8
        Text = 'Edit12'
        Visible = False
      end
      object Edit13: TEdit
        Left = 488
        Top = 440
        Width = 49
        Height = 21
        TabOrder = 9
        Text = 'Edit13'
        Visible = False
      end
      object Panel1_: TPanel
        Left = 464
        Top = 72
        Width = 289
        Height = 329
        BevelOuter = bvLowered
        TabOrder = 10
        object Label1: TLabel
          Left = 22
          Top = 12
          Width = 147
          Height = 13
          Caption = 'Количество непустых строк :'
        end
        object Label9: TLabel
          Left = 22
          Top = 44
          Width = 169
          Height = 13
          Caption = 'Средняя длина идентификатора :'
        end
        object Label6: TLabel
          Left = 22
          Top = 76
          Width = 148
          Height = 13
          Caption = 'Процент строк примечаний  :'
        end
        object Label7: TLabel
          Left = 22
          Top = 108
          Width = 97
          Height = 13
          Caption = 'Процент отступов :'
        end
        object Label2: TLabel
          Left = 22
          Top = 140
          Width = 119
          Height = 13
          Caption = 'Процент пустых строк :'
        end
        object Label3: TLabel
          Left = 22
          Top = 172
          Width = 182
          Height = 13
          Caption = 'Среднее кол-во символов в строке:'
        end
        object Label4: TLabel
          Left = 22
          Top = 204
          Width = 180
          Height = 13
          Caption = 'Среднее кол-во пробелов в строке:'
        end
        object Label10: TLabel
          Left = 22
          Top = 236
          Width = 167
          Height = 13
          Caption = 'Процент определения констант :'
        end
        object Label8: TLabel
          Left = 22
          Top = 268
          Width = 173
          Height = 13
          Caption = 'Кол-во использованных сл. слов :'
        end
        object Label11: TLabel
          Left = 22
          Top = 300
          Width = 107
          Height = 13
          Caption = 'Включенные файлы :'
        end
        object Edit10: TEdit
          Left = 232
          Top = 292
          Width = 40
          Height = 21
          TabOrder = 0
        end
        object Edit9: TEdit
          Left = 232
          Top = 260
          Width = 40
          Height = 21
          TabOrder = 1
        end
        object Edit8: TEdit
          Left = 232
          Top = 232
          Width = 40
          Height = 21
          TabOrder = 2
        end
        object Edit7: TEdit
          Left = 232
          Top = 200
          Width = 40
          Height = 21
          TabOrder = 3
        end
        object Edit6: TEdit
          Left = 232
          Top = 168
          Width = 40
          Height = 21
          TabOrder = 4
        end
        object Edit5: TEdit
          Left = 232
          Top = 136
          Width = 40
          Height = 21
          TabOrder = 5
        end
        object Edit4: TEdit
          Left = 232
          Top = 104
          Width = 40
          Height = 21
          TabOrder = 6
        end
        object Edit3: TEdit
          Left = 232
          Top = 72
          Width = 40
          Height = 21
          TabOrder = 7
        end
        object Edit2: TEdit
          Left = 232
          Top = 40
          Width = 40
          Height = 21
          TabOrder = 8
        end
        object Edit1: TEdit
          Left = 232
          Top = 8
          Width = 40
          Height = 21
          TabOrder = 9
        end
      end
    end
    object Style_Correction: TTabSheet
      Caption = 'Редактирование стиля '
      ImageIndex = 1
      object Label27: TLabel
        Left = 32
        Top = 48
        Width = 147
        Height = 13
        Caption = 'Исходный текст программы:'
      end
      object Label28: TLabel
        Left = 392
        Top = 48
        Width = 200
        Height = 13
        Caption = 'Отредактированный текст программы:'
      end
      object Memo6: TMemo
        Left = 8
        Top = 72
        Width = 369
        Height = 329
        BiDiMode = bdRightToLeft
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object Memo7: TMemo
        Left = 384
        Top = 72
        Width = 369
        Height = 329
        BiDiMode = bdRightToLeft
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 1
      end
      object Corret_Style_: TButton
        Left = 8
        Top = 416
        Width = 97
        Height = 25
        Caption = 'Корректировать'
        TabOrder = 2
        OnClick = Corret_Style_Click
      end
      object Save_CorrectFile: TButton
        Left = 120
        Top = 416
        Width = 75
        Height = 25
        Caption = 'Сохранить'
        TabOrder = 3
        OnClick = Save_CorrectFileClick
      end
      object NastroykaCor: TButton
        Left = 208
        Top = 416
        Width = 113
        Height = 25
        Caption = 'Настройка'
        TabOrder = 4
        OnClick = NastroykaCorClick
      end
      object Statistik: TButton
        Left = 336
        Top = 416
        Width = 97
        Height = 25
        Caption = 'Статистика'
        TabOrder = 5
        Visible = False
        OnClick = StatistikClick
      end
    end
    object Graph_Help_Information: TTabSheet
      Caption = 'Расчет структурной сложности'
      ImageIndex = 3
      object Label15: TLabel
        Left = 32
        Top = 48
        Width = 147
        Height = 13
        Caption = 'Исходный текст программы:'
      end
      object Label26: TLabel
        Left = 488
        Top = 48
        Width = 94
        Height = 13
        Caption = 'Критерии расчета:'
      end
      object Label29: TLabel
        Left = 496
        Top = 256
        Width = 148
        Height = 13
        Caption = 'Статистическая информация'
      end
      object Memo2: TMemo
        Left = 8
        Top = 72
        Width = 425
        Height = 329
        BiDiMode = bdRightToLeft
        Font.Charset = OEM_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Terminal'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 1
      end
      object Build_Phis_Struct: TButton
        Left = 8
        Top = 436
        Width = 105
        Height = 25
        Caption = 'Выполнить расчет'
        TabOrder = 0
        OnClick = Build_Phis_StructClick
      end
      object Panel1: TPanel
        Left = 480
        Top = 72
        Width = 273
        Height = 169
        BevelOuter = bvLowered
        TabOrder = 2
        object Label23: TLabel
          Left = 18
          Top = 24
          Width = 143
          Height = 13
          Caption = 'Y - Количество связных дуг:'
        end
        object Label22: TLabel
          Left = 18
          Top = 64
          Width = 166
          Height = 13
          Caption = 'Nп - Полное количество вершин:'
        end
        object Label24: TLabel
          Left = 18
          Top = 100
          Width = 166
          Height = 13
          Caption = 'Количество связных компонент:'
        end
        object Label25: TLabel
          Left = 18
          Top = 140
          Width = 143
          Height = 13
          Caption = 'Z - Цикломатическое число:'
        end
        object Edit17: TEdit
          Left = 208
          Top = 16
          Width = 41
          Height = 21
          TabOrder = 0
        end
        object Edit18: TEdit
          Left = 208
          Top = 56
          Width = 41
          Height = 21
          TabOrder = 1
        end
        object Edit19: TEdit
          Left = 208
          Top = 92
          Width = 41
          Height = 21
          TabOrder = 2
        end
        object Edit20: TEdit
          Left = 208
          Top = 132
          Width = 41
          Height = 21
          TabOrder = 3
        end
      end
      object Panel2: TPanel
        Left = 480
        Top = 280
        Width = 273
        Height = 121
        BevelOuter = bvLowered
        TabOrder = 3
        object Label19: TLabel
          Left = 14
          Top = 60
          Width = 142
          Height = 13
          Caption = 'Количество ключевых слов:'
        end
        object Label20: TLabel
          Left = 14
          Top = 20
          Width = 131
          Height = 13
          Caption = 'Количество  эл. в списке:'
        end
        object Label21: TLabel
          Left = 14
          Top = 92
          Width = 17
          Height = 13
          Caption = 'tmp'
          Visible = False
        end
        object Edit16: TEdit
          Left = 152
          Top = 92
          Width = 97
          Height = 21
          TabOrder = 0
          Visible = False
        end
        object Edit15: TEdit
          Left = 208
          Top = 52
          Width = 41
          Height = 21
          TabOrder = 1
        end
        object Edit14: TEdit
          Left = 208
          Top = 12
          Width = 41
          Height = 21
          TabOrder = 2
        end
      end
    end
    object Structure_complexity: TTabSheet
      Caption = 'Графовая Модель программы'
      ImageIndex = 2
      TabVisible = False
      OnExit = Structure_complexityExit
      OnShow = Structure_complexityShow
      inline Frame_Graph1: TFrame_Graph
        Left = 8
        Top = 14
        Width = 769
        inherited Panel1: TPanel
          inherited PaintBox1: TPaintBox
            OnPaint = Frame_Graph1PaintBox1Paint
          end
        end
      end
      inline Frame_settings1: TFrame_settings
        Left = 16
        Top = 16
        TabOrder = 1
        inherited Draw_Graph: TButton
          Top = 88
          OnClick = Frame_settings1Draw_GraphClick
        end
        inherited CheckBox1: TCheckBox
          OnClick = Frame_settings1CheckBox1Click
        end
        inherited CheckBox2: TCheckBox
          OnClick = Frame_settings1CheckBox2Click
        end
      end
      inline Frame51: TFrame5
        Left = 192
        Top = 3
        Width = 561
        Height = 180
        TabOrder = 2
        Visible = False
        inherited Memo1: TMemo
          Top = 0
          Width = 537
          Height = 165
          Lines.Strings = ()
          ScrollBars = ssBoth
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      Enabled = False
      ImageIndex = 4
      TabVisible = False
      object Label18: TLabel
        Left = 200
        Top = 56
        Width = 101
        Height = 13
        Caption = 'Accord_Spis [Ac_Sp]'
      end
      object Label17: TLabel
        Left = 664
        Top = 56
        Width = 50
        Height = 13
        Caption = 'Skelet [sk]'
      end
      object Label16: TLabel
        Left = 504
        Top = 56
        Width = 70
        Height = 13
        Caption = 'Stracture [spis]'
      end
      object Memo5: TMemo
        Left = 208
        Top = 80
        Width = 289
        Height = 329
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object Memo3: TMemo
        Left = 504
        Top = 80
        Width = 137
        Height = 329
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object Memo4: TMemo
        Left = 648
        Top = 80
        Width = 97
        Height = 329
        ScrollBars = ssVertical
        TabOrder = 2
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 80
    object File_: TMenuItem
      Caption = 'Файл'
      object Open_: TMenuItem
        Caption = 'Открыть'
        OnClick = Open_Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit_: TMenuItem
        Caption = 'Выход'
        OnClick = Exit_Click
      end
    end
    object N5: TMenuItem
      Caption = 'Справка'
      object N2: TMenuItem
        Caption = 'Справка по редактору'
        OnClick = N2Click
      end
      object About: TMenuItem
        Caption = 'О программе'
        OnClick = AboutClick
      end
    end
  end
  object OpenDialog1: TOpenDialog
    InitialDir = 'D:\хх--= DIPLOM =--хх\Style1\Tests\2.pas'
    Options = [ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Left = 112
  end
  object SaveDialog1: TSaveDialog
    Options = [ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Left = 484
    Top = 65528
  end
end
