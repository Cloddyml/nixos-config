{ pkgs, ...}:

{
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;

    theme = "catppuccin-mocha-mauve";
  };

  environment.systemPackages = with pkgs; [
    (pkgs.catppuccin-sddm.override {
      flavor = "mocha";
      accent = "mauve";
    })
  ];
}
