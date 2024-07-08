unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    lbl2: TLabel;
    lbl3: TLabel;
    edt2: TEdit;
    edt3: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    dbgrd1: TDBGrid;
    btn7: TButton;
    lbl4: TLabel;
    pnl1: TPanel;
    procedure posisiAwal;
    procedure btn6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn5Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: string;
  SearchText: string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.posisiAwal;
begin
  btn3.Enabled:=false;
  btn4.Enabled:=false;
  btn5.Enabled:=false;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
posisiAwal;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
posisiAwal;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
btn3.Enabled:=true;
btn4.Enabled:=true;
btn5.Enabled:=true;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
//declare SearchText: string; di bagian VAR lalu copas kodingnya
  //perhatikan nama tabel dan kolomnya yang ingin di cari, lihati comment selanjutnya
  SearchText := Trim(edt2.Text);

  if SearchText = '' then
  begin
    ShowMessage('Masukkan nama untuk melakukan pencarian.');
    Exit;
  end;

  DataModule2.zqry1.Close;
  DataModule2.zqry1.SQL.Clear;
  //ingat ganti SELECT*FROM namatabel WHERE namakolom
  DataModule2.zqry1.SQL.Add('SELECT * FROM satuan WHERE nama LIKE :SearchText');
  DataModule2.zqry1.ParamByName('SearchText').AsString := '%' + SearchText + '%';
  DataModule2.zqry1.Open;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
if (edt2.Text = '') and (edt3.Text = '') then
  begin
    ShowMessage('Masukkan teks');
    Exit;
  end else
  if DataModule2.Zqry1.Locate('nama', edt2.Text, []) then
  begin
    ShowMessage('Data Dengan nama ' + edt2.Text + ' Sudah Ada Didalam Sistem');
  end else
  begin
    DataModule2.zqry1.SQL.Clear;
    DataModule2.zqry1.SQL.Add('INSERT INTO SATUAN (id, nama, deskripsi) VALUES (:id, :nama, :deskripsi)');
    DataModule2.zqry1.ParamByName('id').AsString := a;
    DataModule2.zqry1.ParamByName('nama').AsString := edt2.Text;
    DataModule2.zqry1.ParamByName('deskripsi').AsString := edt3.Text;
    DataModule2.zqry1.ExecSQL;

    DataModule2.zqry1.SQL.Clear;
    DataModule2.zqry1.SQL.Add('SELECT * FROM SATUAN');
    DataModule2.zqry1.Open;
    ShowMessage('Data berhasil disimpan');
  end;
  posisiAwal;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
if edt2.Text = '' then
  begin
    ShowMessage('ID Tidak Boleh Kosong!');
  end else
  begin
    DataModule2.zqry1.SQL.Clear;
    DataModule2.zqry1.SQL.Add('UPDATE satuan SET nama = :nama, deskripsi = :deskripsi WHERE Id = :id');
    DataModule2.zqry1.ParamByName('nama').AsString := edt2.Text;
    DataModule2.zqry1.ParamByName('deskripsi').AsString := edt3.Text;
    DataModule2.zqry1.ParamByName('id').AsString := a; // Assuming 'a' is the ID value
    DataModule2.zqry1.ExecSQL;

    // Clear the SQL statement before executing the SELECT query
    DataModule2.zqry1.SQL.Clear;
    DataModule2.zqry1.SQL.Add('SELECT * FROM satuan');
    DataModule2.zqry1.Open;
    ShowMessage('Data berhasil diupdate');
  end;
  posisiAwal;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
  edt2.text:=UpperCase(DataModule2.zqry1.Fields[1].AsString);
  edt3.text:=UpperCase(DataModule2.zqry1.Fields[2].AsString);
  a:= DataModule2.zqry1.Fields[0].AsString;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Menghapus Data ini', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModule2.zqry1 do
    begin
      SQL.Clear;
      SQL.Add('DELETE FROM satuan WHERE id = ''' + a + '''');
      ExecSQL;

      SQL.Clear;
      SQL.Add('SELECT * FROM satuan');
      Open;
      ShowMessage('Data berhasil dihapus');
    end;
  end;
  posisiAwal;
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
edt2.Text:='';
edt3.Text:='';
end;

end.
