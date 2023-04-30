unit ITim.TicTacToe.MainMenu;

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
  Vcl.Buttons,
  Vcl.StdCtrls,
  ITim.TicTacToe.Game;

type
  TMainMenuForm = class(TForm)
    ButtonStart: TSpeedButton;
    ButtonExit: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure ButtonExitClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainMenuForm: TMainMenuForm;
  GameForm: TGameForm;

implementation

{$R *.dfm}

procedure TMainMenuForm.ButtonStartClick(Sender: TObject);
begin
  GameForm.Show;
end;

procedure TMainMenuForm.ButtonExitClick(Sender: TObject);
begin
  MainMenuForm.Close;
end;

end.
