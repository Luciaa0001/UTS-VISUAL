object Form1: TForm1
  Left = 352
  Top = 152
  Width = 512
  Height = 467
  Caption = 'SATUAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl2: TLabel
    Left = 40
    Top = 56
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object lbl3: TLabel
    Left = 40
    Top = 96
    Width = 52
    Height = 13
    Caption = 'DESKRIPSI'
  end
  object lbl4: TLabel
    Left = 40
    Top = 16
    Width = 86
    Height = 25
    Caption = 'SATUAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt2: TEdit
    Left = 136
    Top = 56
    Width = 201
    Height = 21
    TabOrder = 0
  end
  object edt3: TEdit
    Left = 136
    Top = 96
    Width = 201
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 368
    Top = 56
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 368
    Top = 96
    Width = 75
    Height = 25
    Caption = 'NEW'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 368
    Top = 136
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 368
    Top = 176
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 5
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 368
    Top = 216
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 6
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 368
    Top = 256
    Width = 75
    Height = 25
    Caption = 'CANCEL'
    TabOrder = 7
    OnClick = btn6Click
  end
  object dbgrd1: TDBGrid
    Left = 40
    Top = 168
    Width = 297
    Height = 153
    DataSource = DataModule2.ds1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object btn7: TButton
    Left = 368
    Top = 296
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 9
    OnClick = btn7Click
  end
  object pnl1: TPanel
    Left = 40
    Top = 344
    Width = 401
    Height = 41
    Caption = 'DIBUAT OLEH MUHAMMAD SAMAN - 2210010053 - 4P REGULER PAGI'
    TabOrder = 10
  end
end
