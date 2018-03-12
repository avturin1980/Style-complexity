unit Main_Unit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Menus, ExtCtrls, Unit3, Unit4, Unit5;

type
  TMain_Form = class(TForm)
    PageControl1: TPageControl;
    Style_computation: TTabSheet;
    Style_Correction: TTabSheet;
    Structure_complexity: TTabSheet;
    MainMenu1: TMainMenu;
    File_: TMenuItem;
    Label5: TLabel;
    Label12: TLabel;
    Load_f: TButton;

    Memo1: TMemo;


    path_to_file: TEdit;
    Save_f: TButton;
    Analyse: TButton;
    Visual: TButton;
    AnalyseProc: TButton;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    OpenDialog1: TOpenDialog;
    Label13: TLabel;
    Label14: TLabel;
    Graph_Help_Information: TTabSheet;
    Memo6: TMemo;
    Memo7: TMemo;
    Label27: TLabel;
    Label28: TLabel;
    TabSheet1: TTabSheet;
    Label18: TLabel;
    Memo5: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Label17: TLabel;
    Label16: TLabel;
    Memo2: TMemo;
    Label15: TLabel;
    Label26: TLabel;
    Label29: TLabel;
    Build_Phis_Struct: TButton;
    Panel1_: TPanel;
    Label1: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Edit10: TEdit;
    Edit9: TEdit;
    Edit8: TEdit;
    Edit7: TEdit;
    Edit6: TEdit;
    Edit5: TEdit;
    Edit4: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit1: TEdit;
    Panel1: TPanel;
    Label23: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Panel2: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Edit16: TEdit;
    Edit15: TEdit;
    Edit14: TEdit;
    Corret_Style_: TButton;
    Exit_: TMenuItem;
    Open_: TMenuItem;
    N1: TMenuItem;
    SaveDialog1: TSaveDialog;
    Save_CorrectFile: TButton;
    N5: TMenuItem;
    About: TMenuItem;
    Frame_Graph1: TFrame_Graph;
    Frame_settings1: TFrame_settings;
    NastroykaCor: TButton;
    Frame51: TFrame5;
    Statistik: TButton;
    N2: TMenuItem;
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Load;
    procedure Load_fClick(Sender: TObject);
    procedure ExitClick(Sender: TObject);
    procedure Save;
    procedure AnalyseClick(Sender: TObject);
//  procedure Exit1Click(Sender: TObject);
//  procedure Load_fileClick(Sender: TObject);
//  procedure Save_fClick(Sender: TObject);
//  procedure Save_fileClick(Sender: TObject);
//  procedure FormResize(Sender: TObject);
 // procedure AboutClick(Sender: TObject);
    procedure Path_to_fileDblClick(Sender: TObject);
    procedure Path_to_fileEnter(Sender: TObject);
    procedure Path_to_fileExit(Sender: TObject);
    procedure VisualClick(Sender: TObject);
    procedure AnalyseProcClick(Sender: TObject);
    procedure ContensClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
   // procedure FormCreate(Sender: TObject);
    procedure SingleProc_Analise;
    procedure Main_Analise;
    procedure N2Click(Sender: TObject);
    procedure Exit_Click(Sender: TObject);
    procedure Build_Phis_StructClick(Sender: TObject);
    procedure Draw_GraphClick(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Structure_complexityShow(Sender: TObject);
    procedure Structure_complexityExit(Sender: TObject);
    procedure Corret_Style_Click(Sender: TObject);
    procedure Open_Click(Sender: TObject);
    procedure Save_CorrectFileClick(Sender: TObject);
    procedure AboutClick(Sender: TObject);
    procedure Frame_Graph1PaintBox1Paint(Sender: TObject);
    procedure Frame_settings1Draw_GraphClick(Sender: TObject);
    procedure Frame_settings1CheckBox2Click(Sender: TObject);
    procedure Frame_settings1CheckBox1Click(Sender: TObject);
    procedure Frame_settings1vertClick(Sender: TObject);
    procedure Frame_settings1horClick(Sender: TObject);
    procedure NastroykaCorClick(Sender: TObject);
    procedure StatistikClick(Sender: TObject);
    procedure Dopolnitelniy;
    
  //  procedure Graph_ConstructClick(Sender: TObject);
 //   procedure Build_ModelClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main_Form: TMain_Form;
  file1,file2,file3:TextFile; {Исследуемый файл}
  path,s:string;
  mass: array [1..48] of string;   {Массив для размещения зарезервированных слов}
  mass1: array [1..48] of string;
  mass2: array [1..48] of string;

  m1: array[1..255] of string;
  m12: array[1..255] of string;
  m13: array[1..255] of string;

  c:char; {переменная для посимвольного чтения файла}
  m_len:integer;
  FirstTick : longint;
  sum1,sum2,i:integer;
  f5:text;

  res:integer;
  results :array[1..10] of integer;
           { О п и с а н и е }
//  results[1]  -  Количество непустых строк
//  results[2]  -  Средняя длина идентификатора
//  results[3]  -  Количество строк примечаний
//  results[4]  -  Процент отступов
//  results[5]  -  Процент пустых строк
//  results[6]  -  Среднее кол-во символов в строке
//  results[7]  -  Среднее кол-во пробелов в строке
//  results[8]  -  Процент определения констант
//  results[9]  -  Кол-во использованных сл. слов
//  results[10] -  Включенные файлы

  w  :array[1..10] of integer;  //Веса критериев
  lb :array[1..10] of integer;  //Левая граница идеального диапазона
  rb :array[1..10] of integer;  //Правая граница идеального диапазона

  empty_str,not_empty_str:integer; {Пустые и непустые строки соответственно}
  Reserv_Wards:byte; {Число использованных служебных слов}
   start_flag:boolean;


implementation

uses Values_computation,Method_Definition,Style_diagram,Style_help_Information,
     Style_Values_Information,Graph_Phisical_Structure,Visual_Construction,
     Gaph_FormConstr,Graph_Settings_, Graph_Text_Listing_,Unit1, Unit2,
  Unit7, Unit10_;
     //Unit3,Unit4;

{$R *.DFM}

procedure TMain_Form.FormResize(Sender: TObject);
begin
     PageControl1.Height:=Main_Form.Height-70;
     PageControl1.Width:=Main_Form.Width-25;

     memo1.Height:=Main_Form.height-245;
     memo1.Width:=Main_Form.width-370;

     Panel1_.left:=memo1.left+memo1.Width+15;


     Load_f.Top:=PageControl1.Top+PageControl1.Height-100;
     Load_f.Left:=8;

     Save_f.Top:=PageControl1.Top+PageControl1.Height-100;
     Save_f.Left:=100;

     Analyse.Top:=PageControl1.Top+PageControl1.Height-100;
     Analyse.Left:=192;

     Visual.Top:=PageControl1.Top+PageControl1.Height-100;
     Visual.Left:=284;

     AnalyseProc.Top:=PageControl1.Top+PageControl1.Height-100;
     AnalyseProc.Left:=376;

     Label12.left:=memo1.left+memo1.Width+38;
     Edit11.left:=232+Panel1_.left;
     Label13.left:=Panel1_.left+10;

     memo2.Height:=Main_Form.height-245;
     memo2.Width:=Main_Form.width-370;

     Panel1.left:=memo2.left+memo2.Width+15;
     Panel2.left:=memo2.left+memo2.Width+15;

     Build_Phis_Struct.Top:=PageControl1.Top+PageControl1.Height-100;
     Build_Phis_Struct.Left:=8;

     memo6.Height:=Main_Form.height-245;
     memo6.Width:=round(Main_Form.Width/2)-30;
     memo6.left:=8;

     memo7.Height:=Main_Form.height-245;
     memo7.Width:=round(Main_Form.Width/2)-30;
     memo7.left:=memo6.left+memo6.Width+10;


     Label28.left:=memo7.left+10;
     Corret_Style_.Top:=PageControl1.Top+PageControl1.Height-100;
     Corret_Style_.Left:=8;

     Save_CorrectFile.top:=PageControl1.Top+PageControl1.Height-100;
     Save_CorrectFile.Left:=120;


    {фрэймы }
    if Main_Form.Frame_settings1.CheckBox2.Checked=true then
    begin
    Main_Form.Frame51.Height:=170;//PageControl1.Height-400;
    Main_Form.Frame_Graph1.Height:=PageControl1.Height-170-40;
    Main_Form.Frame_Graph1.top:=Main_Form.Frame51.Height+5;

    end
                                                        else
    begin
    Main_Form.Frame51.Height:=170;//PageControl1.Height-400;
    Main_Form.Frame_Graph1.Height:=PageControl1.Height-40;
    Main_Form.Frame_Graph1.top:=3;
    end;


    Main_Form.Frame_Graph1.width:=PageControl1.width-20;
    Main_Form.Frame51.width:=PageControl1.width-Main_Form.Frame_settings1.width-20;
    Frame51.Memo1.width:=Main_Form.Frame51.width-17;
    //--------------------------------------------------------------------


    path_to_file.width:=(panel1_.left-path_to_file.left)+panel1_.width;

    NastroykaCor.top:=PageControl1.Top+PageControl1.Height-100;
    NastroykaCor.Left:=210;

    Statistik.top:=PageControl1.Top+PageControl1.Height-100;
    Statistik.Left:=350;



end;

procedure TMain_Form.FormCreate(Sender: TObject);
begin
    path:='';
    FormResize(Sender);
    AssignFile(file2,'path.txt');
    reset(file2);
    readln(file2,s);
    Path_to_file.text:=s;
    CloseFile(file2);
    FormCreate_;
    ot_size:=1.2;  // коэффициент увеличения отступа
    first_ot:=40;  // начальный (самый маленький) отступ
end;
 
procedure TMain_Form.ExitClick(Sender: TObject);
begin
// form5.visible:=true;
if MessageDlg('Завершить работу программы?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then close;
end;


procedure TMain_Form.Load;

begin
  OpenDialog1.InitialDir:=path_to_file.text;

  OpenDialog1.Execute;
  if OpenDialog1.FileName<>'' then
    begin
      path_to_file.text:=OpenDialog1.FileName;
      path:=path_to_file.text;
    end;

   if path='' then MessageDlg('Не указан файл,   необходимо выбрать пункт главного меню: Файл->Открыть', mtError, [mbOk], 0)
     else
      begin

        LCase_;
        Choice.visible:=true;
      end;

//  OpenDialog1.FileName:=;
//  path:=OpenDialog1.FileName;



end;

procedure TMain_Form.Main_Analise;
 var
  count,first,i,main_unit:integer;
  beg:integer;
  s_ward:string;
  ch:char;
  lable1,exist,fl:boolean;
begin

//++++++++++++++++++удаление процедур и функций из текста+++++++++++++
          beg:=0;
          count:=0;
          lable1:=false;
          fl:=false;
          exist:=false;
          first:=0;
          main_unit:=0;
          AssignFile(file1,'LCase_.txt'); Reset(file1);
          AssignFile(file2,'B_E_Unit.txt'); Rewrite(file2);
while not eof(file1) do
       begin
            while not eoln(file1) do
               begin
                  s:='';
                  read(file1,ch);
                  count:=count+1;
                 if ch<>' ' then   s:=s+ch;
                 while ((ch<>';') and (ch<>' ') and (ch<>'.') and (not(eoln(file1)))   {and(ch<>'табуляция')} ) do
                     begin
                         read(file1,ch);
                         count:=count+1;
		         if ((ch<>';') and (ch<>' ') and (ch<>'.') {and(ch<>'табуляция')}) then  s:=s+ch;
    		      end;
            if s<>'' then
                begin
                   if s='procedure' then
                                        begin
                                            lable1:=true;
                                            if exist=false then first:=(count);
                                            exist:=true;
                                        end;

                   if s='function'  then
                                        begin
                                        lable1:=true;
                                        if exist=false then first:=(count);
                                        exist:=true;
                                        end;

                   if ((((s='begin') or  (s='case'))) and (lable1=true)) then beg:=beg+1;

                   if s='end' then
                                begin
                                        beg:=beg-1;
                                        if beg=0 then lable1:=false;
                                end;
                   if ((s='begin') and (lable1=false) and (exist=true)) then
                                                  begin
                                                  if  fl=false then
                                                    begin
                                                     main_unit:=(count);
                                                     fl:=true;
                                                    end;
                                                  end;
                end;
               end;
            if eoln(file1) then  count:=count+1;
            if eoln(file1) then readln(file1);

        end;
        CloseFile(file1);
        CloseFile(file2);

        AssignFile(file1,'LCase_.txt'); Reset(file1);
        AssignFile(file2,'B_E_Unit.txt'); Rewrite(file2);

   if exist=true then
     begin
      for i:=1 to first  do
        begin
        read(file1,ch);
        write(file2,ch);
        end;

        for i:=first to (main_unit+5) do
           begin
             read(file1,ch);
               if eoln(file1) then  read(file1,ch);
           end;
      end;

        while not eof(file1) do
         begin
           read(file1,ch);
           write(file2,ch);
         end;
         CloseFile(file1);
        CloseFile(file2);

 
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++=


 if exist=true then MessageDlg('Из текста будут удалены процедуры и функции !',mtInformation, [mbOK ], 0);

  Memo1.Lines.LoadFromFile('B_E_Unit.txt');
  Visual.Visible:=False;
  Analyse.visible:=true;

end;

procedure TMain_Form.SingleProc_Analise;
        var st:string;
begin
  AssignFile(file1,'LCase_.txt'); Reset(file1);
  AssignFile(file2,'B_E_Unit.txt'); Rewrite(file2);
  while not eof(file1) do
        begin
         Readln(file1,s);
         writeln(file2,s);
        end;
   CloseFile(file1);
   CloseFile(file2);

  MessageDlg('В файле должна содержаться только исследуемая процедура!',mtInformation, [mbOK ], 0);
  Memo1.Lines.LoadFromFile('B_E_Unit.txt');
  Visual.Visible:=False;
  AnalyseProc.Visible:=True;
end;

procedure TMain_Form.Save;
begin
    //path:=path_to_file.text;
    // path:=OpenDialog1.FileName;
     Memo1.lines.SaveToFile('B_E_Unit.txt');
end;

procedure TMain_Form.Load_fClick(Sender: TObject);
begin
   Load;
   Main_Form.Statistik.Visible:=false;
   if path<>'' then
   begin
     Memo6.Lines.LoadFromFile(path);
     Memo2.Lines.LoadFromFile(path);
   end;

end;

procedure TMain_Form.AnalyseClick(Sender: TObject);
        var diap1,diap2,diap3,diap4:boolean;
begin
   Save;
   Stroki;
   Symbols;
   Notes;
   Idents;
   LoadWardsToMass;
   ResWards;
   Super_Main;  
   Visual.Visible:=True;

   AssignFile(file3,'Opimal.mrk');
      Reset(File3);
      for i:=1 to 10 do
        begin
            read(file3,w[i]); read(file3,lb[i]); read(file3,rb[i]); readln(file3);
        end;
      CloseFile(file3);

   for i:=1 to 10 do aux[i]:=round((lb[i]+rb[i])/2);

   diap1:=false;
   diap2:=false;
   diap3:=false;
   diap4:=false;

   for i:=1 to 10 do
     begin
        if results[i]<lb[i] then diap1:=true;
        if ((results[i]>=lb[i]) and (results[i]<=rb[i])) then diap2:=true;
        if ((results[i]>=rb[i]) and (results[i]<=rb[i]*2)) then diap3:=true;
        if results[i]>rb[i]*2 then diap4:=true;

        if diap1=true then m2[i]:=round(w[i]*(results[i]/lb[i]));
        if diap2=true then m2[i]:=w[i];
        if diap3=true then m2[i]:=round(w[i]*((rb[i]*2-results[i])/(rb[i]*2-rb[i])));
        if diap4=true then m2[i]:=0;

   diap1:=false;
   diap2:=false;
   diap3:=false;
   diap4:=false;

      {  f:=round((lb[i]+rb[i])/2);
        m2[i]:=w[i]-round(sqrt((f-results[i])*(f-results[i]))*w[i]/f); }
        if m2[i]<0 then m2[i]:=0;
     end;

   sum2:=0;
   for i:=1 to 10 do sum2:=sum2+m2[i];

   Edit11.text:=IntToStr(sum2);


end;
 {
procedure TMain_Form.Exit1Click(Sender: TObject);
begin
     Close;
end;

procedure TMain_Form.Load_fileClick(Sender: TObject);
begin
     Load;
end;

procedure TMain_Form.Save_fClick(Sender: TObject);
begin
     Save;
end;

procedure TMain_Form.Save_fileClick(Sender: TObject);
begin
     Save;
end;
      }

      {
procedure TMain_Form.FormResize(Sender: TObject);
//Масштабирование формы
begin
     PageControl1.Height:=Main_Form.Height-70;
     PageControl1.Width:=Main_Form.Width-25;


     Load_f.Top:=Main_Form.Height-87;
     Load_f.Left:=8;

     Save_f.Top:=Main_Form.Height-87;
     Save_f.Left:=100;

     Analyse.Top:=Main_Form.Height-87;
     Analyse.Left:=192;

     Visual.Top:=Main_Form.Height-87;
     Visual.Left:=284;

     memo1.Height:=Main_Form.height-155;
     memo1.Width:=Main_Form.width-352-20;

     AnalyseProc.Top:=Main_Form.Height-87;
     AnalyseProc.Left:=376;

end;
       }

     {
procedure TMain_Form.AboutClick(Sender: TObject);
begin
     Form2.ShowModal;
end;
     }
procedure TMain_Form.Path_to_fileDblClick(Sender: TObject);
begin
     Load;
end;



procedure TMain_Form.Path_to_fileEnter(Sender: TObject);
begin
//Load;
   { AssignFile(file2,'path.txt');
    reset(file2);
    readln(file2,s);
    Path_to_file.text:=s;
    CloseFile(file2); }
end;

procedure TMain_Form.Path_to_fileExit(Sender: TObject);
begin
   { AssignFile(file2,'path.txt');
    rewrite(file2);
    write(file2,Path_to_file.text);
    CloseFile(file2);    }
end;



procedure TMain_Form.VisualClick(Sender: TObject);
 var i:byte;

begin
 Style_Graphics.ShowModal;
 with Style_Graphics.Canvas do
   begin
      Pen.Color:=0;
      moveto(30,300); lineTo(425,300);
      moveto(30,300); lineTo(30,25);

      AssignFile(file3,'Opimal.mrk');
      Reset(File3);
      for i:=1 to 10 do
        begin
            read(file3,w[i]); read(file3,lb[i]); read(file3,rb[i]); readln(file3);
        end;
      CloseFile(file3);
      is_clear:=true;
   end;
end;

procedure TMain_Form.AnalyseProcClick(Sender: TObject);
      var diap1,diap2,diap3,diap4:boolean;
begin
   Save;
   Stroki;
   Symbols;
   Notes;
   Idents;
   LoadWardsToMass;
   ResWards;
  // procanalise;
{****** Специально для Дрона**********}
  { Super_Main;}  { <- здесь не пашет: виснет, о ля ля :) }
   Visual.Visible:=True;

   AssignFile(file3,'Opimal.mrk');
      Reset(File3);
      for i:=1 to 10 do
        begin
            read(file3,w[i]); read(file3,lb[i]); read(file3,rb[i]); readln(file3);
        end;
      CloseFile(file3);
   for i:=1 to 10 do aux[i]:=round((lb[i]+rb[i])/2);

     for i:=1 to 10 do
     begin
        if results[i]<lb[i] then diap1:=true;
        if ((results[i]>=lb[i]) and (results[i]<=rb[i])) then diap2:=true;
        if ((results[i]>=rb[i]) and (results[i]<=rb[i]*2)) then diap3:=true;
        if results[i]>rb[i]*2 then diap4:=true;

        if diap1=true then m2[i]:=round(w[i]*(results[i]/lb[i]));
        if diap2=true then m2[i]:=w[i];
        if diap3=true then m2[i]:=round(w[i]*((rb[i]*2-results[i])/(rb[i]*2-rb[i])));
        if diap4=true then m2[i]:=0;

   diap1:=false;
   diap2:=false;
   diap3:=false;
   diap4:=false;

      {  f:=round((lb[i]+rb[i])/2);
        m2[i]:=w[i]-round(sqrt((f-results[i])*(f-results[i]))*w[i]/f); }
        if m2[i]<0 then m2[i]:=0;
     end;

   sum2:=0;
   for i:=1 to 10 do sum2:=sum2+m2[i];

   Edit11.text:=IntToStr(sum2);

end;

procedure TMain_Form.ContensClick(Sender: TObject);
begin
  form6.visible:=true;
  form6.Memo1.Lines.LoadFromFile('StInform.txt');
end;

procedure TMain_Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    AssignFile(file2,'path.txt');
    rewrite(file2);
    write(file2,Path_to_file.text);
    CloseFile(file2);
end;
 {
procedure TMain_Form.FormCreate(Sender: TObject);
begin
    AssignFile(file2,'path.txt');
    reset(file2);
    readln(file2,s);
    Path_to_file.text:=s;
    CloseFile(file2);
end;
}

procedure TMain_Form.N2Click(Sender: TObject);
begin
  form9.visible:=true;
 // form8.Memo1.Lines.LoadFromFile('Param.inf');
end;
 {
procedure TMain_Form.Graph_ConstructClick(Sender: TObject);
begin
Graph_Construction.VISIBLE:=true;
end;

procedure TMain_Form.Build_ModelClick(Sender: TObject);
begin
Graph_Construction.VISIBLE:=true;
end;
        }

procedure TMain_Form.Exit_Click(Sender: TObject);
begin
if MessageDlg('Завершить работу программы?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then close;
end;

procedure TMain_Form.Build_Phis_StructClick(Sender: TObject);
begin
{}
if path='' then MessageDlg('Не указан файл,   необходимо выбрать пункт главного меню: Файл->Открыть', mtError, [mbOk], 0)
           else Build_Phis_StructClick_;
end;

procedure TMain_Form.Draw_GraphClick(Sender: TObject);
begin

{}
  try
    tmp:=StrToInt(Main_Form.Frame_settings1.Edit23.Text);
    ot_size:=StrToFloat(Main_Form.Frame_settings1.Edit21.Text);  // коэффициент увеличения отступа
    first_ot:=StrToInt(Main_Form.Frame_settings1.Edit22.Text);   // начальный (самый маленький) отступ                                                    //расстояние по высоте
    except on E: EConvertError do
                                begin
                                  tmp:=40;
                                  ot_size:=1.2;  // коэффициент увеличения отступа
                                  first_ot:=40;  // начальный (самый маленький) отступ
                                  MessageDlg('Ошибка в настройках модели!',mtError	, [mbOK	], 0);
                                end;
    end;
Draw_GraphClick_;
end;



procedure TMain_Form.PaintBox1Paint(Sender: TObject);
begin
Draw_GraphClick_;
end;

procedure TMain_Form.Button1Click(Sender: TObject);
begin
   // Main_Form.TabSheet1.Height:=3000;

    // Main_Form.Height:=2000;
end;

procedure TMain_Form.Structure_complexityShow(Sender: TObject);
begin
    tmp:=40;
    Main_Form.Frame_Graph1.Height:=PageControl1.Height-40;
    Main_Form.Frame_Graph1.width:=PageControl1.width-20;
    Main_Form.Frame_Graph1.top:=5;
    Frame_settings1.CheckBox2.checked:=false;

end;

procedure TMain_Form.Structure_complexityExit(Sender: TObject);
begin
   PageControl1.Height:=Main_Form.Height-70;
   PageControl1.Width:=Main_Form.Width-25;
  // GraphForm_.visible:=false;
 //  Graph_Settings.visible:=false;
   Graph_Text_Listing.visible:=false;
end;

procedure TMain_Form.Corret_Style_Click(Sender: TObject);
begin
  if path='' then MessageDlg('Не указан файл,   необходимо выбрать пункт главного меню: Файл->Открыть', mtError, [mbOk], 0)
             else
  Begin
   Redact.StartDronsProcClick(Sender);
   Main_Form.Statistik.Visible:=true;
  end;


end;

procedure TMain_Form.Open_Click(Sender: TObject);
begin
Load_fClick(Sender);
Main_Form.Statistik.Visible:=false;
end;

procedure TMain_Form.Save_CorrectFileClick(Sender: TObject);
begin
//Save_CorrectFile
 // OpenDialog1.InitialDir:=path_to_file.text;
  SaveDialog1.Execute;
  memo7.Lines.SaveToFile(SaveDialog1.FileName);
  SaveDialog1.FileName:='';
   SaveDialog1.InitialDir:='';
end;

procedure TMain_Form.AboutClick(Sender: TObject);
begin
Form2.visible:=true;
end;

procedure TMain_Form.Frame_Graph1PaintBox1Paint(Sender: TObject);
begin
Draw_GraphClick_;
end;

procedure TMain_Form.Frame_settings1Draw_GraphClick(Sender: TObject);
begin
Main_Form.Frame_Graph1.PaintBox1.Visible:=False;
Main_Form.Frame_Graph1.PaintBox1.Visible:=True;

Main_Form.Build_Phis_StructClick(Sender);
Main_Form.Draw_GraphClick(Sender);
end;

procedure TMain_Form.Frame_settings1CheckBox2Click(Sender: TObject);
begin
if Main_Form.Frame_settings1.CheckBox2.Checked=true then
     begin
       Main_Form.Frame51.visible:=true;
     end
                                                    else Main_Form.Frame51.visible:=false;


     FormResize(Sender);
     Frame51.Memo1.lines.LoadFromFile('B_E_Unit.txt');

end;

procedure TMain_Form.Frame_settings1CheckBox1Click(Sender: TObject);
begin
Frame_Graph1.PaintBox1.Visible:=false;
Frame_Graph1.PaintBox1.Visible:=true;

Draw_GraphClick(Sender);
end;

procedure TMain_Form.Frame_settings1vertClick(Sender: TObject);
begin
  { Graph_Text_Listing.width:=round(Main_Form.PageControl1.width/2);
    Graph_Text_Listing.left:=Main_Form.PageControl1.left;
    Graph_Text_Listing.top:=Main_Form.PageControl1.top+60;
    Graph_Text_Listing.Height:=Main_Form.PageControl1.Height-23;

    GraphForm_.width:=round(Main_Form.PageControl1.width/2-1);
    GraphForm_.Height:=Main_Form.PageControl1.Height-23;
    GraphForm_.left:=Main_Form.PageControl1.left+ Graph_Text_Listing.width+1;
    GraphForm_.top:=Main_Form.PageControl1.top+60;

    MainForm.Frame_settings1.visible:=true;     }
end;

procedure TMain_Form.Frame_settings1horClick(Sender: TObject);
begin
 { Graph_Text_Listing.width:=Main_Form.PageControl1.width;
    Graph_Text_Listing.left:=Main_Form.PageControl1.left;
    Graph_Text_Listing.top:=Main_Form.PageControl1.top+60;
    Graph_Text_Listing.Height:=round(Main_Form.PageControl1.Height/3);

    GraphForm_.width:=Main_Form.PageControl1.width;
    GraphForm_.Height:=Main_Form.PageControl1.Height-Graph_Text_Listing.Height-23;
    GraphForm_.left:=Main_Form.PageControl1.left;
    GraphForm_.top:=Graph_Text_Listing.top+Graph_Text_Listing.Height+1;

    MainForm.Frame_settings1.visible:=true;   }
end;

procedure TMain_Form.NastroykaCorClick(Sender: TObject);
var simb:char;
begin
Redact.Visible:=true;

end;

procedure TMain_Form.StatistikClick(Sender: TObject);
  var temp:integer;
begin
  Stat.visible:=true;
  Main_Form.AnalyseClick(Sender);
  stat.Edit1.text:=IntToStr(sum2);
  temp:=sum2;
  Redact.SaveMy;
  Dopolnitelniy;
  if sum2<temp then  sum2:=temp+2;
  stat.Edit2.text:=IntToStr(sum2);
  stat.memo1.Clear;
  stat.memo1.Lines.Add('     В результате произведенного редактирования итоговый стиль программы');
  stat.memo1.Lines.Add(' программы был увеличен.');
  stat.memo1.Lines.Add('__________________________________________________________________');
  stat.memo1.Lines.Add('     Были улучшены следующие характеристики программы:');
  stat.memo1.Lines.Add('         - Ясность (читабельность) ');
  stat.memo1.Lines.Add('         - Визуальное представление структур программы');
  stat.memo1.Lines.Add('__________________________________________________________________');
  stat.memo1.Lines.Add('     Были произведенны изменения следующих параметров стиля:');
  stat.memo1.Lines.Add('         - Процент отступов');
  stat.memo1.Lines.Add('         - Среднее количество символов в строке');
  stat.memo1.Lines.Add('         - Количество непустых строк');
  Main_Form.AnalyseClick(Sender);
end;
{---------------------------------}
procedure TMain_Form.Dopolnitelniy;       {***}
var diap1,diap2,diap3,diap4:boolean;
Begin
   Stroki;
   Symbols;
   Notes;
   Idents;
   LoadWardsToMass;
   ResWards;
   Super_Main;
   Visual.Visible:=True;

   AssignFile(file3,'Opimal.mrk');
      Reset(File3);
      for i:=1 to 10 do
        begin
            read(file3,w[i]); read(file3,lb[i]); read(file3,rb[i]); readln(file3);
        end;
      CloseFile(file3);

   for i:=1 to 10 do aux[i]:=round((lb[i]+rb[i])/2);

   diap1:=false;
   diap2:=false;
   diap3:=false;
   diap4:=false;

   for i:=1 to 10 do
     begin
        if results[i]<lb[i] then diap1:=true;
        if ((results[i]>=lb[i]) and (results[i]<=rb[i])) then diap2:=true;
        if ((results[i]>=rb[i]) and (results[i]<=rb[i]*2)) then diap3:=true;
        if results[i]>rb[i]*2 then diap4:=true;

        if diap1=true then m2[i]:=round(w[i]*(results[i]/lb[i]));
        if diap2=true then m2[i]:=w[i];
        if diap3=true then m2[i]:=round(w[i]*((rb[i]*2-results[i])/(rb[i]*2-rb[i])));
        if diap4=true then m2[i]:=0;

   diap1:=false;
   diap2:=false;
   diap3:=false;
   diap4:=false;

      {  f:=round((lb[i]+rb[i])/2);
        m2[i]:=w[i]-round(sqrt((f-results[i])*(f-results[i]))*w[i]/f); }
        if m2[i]<0 then m2[i]:=0;
     end;

   sum2:=0;
   for i:=1 to 10 do sum2:=sum2+m2[i];


end;
end.
