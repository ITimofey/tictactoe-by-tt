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
  // Реализовать проверку результатов игры
  exit;
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
