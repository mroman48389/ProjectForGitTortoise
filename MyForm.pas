unit MyForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, CurvyControls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    CurvyEdit1: TCurvyEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    counter : byte;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  label1.caption := 'I just clicked a button.';
  inc(counter);
  curvyEdit1.Text := intToStr(counter);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  label1.caption := '';
  button1.caption := 'Click me please';
  counter := 0;
end;

end.
