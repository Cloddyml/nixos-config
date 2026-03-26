{
  services.openssh = {
    enable = true;

    settings = {
      MaxAuthTries = 3;
      LoginGraceTime = 20;
      X11Forwarding = false;
      AllowAgentForwarding = false;
      PasswordAuthentication = false;
      PermitRootLogin = "no";
      PubkeyAuthentication = true;
    };

    hostKeys = [
      {
        path = "/etc/ssh/ssh_host_ed25519_key";
        type = "ed25519";
      }
    ];
  };
}