program ITim.TicTacToe;

uses
  Vcl.Forms,
  ITim.TicTacToe.MainMenu in 'ITim.TicTacToe.MainMenu.pas' {MainMenuForm},
  ITim.TicTacToe.Game in 'ITim.TicTacToe.Game.pas' {GameForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainMenuForm, MainMenuForm);
  Application.CreateForm(TGameForm, GameForm);
  Application.Run;
end.
