{
  programs.firefox = {
    enable = false;
  };

  programs.zen-browser = {
    enable = true;

    policies.ExtensionSettings = {
        #
      };
    };

  programs.chromium = {
    enable = true;
  };
}
