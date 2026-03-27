{
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      # Video
      "video/mp4"       = "mpv.desktop";
      "video/mkv"       = "mpv.desktop";
      "video/webm"      = "mpv.desktop";
      "video/x-matroska" = "mpv.desktop";

      # Audio
      "audio/mpeg"      = "mpv.desktop";
      "audio/flac"      = "mpv.desktop";
      "audio/ogg"       = "mpv.desktop";

      # Images
      "image/jpeg"      = "imv.desktop";
      "image/png"       = "imv.desktop";
      "image/gif"       = "imv.desktop";
      "image/webp"      = "imv.desktop";

      # PDF
      "application/pdf" = "zen-beta.desktop";

      # Text and code
      "text/plain"                = "code.desktop";
      "text/x-python"             = "code.desktop";
      "text/x-rust"               = "code.desktop";
      "text/x-csrc"               = "code.desktop";
      "application/x-shellscript" = "code.desktop";
      "text/x-shellscript"        = "code.desktop";
      "application/json"          = "code.desktop";
      "application/x-yaml"        = "code.desktop";

      # Archives
      "application/zip"             = "org.gnome.FileRoller.desktop";
      "application/x-tar"           = "org.gnome.FileRoller.desktop";
      "application/gzip"            = "org.gnome.FileRoller.desktop";
      "application/x-7z-compressed" = "org.gnome.FileRoller.desktop";

      # Browser
      "text/html"              = "zen-beta.desktop";
      "x-scheme-handler/http"  = "zen-beta.desktop";
      "x-scheme-handler/https" = "zen-beta.desktop";

      # Torrents
      "application/x-bittorrent" = "org.qbittorrent.qBittorrent.desktop";
      "x-scheme-handler/magnet"  = "org.qbittorrent.qBittorrent.desktop";
    };

    associations.added = {
      "text/plain"       = "code.desktop";
      "text/x-python"    = "code.desktop";
      "text/x-rust"      = "code.desktop";
      "text/x-csrc"      = "code.desktop";
      "text/x-script.sh" = "code.desktop";
      "application/json" = "code.desktop";
      "application/x-yaml" = "code.desktop";
    };
  };
  xdg.configFile."mimeapps.list".force = true;
}