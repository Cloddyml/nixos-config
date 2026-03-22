{ username, ... }:

{
  programs.noctalia-shell = {
    enable = true;

    settings = {
      bar = {
        position   = "top";
        density    = "default";
        showCapsule = true;

        widgets = {
          left = [
            { id = "Launcher"; }
            { id = "Workspace"; }
            { id = "ActiveWindow"; }
          ];
          center = [
            { id = "Clock"; }
          ];
          right = [
            { id = "SystemMonitor"; }
            { id = "Tray"; }
            { id = "Volume"; }
            { id = "Brightness"; }
            { id = "Battery"; }
            { id = "NotificationHistory"; }
            { id = "ControlCenter"; }
          ];
        };
      };

      general = {
        clockFormat   = "HH\nmm";
        lockOnSuspend = true;
      };

      ui = {
        fontDefault = "CaskaydiaCove NF";
      };

      idle = {
        enabled        = true;
        screenOffTimeout = 300;
        lockTimeout    = 300;
        suspendTimeout = 1800;
      };

      location = {
        name           = "Saint Petersburg, Russia";
        use12hourFormat = false;
        useFahrenheit  = false;
        weatherEnabled = false;
      };

      wallpaper = {
        enabled           = true;
        directory         = "/home/${username}/Pictures/Wallpapers";
        automationEnabled = false;
        fillMode          = "crop";
        overviewEnabled   = true;
      };

      colorSchemes = {
        useWallpaperColors = true;
        darkMode           = true;
      };

      appLauncher = {
        position       = "center";
        sortByMostUsed = true;
        terminalCommand = "alacritty -e";
        viewMode       = "list";
        showCategories = true;
      };

      notifications = {
        enabled                = true;
        location               = "top_right";
        normalUrgencyDuration  = 8;
        criticalUrgencyDuration = 15;
      };
    };
  };

  home.file.".cache/noctalia/wallpapers.json".text = builtins.toJSON {
    defaultWallpaper = "/home/${username}/Pictures/Wallpapers/wow.jpg";
    wallpapers       = {};
  };
}