unit Idade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    Button1: TButton;
    edAnoNasc: TEdit;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.Button1Click(Sender: TObject);

var
idade: Integer;
Data: TDateTime;
Ano, Mes, Dia: Word;

begin
  Data:= now; // data do dia
  DecodeDate( Data , Ano, Mes, Dia);

//  Memo1.Text := IntToStr(Mes+Dia);

  if edAnoNasc.Text = '' then
  begin
    ShowMessage('Digite o ano de nascimento: ' );
    edAnoNasc.SetFocus;
    exit;
  end;

  idade := Ano - StrToInt( edAnoNasc.Text );
  begin
    ShowMessage ('Sua idade é: '+IntToStr( idade )+#13+'');
  end;
   if idade >= 18 then
   begin
   Memo1.Text := ('Tem idade para tirar a Carteira de Habilitação.'+#13+'');
   exit;
  end;

  if idade >= 16  then
  begin
   Memo1.Text := ('Tem idade para votar'+#13+'');
   exit;
  end
  else
  begin
   Memo1.Text := ('Você ainda nao Tem Idade Para Votar nem tirar Carteira de Habilitação.'+#13+'');
   exit;
  end;


end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  Memo1.Text := '';
end;

end.
