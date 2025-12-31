{ config, lib, pkgs, ... }:

{
  fonts = {
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-color-emoji

      nerd-fonts.jetbrains-mono
      nerd-fonts.fira-code
      nerd-fonts.iosevka

      inter
      roboto

      font-awesome
      material-design-icons
    ];

    fontconfig = {
      enable = true;
      defaultFonts = {
        serif = [ "Noto Serif" ];
	sansSerif = [ "Inter" "Noto Sans" ];
	monospace = [ "JetBrainsMono Nerd Font" ];
	emoji = [ "Noto Color Emoji" ];
      };
    };
  };
}
