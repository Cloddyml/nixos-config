{ pkgs, ... }:

{
  programs.mpv = {
    enable = true;

    scripts = with pkgs.mpvScripts; [
      uosc
      thumbfast
      sponsorblock
    ];

    scriptOpts = {
      uosc = {
        timeline_style = "line";
        controls = "menu,gap,subtitles,<has_many_audio>audio,<has_many_video>video,<has_many_edition>editions,<stream>stream-quality,gap,space,speed,gap,prev,items,next,gap,fullscreen";
        color = "foreground=FFFFFF,foreground_text=000000,background=000000,background_text=FFFFFF";
        opacity = "timeline=0.9,controls=0,speed=0.5";
        border_radius = 4;
      };

      thumbfast = {
        hwdec = true;
        max_height = 200;
        max_width = 200;
      };
    };

    config = {
      profile   = "high-quality";
      ytdl-format = "bestvideo+bestaudio";

      # GPU ускорение
      hwdec   = "auto-safe";
      vo      = "gpu-next";

      # Кэш
      cache          = true;
      cache-secs     = 60;
      demuxer-max-bytes = "150MiB";

      # Субтитры
      sub-auto   = "fuzzy";
      sub-font   = "JetBrainsMono Nerd Font";
      sub-font-size = 42;
    };
  };
}
