{ config, pkgs, ... }:

{
  swapDevices = [ {
    device = "/var/lib/swapfile";
    size = 16*1024;  # Mb
  } ];

  nix.settings.experimental-features = ["nix-command"];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  time.timeZone = "Africa/Johannesburg";
  i18n.defaultLocale = "en_ZA.UTF-8";

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?

  # Allow proprietary software.
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    vim
    parallel
    glibc
    zip
    openfortivpn
    p7zip
    xclip
    gnumake
    cron
    file
    pinentry
    fd
    pamixer
    gnupg
    polkit
    openssh
    polkit_gnome
    gcc
    unzip
    git
    luajitPackages.luarocks-nix
    pass
    go
    julia
    zulu
    luarocks
    zip
    lshw
    libgcc
    pulseaudio
    picom
    blueman
    betterlockscreen
    python311
    python311Packages.pip
    polybar
    i3
    ffmpeg
    i3ipc-glib
    nodejs
    tmux
    fish
    bat
    trash-cli
    ripgrep
    btop
    nvtop
    efibootmgr
    rustup
    refind
    libpqxx
    postgresql.lib
    postgresql
    wget
  ];

  # Package overrides.
  nixpkgs.config = {
    packageOverrides = pkgs: rec {
      polybar = pkgs.polybar.override {
        i3Support = true;
        pulseSupport = true;
      };
    };
  };

  programs.steam.enable = true;
  programs.neovim.enable = true;

  services.fail2ban.enable = true;
  services.fail2ban.maxretry = 5;
  services.fail2ban.bantime = "-1";

  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ];
}