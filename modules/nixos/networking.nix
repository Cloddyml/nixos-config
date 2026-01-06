{ config, lib, pkgs, ... }:

{
  networking = {
    networkmanager = {
      enable = true;
      wifi.powersave = false;
    };
    firewall.enable = true;
  };

  boot.kernelModules = [ "tun" ];
}
