unit unSomarNumerosEvento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmSomarNumerosEvento = class(TForm)
    edtNumero1: TEdit;
    edtNumero2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    lbResultado: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSomarNumerosEvento: TfrmSomarNumerosEvento;

implementation

{$R *.dfm}

procedure TfrmSomarNumerosEvento.Button1Click(Sender: TObject);
var
    Num1, Num2, Resultado: Integer;
begin
    // Converte os valores digitados e calcula a soma
    try
        Num1 := StrToInt(edtNumero1.Text);
        Num2 := StrToInt(edtNumero2.Text);
        Resultado := Num1 + Num2;

        // Exibe o resultado no rótulo
        lbResultado.Caption := 'Resultado: ' + IntToStr(Resultado);
    except
        on E : Exception do
            lbResultado.Caption := 'Resultado: ' + E.Message;
    end;
end;

end.
