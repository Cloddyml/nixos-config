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
	  enabled = false;
	  unit = "metric";
	  # key = ""; # API key
	  location = "Saint Petersburg, Russian Federation";
	};
      };
      
      menus.dashboard = {
        directories.enabled = false;
	stats.enable_gpu = false;
	
	shortcuts = {
	  left = {
	    shortcut4 = {
	      icon = "";
	      command = "wofi --show drun";
	      tooltip = "Search Apps";
	    };

	    shortcut1 = {
	      icon = "ℤ";
	      command = "zen";
	      tooltip = "Zen Browser";
	    };

		shortcut3 = {
			command = "vesktop";
		};
	  };
	};
      };
      
      theme = {
        bar.transparent = true;
        font = {
          name = "CaskaydiaCove NF";
	  size = "16px";
        };
      };
    };
  };
}
