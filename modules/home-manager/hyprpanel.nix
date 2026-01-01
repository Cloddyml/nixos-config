{ inputs, ... }:

{
  programs.hyprpanel = {
    enable = true;
    settings = {
      layout = {
        bar.layouts = {
	  "0" = {
	    left = [ "dashboard" "workspaces" ];
	    middle = [ "media" ];
	    right = [ "volume" "systray" "notifications" ];
	  };
	};
      };

      bar.launcher.autoDetectIcon = true;
      bar.launcher.icon = "";
      bar.workspaces.show_icons = true;
      bar.clock = {
        format = "%H:%M";
      };

      menus.clock = {
        time = {
	  military = true;
	};

	weather = {
	  enable = false;
	  unit = "metric";
	  # key = ""; # API key
	  location = "Saint Petersburg, Russian Federation";
	};
      };

      menus.dashboard.directories.enabled = false;
      menus.dashboard.stats.enable_gpu = true;

      theme.bar.transparent = true;

      theme.font = {
        name = "CaskaydiaCove NF";
	size = "16px";
      };
    };
  };
}
