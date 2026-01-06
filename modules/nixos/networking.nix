{ hostname, ... }:

{
  networking = {
    hostName = hostname;
    networkmanager = {
      enable = true;
      wifi.powersave = false;
    };
    firewall.enable = true;
  };

  boot.kernelModules = [ "tun" ];
}
