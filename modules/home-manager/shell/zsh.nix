{ config, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    initContent = ''
      fastfetch
    '';

    shellAliases = {
      cat = "bat";

      ga = "git add";
      gc = "git commit";
      gp = "git push";
      gs = "git status";
      gd = "git diff";
    };

    dotDir = "${config.home.homeDirectory}/.config/zsh";

    history = {
      size = 1000;
      path = "${config.home.homeDirectory}/.local/share/zsh/history";
    };
  };
}
