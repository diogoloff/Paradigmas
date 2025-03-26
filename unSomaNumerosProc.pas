unit unSomaNumerosProc;

interface

uses
    Winapi.Windows, System.SysUtils;

var
    num1, num2, resultado: Integer;

procedure SomaNumerosProcedural;

implementation

procedure PrepararConsole;
begin
    // Seta o padrão para ANSI
    SetConsoleOutputCP(1252);

    // Redirecionar entrada/saída padrão para o console
    AssignFile(Output, '');
    Rewrite(Output);
    AssignFile(Input, '');
    Reset(Input);
end;

procedure AguardarConsole;
begin
    WriteLn('Pressione Enter para fechar...');
    ReadLn;
end;

procedure LerNumeros;
begin
    Write('Digite o primeiro número: ');
    ReadLn(num1);
    Write('Digite o segundo número: ');
    ReadLn(num2);
end;

procedure CalcularSoma;
begin
    resultado := num1 + num2;
end;

procedure MostrarResultado;
begin
    WriteLn('A soma de ', num1, ' e ', num2, ' é: ', resultado);
end;

procedure SomaNumerosProcedural;
begin
    try
        // Alocar o console
        AllocConsole;
        PrepararConsole;

        try
            LerNumeros;
            CalcularSoma;
            MostrarResultado;
        except
            on E: Exception do
                WriteLn(E.ClassName, ': ', E.Message);
        end;

        AguardarConsole;
    finally
        // Liberar o console ao final
        FreeConsole;
    end;
end;

end.

