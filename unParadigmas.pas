unit unParadigmas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmParadigmas = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParadigmas: TfrmParadigmas;

implementation

uses unSomaNumerosProc, unSomaNumerosFunc, unSomaNumerosOO, unSomarNumerosEvento;

{$R *.dfm}

procedure TfrmParadigmas.Button1Click(Sender: TObject);
begin
    SomaNumerosProcedural;
end;

procedure TfrmParadigmas.Button2Click(Sender: TObject);
begin
    if (not SomaNumerosFuncional) then
        ShowMessage('Algo deu errado!')
    else
        ShowMessage('Resultado deu certo!');
end;

procedure TfrmParadigmas.Button3Click(Sender: TObject);
begin
    SomaNumerosOO;
end;

procedure TfrmParadigmas.Button4Click(Sender: TObject);
begin
    frmSomarNumerosEvento.Show;
end;

end.
