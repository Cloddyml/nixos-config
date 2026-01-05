{ config, ... }:

{
  programs.fastfetch = {
    enable = true;

    settings = {
      logo = {
        type = "auto";
	padding = {
	  top = 1;
	  left = 2;
	};
      };
      
      display = {
        separator = " > ";
      };

      modules = [
        "title"
	"separator"
	"os"
	"host"
	"kernel"
	"uptime"
	"packages"
	"shell"
	"display"
	"de"
	"wm"
	"terminal"
	"cpu"
	"gpu"
	"memory"
	"disk"
	"colors"
      ];
    };
  };
}
