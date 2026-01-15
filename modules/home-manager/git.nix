{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Couguar";
        email = "ingluemlp@gmail.com";
      };

      init = {
        defaultBranch = "main";
      };

      url."ssh://git@github.com/".insteadOf = "https://github.com/";

      core = {
        sshCommand = "ssh -i ~/.ssh/github";
      };
    };
  };
}
