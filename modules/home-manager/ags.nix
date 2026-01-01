{ inputs, pkgs, ... }:

{
  programs.ags = {
    enable = true;

    configDir = null;

    extraPackages = with pkgs; [
      inputs.astal.packages.${pkgs.system}.battery
      fzf
      libgtop
      bluez
      #bluez-utils
      dart-sass
      upower
      gvfs
      gtksourceview3
      libsoup_3
    ];
  };

  home.packages = with pkgs; [
    wireplumber

    brightnessctl
    power-profiles-daemon
    grimblast
    wf-recorder
    hyprpicker
    hyprsunset
    btop
    matugen
    swww
  ];
}
