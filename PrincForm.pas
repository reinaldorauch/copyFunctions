unit PrincForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    BtnFor: TButton;
    BtnWhile: TButton;
    BtnRepeat: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
    function CopyFor(str: string; offset, length: word): string;
    function CopyWhile(str: string; offset, length: word): string;
    function CopyRepeat(str: string; offset, length: word): string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

function TForm1.CopyFor(str: string; offset, length: word): string;
var
  i: Integer;
  strLen: Integer;
begin
  result := '';

  length := length + offset;

  strLen := Length(str);

  if(length > strLen) then
    length := strLen;

  for i := offset to length do
    result := result + str[i];    
end;

function TForm1.CopyRepeat(str: string; offset, length: word): string;
begin

end;

function TForm1.CopyWhile(str: string; offset, length: word): string;
begin

end;

end.
