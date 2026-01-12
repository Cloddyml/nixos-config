{ config, lib, pkgs, ... }:

{
  boot = {
    loader = {
      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
        useOSProber = false;
        extraEntries = ''
          menuentry "Windows Boot Manager" {
            insmod part_gpt
            insmod fat
            search --no-floppy --fs-uuid --set=root F24E-08A1
            chainloader /EFI/Microsoft/Boot/bootmgfw.efi
          }
        '';
      };
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };

    };

    supportedFilesystems = [ "ntfs" ];

    # plymouth.enable = true;
  };
}
