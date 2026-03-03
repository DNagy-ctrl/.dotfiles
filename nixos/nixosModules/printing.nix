{ pkgs, ... }:
{
  services.printing = {
    enable = true;
    drivers = with pkgs; [
      gutenprint  # wide generic support
      hplip       # HP printers
    ];
  };

  # Enable printer discovery on the network
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };

  # Adding a printer:
  #  lpstat -r
  #  avahi-browse -t -r _ipp._tcp   # lists IPP/AirPrint printers
  #  lpadmin -p MyPrinter -E -v ipp://192.168.1.x/ipp/print -m everywhere
}
