program ITim.TicTacToe;

uses
  Vcl.Forms,
  ITim.TicTacToe.Main in 'ITim.TicTacToe.Main.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
