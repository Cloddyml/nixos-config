{ hostname, ... }:

{
  networking = {
    hostName = hostname;
    networkmanager = {
      enable = true;
      wifi.powersave = false;
    };
    firewall = {
      enable = true;
      allowedTCPPorts = [ 22 ];
    };
  };

  boot.kernelModules = [ "tun" ];
}
