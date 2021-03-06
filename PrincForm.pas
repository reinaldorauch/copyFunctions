﻿unit PrincForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    BtnFor: TButton;
    BtnWhile: TButton;
    BtnRepeat: TButton;
    procedure BtnForClick(Sender: TObject);
    procedure BtnWhileClick(Sender: TObject);
    procedure BtnRepeatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function CopyFor(str: string; offset, len: word): string;
    function CopyWhile(str: string; offset, len: word): string;
    function CopyRepeat(str: string; offset, len: word): string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.BtnForClick(Sender: TObject);
begin
  showMessage(copyFor('Lorem Ipsum Amen', 3, 4));
end;

procedure TForm1.BtnRepeatClick(Sender: TObject);
begin
  showMessage(copyRepeat('Lorem Ipsum Amen', 3, 4));
end;

procedure TForm1.BtnWhileClick(Sender: TObject);
begin
  showMessage(copyWhile('Lorem Ipsum Amen', 3, 4));
end;

function TForm1.CopyFor(str: string; offset, len: word): string;
var
  i: Integer;
  strLen: Integer;
begin
  len := len + offset - 1;

  strLen := Length(str);

  if(len > strLen) then
    len := strLen;

  if(offset < 1) then
    offset := 1; { Certo é usar Exception }

  result := '';

  for i := offset to len do
    result := result + str[i];    
end;

function TForm1.CopyWhile(str: string; offset, len: word): string;
var
  i: Integer;
begin

  if(offset < 1) then
    offset := 1; { Certo é usar Exception }

  result := '';

  len := len + offset;

  i := offset;

  while((i < len) AND (i < Length(str))) do
  begin
    result := result + str[i];
    inc(i);
  end;
end;

function TForm1.CopyRepeat(str: string; offset, len: word): string;
var
  i: Integer;
begin

  if(offset < 1) then
    offset := 1; { Certo é usar Exception }

  result := '';
  i := offset;

  len := len + offset;

  if(len > 0) then
    repeat
      result := result + str[i];
      inc(i);
    until (i = len) OR (i = Length(str))
  else
    result := '';

end;

end.