{
  boot.loader.grub.extraEntries = ''
    menuentry "Windows Boot Manager" {
      insmod part_gpt
      insmod fat
      search --no-floppy --fs-uuid --set=root F24E-08A1
      chainloader /EFI/Microsoft/Boot/bootmgfw.efi
    }
  '';
}