unit unSomaNumerosFunc;

interface

uses
    Winapi.Windows, System.SysUtils;

function SomaNumerosFuncional : Boolean;

implementation

function LerNumero(Prompt: string): Integer;
begin
    Write(Prompt);
    ReadLn(Result);
end;

function SomaNumerosFuncional : Boolean;
var
    Soma: TFunc<Integer, Integer, Integer>;
begin
    try
        // Alocar o console
        AllocConsole;

        // Seta o padr�o para ANSI
        SetConsoleOutputCP(1252);

        // Redirecionar entrada/sa�da padr�o para o console
        AssignFile(Output, '');
        Rewrite(Output);
        AssignFile(Input, '');
        Reset(Input);

        try
            // Definir a fun��o de soma como uma fun��o an�nima
            Soma := function(a, b: Integer): Integer
                    begin
                        Result := a + b;
                    end;

            // Trabalhar de forma funcional
            WriteLn('A soma �: ', Soma(LerNumero('Digite o primeiro n�mero: '), LerNumero('Digite o segundo n�mero: ')));

            Result := True;
        except
            on E: Exception do
            begin
                WriteLn(E.ClassName, ': ', E.Message);

                Result := False;
            end;
        end;

        WriteLn('Pressione Enter para fechar...');
        ReadLn;
    finally
        // Liberar o console ao final
        FreeConsole;
    end;
end;

end.
