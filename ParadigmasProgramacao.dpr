program ParadigmasProgramacao;

uses
  Vcl.Forms,
  unParadigmas in 'unParadigmas.pas' {frmParadigmas},
  unSomaNumerosProc in 'unSomaNumerosProc.pas',
  unSomaNumerosFunc in 'unSomaNumerosFunc.pas',
  unSomaNumerosOO in 'unSomaNumerosOO.pas',
  unSomarNumerosEvento in 'unSomarNumerosEvento.pas' {frmSomarNumerosEvento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmParadigmas, frmParadigmas);
  Application.CreateForm(TfrmSomarNumerosEvento, frmSomarNumerosEvento);
  Application.Run;
end.
