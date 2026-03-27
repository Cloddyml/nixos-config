{
  services.cliphist = {
    enable = true;
    allowImages = true;
    extraOptions = [
      "-max-dedupe-search" "10"
      "-max-items" "500"
    ];
  };

  services.wl-clip-persist = {
    enable = true;
    clipboardType = "regular";
  };
}