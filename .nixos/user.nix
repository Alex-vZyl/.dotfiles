{ pkgs, ... }:

{
  users.groups.alex = {};
  users.users.alex = {
    description = "Alexander van Zyl";
    group = "alex";
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" "docker"];
    packages = with pkgs; [
      adwaita-icon-theme
      xfce.thunar
      xournalpp
      shared-mime-info
      slack
      discord
      zulu8
      loc
      librewolf
      flameshot
      onlyoffice-bin
      newsboat
      vlc
      kalker
      obs-studio
      rofi
      gource
      rofi-pass
      thunderbird
      inkscape
      pavucontrol
      kitty
      gparted
      pinta
      speedtest-cli
      pfetch
      lazygit
      lazydocker
      zoxide
      zathura
      ranger
      glab
      awscli2
      feh
      gh
      arandr
      #rustdesk # Failing...
      nautilus
      starship
      cava
      tree-sitter
      wezterm
      chromium
      dua
      (python311.withPackages(ps: with ps; [pytz]))
      signal-desktop
      gimp
      thunderbird-bin
      birdtray
      dig
      sshs
      termshark
      tshark

      vscode
    ];
  };

  security.sudo.extraRules = [
    {
      users = [ "alex" ];
      commands = [
        { command = "/usr/bin/s-tui"; options = [ "NOPASSWD" ]; }
        { command = "/usr/bin/fail2ban-client"; options = [ "NOPASSWD" ]; }
      ];
    }
  ];

  system.activationScripts.binbash = {
    deps = [ "binsh" ];
    text = ''
        if [ ! -f "/bin/bash" ]; then
            ln -s "/bin/sh" "/bin/bash"
        fi
    '';
  };

  virtualisation.docker.enable = true;
}
