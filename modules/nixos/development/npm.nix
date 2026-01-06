{
  environment = {
    variables = {
      NPM_CONFIG_PREFIX = "$HOME/.npm-global";
    };

    shellInit = ''
      export PATH="$HOME/.npm-global/bin:$PATH"
    '';
  };
}