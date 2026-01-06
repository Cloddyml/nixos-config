{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
        dracula-theme.theme-dracula
        yzhang.markdown-all-in-one
        jnoortheen.nix-ide
        charliermarsh.ruff
        vue.volar
      ];
      userSettings = {
        "[nix]"."editor.tabSize" = 2;
        "[lua]"."editor.tabSize" = 2;
        "[python]" = {
          "editor.formatOnSave" = true;
          "editor.CodeActionsOnSave" = {
            "source.fixAll" = "explicit";
            "source.organizeImports" = "explicit";
          };
          "editor.defaultFormatter" = "charliermarsh.ruff";
        };
        "workbench"."colorTheme" = "Dracula Theme";
        "editor" = {
          "fontFamily" = "'JetBrains Mono', 'monospace', monospace";
          "fontLigatures" = true;
        };
      };
    };
  };
}