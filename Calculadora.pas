unit Calculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.Buttons, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    btnporcent: TButton;
    btnCE: TButton;
    btnC: TButton;
    btndel: TButton;
    btnx2: TButton;
    btnraiz: TButton;
    btndiv: TButton;
    btn1x2: TButton;
    btn8: TButton;
    btn5: TButton;
    btn9: TButton;
    btn6: TButton;
    btnx: TButton;
    btnsub: TButton;
    btn4: TButton;
    btn7: TButton;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btnadd: TButton;
    btndot: TButton;
    btn0: TButton;
    btnaddsub: TButton;
    TResultado: TLabel;
    THistorico: TLabel;
    btnHistorico: TSpeedButton;
    plHistorico: TPanel;
    pnl2: TPanel;
    btnigual: TSpeedButton;
    ListaHistorico: TListView;
    procedure numeroClick(Sender: TObject);
    procedure btnaddClick(Sender: TObject);
    procedure btnsubClick(Sender: TObject);
    procedure btnxClick(Sender: TObject);
    procedure btndivClick(Sender: TObject);
    procedure btnraizClick(Sender: TObject);
    procedure btnx2Click(Sender: TObject);
    procedure btn1x2Click(Sender: TObject);
    procedure btnaddsubClick(Sender: TObject);
    procedure btnigualClick(Sender: TObject);
    procedure btnCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnporcentClick(Sender: TObject);
    procedure btndotClick(Sender: TObject);
    procedure Pressionamento(Sender: TObject; var Key: Char);
    procedure btndelClick(Sender: TObject);
    procedure Deletar(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnHistoricoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnigualMouseEnter(Sender: TObject);
    procedure btnigualMouseLeave(Sender: TObject);
   
  private
    { Private declarations }
    FOperacao: String;
    FTotal: Double;
    FUltimoNumero: Double;


    procedure Calcular;
    procedure Limpar;
    procedure Historico;



  public
    { Public declarations }
  end;


var
  Form1: TForm1;
  Key: Char;
  bExpandido: Boolean;

implementation


{$R *.dfm}



procedure TForm1.Pressionamento(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9'] then
 begin
   TResultado.Caption:= TResultado.Caption + Key;
 end;
end;

procedure TForm1.btn1x2Click(Sender: TObject);
begin
  FUltimoNumero := StrToFloat(TResultado.Caption);
  Calcular;
  FOperacao:= '¹/x';
  Historico;
end;

procedure TForm1.btnaddClick(Sender: TObject);
begin
  FUltimoNumero := StrToFloat(TResultado.Caption);
  Calcular;
  Foperacao := '+';
  Historico;
end;

procedure TForm1.btnaddsubClick(Sender: TObject);
begin
  FUltimoNumero := StrToFloat(TResultado.Caption);
  Calcular;
  FOperacao:= '+/-';
  Historico;
end;

procedure TForm1.btnCClick(Sender: TObject);
begin
  Limpar;
end;

procedure TForm1.btndelClick(Sender: TObject);
begin


  if Length(TResultado.Caption) > 0 then
  TResultado.Caption := Copy(TResultado.Caption, 1, Length(TResultado.Caption) - 1);
end;

procedure TForm1.Deletar(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Length(TResultado.Caption) > 0 then
  TResultado.Caption := Copy(TResultado.Caption, 1, Length(TResultado.Caption) - 1);
end;

procedure TForm1.btndivClick(Sender: TObject);
begin
  FUltimoNumero := StrToFloat(TResultado.Caption);
  Calcular;
  FOperacao:= '/';
  Historico;
end;

procedure TForm1.btndotClick(Sender: TObject);
begin
  TResultado.Caption := TResultado.Caption + '.';
  btndot.Enabled := False;
end;

procedure TForm1.btnHistoricoClick(Sender: TObject);
var
i: integer;
begin
  if bExpandido= True then
  begin
    for I := 181 downto 0 do
  plHistorico.Width:= I;
  end else
  begin
    for I := 0 to 181 do
  PLHistorico.Width := I;
  end;

  bExpandido:= not bExpandido;


end;

procedure TForm1.btnigualClick(Sender: TObject);
var
  Tabelahistorico: TStringList;
  I: Integer;
  ListItem: TListItem;
begin
  THistorico.Caption := THistorico.Caption + ' ' + TResultado.Caption + ' =';
  Calcular;
  Ftotal := 0;
  btndot.Enabled := True;

 Tabelahistorico := TStringList.Create;

  try
    Tabelahistorico.Add(THistorico.Caption + ' ' + TResultado.Caption);

    for I := 0 to Tabelahistorico.Count - 1 do
      begin
        ListItem := ListaHistorico.Items.Add;
        ListItem.Caption := Tabelahistorico[I];
      end;

  finally
    Tabelahistorico.Free;
  end;

end;

procedure TForm1.btnigualMouseEnter(Sender: TObject);
begin
  pnl2.Color := $00B8731F;
end;

procedure TForm1.btnigualMouseLeave(Sender: TObject);
begin
  pnl2.Color := $00DB8924;
end;

procedure TForm1.btnporcentClick(Sender: TObject);
begin
  FUltimoNumero := StrToFloat(TResultado.Caption);
  Calcular;
  Foperacao:= '%';
  Historico;
end;

procedure TForm1.btnraizClick(Sender: TObject);
begin
  FUltimoNumero := StrToFloat(TResultado.Caption);
  Calcular;
  FOperacao:= '²√x';
  Historico;
end;

procedure TForm1.btnsubClick(Sender: TObject);
begin
  FUltimoNumero := StrToFloat(TResultado.Caption);
  Calcular;
  FOperacao:= '-';
  Historico;
end;

procedure TForm1.btnx2Click(Sender: TObject);
begin
  FUltimoNumero := StrToFloat(TResultado.Caption);
  Calcular;
  FOperacao:= 'x²';
  Historico;
end;

procedure TForm1.btnxClick(Sender: TObject);
begin
  FUltimoNumero := StrToFloat(TResultado.Caption);
  Calcular;
  FOperacao:= '*';
  Historico;
end;

procedure TForm1.Calcular;
begin
  if FOperacao= '+' then
     FTotal := Ftotal + StrToFloat(TResultado.Caption);

  if FOperacao= '-' then
     FTotal := Ftotal - StrToFloat(TResultado.Caption);

  if FOperacao= '*' then
     FTotal := Ftotal * StrToFloat(TResultado.Caption);

  if FOperacao= '/' then

  if StrToFloat(TResultado.Caption)=0 then
      ShowMessage('Operação Invalída!')
  else
    FTotal := Ftotal / StrToFloat(TResultado.Caption);

  if FOperacao= 'x²' then
     FTotal := StrToFloat(TResultado.Caption)  * StrToFloat(TResultado.Caption);

  if FOperacao= '²√x' then
     FTotal := Sqrt(StrToFloat(TResultado.Caption));

  if FOperacao = '+/-' then
    begin
      FTotal := StrToFloat(TResultado.Caption);
      FTotal := -FTotal;
      TResultado.Caption := FloatToStr(FTotal);
    end;

  if FOperacao = '%' then
     FTotal:= (StrToFloat(TResultado.Caption) /100 ) * FTotal ;

  if FOperacao= '¹/x' then
     FTotal:= 1 / StrToFloat(TResultado.Caption);


  TResultado.Caption:= FloatToStr(Ftotal);
  FUltimoNumero:= 0;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Limpar;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  PLHistorico.Width:= 0
end;

procedure TForm1.Limpar;
begin
  FUltimoNumero := 0;
  TResultado.Caption := '0';
  FOperacao := '+';
  FTotal := 0;
  THistorico.Caption := '';
  btndot.Enabled := True;
end;

procedure TForm1.numeroClick(Sender: TObject);
begin
  if FUltimoNumero = 0 then
    TResultado.Caption := TButton(Sender).Caption
  else
    TResultado.Caption := TResultado.Caption + TButton(Sender).Caption;

  FUltimoNumero := StrToFloat(TResultado.Caption);


end;

procedure TForm1.Historico;
begin
  THistorico.Caption:= TResultado.Caption + ' ' + FOperacao;
end;

end.
