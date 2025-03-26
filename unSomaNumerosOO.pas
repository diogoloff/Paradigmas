unit unSomaNumerosOO;

interface

uses
    Winapi.Windows, System.SysUtils;

type
    TCalculadora = class
    private
        FNumero1: Integer;
        FNumero2: Integer;

        procedure SetNumero1(Value: Integer);
        procedure SetNumero2(Value: Integer);
        function GetNumero1: Integer;
        function GetNumero2: Integer;
    public
        constructor Create; overload;
        constructor Create(ANumero1, ANumero2: Integer); overload;

        function Somar: Integer;

        property Numero1: Integer read GetNumero1 write SetNumero1;
        property Numero2: Integer read GetNumero2 write SetNumero2;
    end;

procedure SomaNumerosOO;

implementation

{ TCalculadora }

constructor TCalculadora.Create;
begin
    FNumero1 := 0;
    FNumero2 := 0;
end;

constructor TCalculadora.Create(ANumero1, ANumero2: Integer);
begin
    FNumero1 := ANumero1;
    FNumero2 := ANumero2;
end;

function TCalculadora.GetNumero1: Integer;
begin
    Result := FNumero1;
end;

function TCalculadora.GetNumero2: Integer;
begin
    Result := FNumero2;
end;

procedure TCalculadora.SetNumero1(Value: Integer);
begin
    FNumero1 := Value;
end;

procedure TCalculadora.SetNumero2(Value: Integer);
begin
    FNumero2 := Value;
end;

function TCalculadora.Somar: Integer;
begin
    Result := FNumero1 + FNumero2;
end;

procedure SomaNumerosOO;
var
    Calculadora: TCalculadora;
    Num1, Num2 : Integer;
    Resultado : Integer;
begin
    try
        // Alocar o console
        AllocConsole;

        // Seta o padrão para ANSI
        SetConsoleOutputCP(1252);

        // Redirecionar entrada/saída padrão para o console
        AssignFile(Output, '');
        Rewrite(Output);
        AssignFile(Input, '');
        Reset(Input);

        try
            // Solicitar números ao usuário
            Write('Digite o primeiro número: ');
            ReadLn(Num1);
            Write('Digite o segundo número: ');
            ReadLn(Num2);

            //Calculadora := TCalculadora.Create(Num1, Num2);
            Calculadora := TCalculadora.Create;
            try
                Calculadora.Numero1 := Num1;
                Calculadora.Numero2 := Num2;
                Resultado := Calculadora.Somar;
                WriteLn('A soma de ', Num1, ' e ', Num2, ' é: ', Resultado);
            finally
                Calculadora.Free; // Liberar a memória
            end;
        except
            on E: Exception do
                WriteLn(E.ClassName, ': ', E.Message);
        end;

        WriteLn('Pressione Enter para fechar...');
        ReadLn;
    finally
        // Liberar o console ao final
        FreeConsole;
    end;
end;

end.
