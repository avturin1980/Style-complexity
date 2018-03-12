program editor;

uses
  Forms,
  Main_Unit in 'Main_Unit.pas' {Main_Form},
  Values_computation in 'Style_computation\Values_computation.pas',
  Method_Definition in 'Style_computation\Method_Definition.pas' {Choice},
  Style_diagram in 'Style_computation\Style_diagram.pas' {Style_Graphics},
  Range_and_Weight_Correction in 'Style_computation\Range_and_Weight_Correction.pas' {Correction},
  Style_help_Information in 'Style_computation\Style_help_Information.pas' {Form6},
  Style_Values_Information in 'Style_computation\Style_Values_Information.pas' {Form8},
  Graph_Phisical_Structure in 'Structure_complexity\Graph_Phisical_Structure.pas',
  Visual_Construction in 'Structure_complexity\Visual_Construction.pas',
  Gaph_FormConstr in 'Gaph_FormConstr.pas' {GraphForm_},
  Graph_Text_Listing_ in 'Graph_Text_Listing_.pas' {Graph_Text_Listing},
  Unit1 in 'Style_correction\Unit1.pas' {Redact},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Frames\Unit3.pas' {Frame_settings: TFrame},
  Unit4 in 'Frames\Unit4.pas' {Frame_Graph: TFrame},
  Unit5 in 'Frames\Unit5.pas' {Frame5: TFrame},
  Unit7 in 'Style_correction\Unit7.pas' {stat},
  Unit10_ in 'Unit10_.pas' {Form9};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TMain_Form, Main_Form);
  Application.CreateForm(TChoice, Choice);
  Application.CreateForm(TStyle_Graphics, Style_Graphics);
  Application.CreateForm(TCorrection, Correction);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TGraphForm_, GraphForm_);
  Application.CreateForm(TGraph_Text_Listing, Graph_Text_Listing);
  Application.CreateForm(TRedact, Redact);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(Tstat, stat);
  Application.CreateForm(TForm9, Form9);
  Application.Run;
end.
