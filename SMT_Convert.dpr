program SMT_Convert;

uses
  Vcl.Forms,
  form_Main in 'form_Main.pas' {Form1},
  form_Settings in 'form_Settings.pas' {formSettings},
  form_Resize in 'form_Resize.pas' {formResize};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformMain, formMain);
  Application.CreateForm(TformSettings, formSettings);
  Application.CreateForm(TformResize, formResize);
  Application.Run;
end.
