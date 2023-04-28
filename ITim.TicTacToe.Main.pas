unit ITim.TicTacToe.Main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TMainForm = class(TForm)
  // Ячейки для расположения крестиков и ноликов
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton33: TSpeedButton;
    procedure MakeMove(ButtonNumber: Integer);
    procedure CheckResults;
    procedure FinishRound(ButtonNumber: Integer);
    procedure ClearField;
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton31Click(Sender: TObject);
    procedure SpeedButton32Click(Sender: TObject);
    procedure SpeedButton33Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  UserMove: Boolean;
  MoveSymbol: Char;

implementation

{$R *.dfm}

procedure TMainForm.MakeMove(ButtonNumber: Integer);
begin
  if UserMove=True then
  begin
    MoveSymbol:='X';
    UserMove:=False;
  end else
  begin
    MoveSymbol:='O';
    UserMove:=True;
  end;

  case ButtonNumber of
    11: begin
      SpeedButton11.Caption:=MoveSymbol;
      SpeedButton11.Enabled:=False;
    end;

    12: begin
      SpeedButton12.Caption:=MoveSymbol;
      SpeedButton12.Enabled:=False;
    end;

    13: begin
      SpeedButton13.Caption:=MoveSymbol;
      SpeedButton13.Enabled:=False;
    end;

    21: begin
      SpeedButton21.Caption:=MoveSymbol;
      SpeedButton21.Enabled:=False;
    end;

    22: begin
      SpeedButton22.Caption:=MoveSymbol;
      SpeedButton22.Enabled:=False;
    end;

    23: begin
      SpeedButton23.Caption:=MoveSymbol;
      SpeedButton23.Enabled:=False;
    end;

    31: begin
      SpeedButton31.Caption:=MoveSymbol;
      SpeedButton31.Enabled:=False;
    end;

    32: begin
      SpeedButton32.Caption:=MoveSymbol;
      SpeedButton32.Enabled:=False;
    end;

    33: begin
      SpeedButton33.Caption:=MoveSymbol;
      SpeedButton33.Enabled:=False;
    end;
  end;

  CheckResults;

end;

procedure TMainForm.CheckResults;
begin
  {$Region 'if-else: Проверки для горизонтальных линий'}
  // Горизонталь 1
  if SpeedButton11.Enabled = False and SpeedButton12.Enabled = False and SpeedButton13.Enabled = False then
    if (SpeedButton11.Caption = SpeedButton12.Caption) and (SpeedButton12.Caption = SpeedButton13.Caption) then
      FinishRound(11);

  // Горизонталь 2
  if SpeedButton21.Enabled = False and SpeedButton22.Enabled = False and SpeedButton23.Enabled = False then
    if (SpeedButton21.Caption = SpeedButton22.Caption) and (SpeedButton22.Caption = SpeedButton23.Caption) then
      FinishRound(22);

  // Горизонталь 3
  if SpeedButton31.Enabled = False and SpeedButton32.Enabled = False and SpeedButton33.Enabled = False then
    if (SpeedButton31.Caption = SpeedButton32.Caption) and (SpeedButton32.Caption = SpeedButton33.Caption) then
      FinishRound(33);
  {$EndRegion}

  {$Region 'if-else: Проверки для вертикальных линий'}
  // Вертикаль 1
  if SpeedButton11.Enabled = False and SpeedButton21.Enabled = False and SpeedButton31.Enabled = False then
    if (SpeedButton11.Caption = SpeedButton21.Caption) and (SpeedButton21.Caption = SpeedButton31.Caption) then
      FinishRound(11);

  // Вертикаль 2
  if SpeedButton12.Enabled = False and SpeedButton22.Enabled = False and SpeedButton32.Enabled = False then
    if (SpeedButton12.Caption = SpeedButton22.Caption) and (SpeedButton22.Caption = SpeedButton32.Caption) then
      FinishRound(22);

  // Вертикаль 3
  if SpeedButton13.Enabled = False and SpeedButton23.Enabled = False and SpeedButton33.Enabled = False then
    if (SpeedButton13.Caption = SpeedButton23.Caption) and (SpeedButton23.Caption = SpeedButton33.Caption) then
      FinishRound(33);
  {$EndRegion}

  {$Region 'if-else: Проверки для диагональных линий'}
  // Диагональ 1
  if SpeedButton11.Enabled = False and SpeedButton22.Enabled = False and SpeedButton33.Enabled = False then
    if (SpeedButton11.Caption = SpeedButton22.Caption) and (SpeedButton22.Caption = SpeedButton33.Caption) then
      FinishRound(22);

  // Диагональ 2
  if SpeedButton13.Enabled = False and SpeedButton22.Enabled = False and SpeedButton31.Enabled = False then
    if (SpeedButton13.Caption = SpeedButton22.Caption) and (SpeedButton22.Caption = SpeedButton31.Caption) then
      FinishRound(22);
  {$EndRegion}
end;

procedure TMainForm.FinishRound(ButtonNumber: Integer);
begin
  var
    WinnerSymbol, WinnerMessage: String;

  case ButtonNumber of
    11: begin
      WinnerSymbol:=SpeedButton11.Caption;
    end;

    22: begin
      WinnerSymbol:=SpeedButton22.Caption;
    end;

    33: begin
      WinnerSymbol:=SpeedButton33.Caption;
    end;
  end;
  WinnerMessage:='Игра окончена! Победил игрок ' + WinnerSymbol;
  ShowMessage(WinnerMessage);
  ClearField;
end;

procedure TMainForm.ClearField;
begin
  SpeedButton11.Caption:=''; SpeedButton11.Enabled:=True;
  SpeedButton12.Caption:=''; SpeedButton12.Enabled:=True;
  SpeedButton13.Caption:=''; SpeedButton13.Enabled:=True;
  SpeedButton21.Caption:=''; SpeedButton21.Enabled:=True;
  SpeedButton22.Caption:=''; SpeedButton22.Enabled:=True;
  SpeedButton23.Caption:=''; SpeedButton23.Enabled:=True;
  SpeedButton31.Caption:=''; SpeedButton31.Enabled:=True;
  SpeedButton32.Caption:=''; SpeedButton32.Enabled:=True;
  SpeedButton33.Caption:=''; SpeedButton33.Enabled:=True;
end;

{$Region 'SpeedButtonClick: Обработка нажатий кнопок'}

procedure TMainForm.SpeedButton11Click(Sender: TObject);
begin
  MakeMove(11);
end;

procedure TMainForm.SpeedButton12Click(Sender: TObject);
begin
  MakeMove(12);
end;

procedure TMainForm.SpeedButton13Click(Sender: TObject);
begin
  MakeMove(13);
end;

procedure TMainForm.SpeedButton21Click(Sender: TObject);
begin
  MakeMove(21);
end;

procedure TMainForm.SpeedButton22Click(Sender: TObject);
begin
  MakeMove(22);
end;

procedure TMainForm.SpeedButton23Click(Sender: TObject);
begin
  MakeMove(23);
end;

procedure TMainForm.SpeedButton31Click(Sender: TObject);
begin
  MakeMove(31);
end;

procedure TMainForm.SpeedButton32Click(Sender: TObject);
begin
  MakeMove(32);
end;

procedure TMainForm.SpeedButton33Click(Sender: TObject);
begin
  MakeMove(33);
end;

{$EndRegion}

{$Region 'FormCreate: Инициализация переменных при создании формы'}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  UserMove:=True;
end;

{$EndRegion}

end.
