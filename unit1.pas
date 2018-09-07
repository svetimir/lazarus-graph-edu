unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TASeries, Forms, Controls,
  Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Chart1: TChart;
    Chart1LineSeries1: TLineSeries;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  i : integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
     randomize;
     Chart1LineSeries1.Clear();
     for i:=1 to 100 do
     begin
          Chart1LineSeries1.AddXY(i*0.1,sin(random(4)*i*0.1));
     end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
     Chart1LineSeries1.Clear();
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
     Chart1.SaveToBitmapFile('output-graph.bmp');
end;

end.

