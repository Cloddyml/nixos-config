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
      trustedInterfaces = [ "throne-tun" ];
      allowedUDPPortRanges = [
        { from = 50000; to = 65535; }
      ];
      allowedUDPPorts = [
        443
        3478
        3479
        3480
      ];
      checkReversePath = "loose";
    };
    nftables.enable = true;
  };

  boot.kernelModules = [ "tun" ];
}
