{ inputs, pkgs, ... }:

{
  programs.ags = {
    enable = true;

    configDir = null;

    extraPackages = with pkgs; [
      inputs.astal.packages.${pkgs.stdenv.hostPlatform.system}.battery
      libgtop
      bluez
      #bluez-utils
      dart-sass
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
