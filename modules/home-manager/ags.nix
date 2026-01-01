{ inputs, pkgs, ... }:

{
  programs.ags = {
    enable = true;

    configDir = null;

    extraPackages = with pkgs; [
      inputs.astal.packages.${pkgs.system}.battery
      fzf
    ];
  };
}
