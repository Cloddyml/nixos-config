let
  settings  = import ./settings.nix;
  keybinds  = import ./keybinds.nix;
in
{
  programs.niri.config = settings + "\n" + keybinds;
}