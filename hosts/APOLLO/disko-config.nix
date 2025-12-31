{
  disko.devices = {
    disk = {
      main = {
        type = "disk";
        device = "/dev/nvme0n1";
	content = {
	  type = "gpt";
	  partitions = {
	    # EFI Boot partition (1GB)
	    ESP = {
	      priority = 1;
	      size = "1G";
	      type = "EF00"; # EFI System Partition
	      content = {
                type = "filesystem";
	        format = "vfat";
		mountpoint = "/boot";
		mountOptions = [
		  "defaults"
		  "umask=0077" # Restriction of access rights
		];
	      };
	    };

	    # Swap partition (16 GB)
	    swap = {
	      priority = 2;
	      size = "16G";
	      content = {
	        type = "swap";
	        discardPolicy = "both"; # TRIM for SSD
	        resumeDevice = true; # Hibernation support
              };
	    };

	    # Root partition
	    root = {
	      priority = 3;
	      size = "100%";
	      content = {
	        type = "filesystem";
	        format = "ext4";
	        mountpoint = "/";
	        mountOptions = [
		  "defaults"
		  "noatime" # Optimisation for SSD
	        ];
              };
            };
          };
        };
      };
    };
  };
}
