# 🗃️ .dotfiles

<div align="center">

```markdown
<div align="center">
👋 Welcome to my personal dotfiles!
Continuous change is to be expected...
</div>
```

[![ShellCheck](https://github.com/AlexvZyl/.dotfiles/workflows/ShellCheck/badge.svg)](https://github.com/AlexvZyl/.dotfiles/actions?workflow=ShellCheck)
![Size](https://img.shields.io/github/repo-size/AlexvZyl/.dotfiles?style=flat)

![image](https://github.com/user-attachments/assets/93510f93-1cc9-4cce-ac6a-d762a11a68c6)

![image](https://github.com/user-attachments/assets/4883b6af-5ab8-4dd0-a764-4ea29f857c48)

<details>
<summary>Old Single Bar config</summary>

![image](https://github.com/AlexvZyl/.dotfiles/assets/81622310/6b87665e-7b22-459f-8fed-50dbbb50f95d)

![image](https://github.com/AlexvZyl/.dotfiles/assets/81622310/a6fe2b0b-29c4-45ec-a4cb-2e348a6d1a1d)

</details>

<details>
<summary>Old Two Bar Config</summary>

![image](https://github.com/AlexvZyl/.dotfiles/assets/81622310/09d5adbe-63fb-435a-824f-39fca06e56d8)

![image](https://github.com/AlexvZyl/.dotfiles/assets/81622310/55c6780d-00c6-451e-9066-0a2365c4d7a9)

</details>

</div>

The configuration files for my NixOS (Linux) desktop.

> [!WARNING]
> The NixOS setup is still under heavy development and probably not going to follow the "pure" nix way.

<!--
# Privacy and Security

Although I like making it look as nice as possible, these dotfiles also try to be private and secure.  This is a journey, not a destination, and I am open to any input.

<details>

<summary>🛡️ Measures</summary>

</br>

- [Scripts](https://github.com/AlexvZyl/.dotfiles/tree/main/.scripts/security) I sometimes use.
- Manually keeping system up to date (`yay -Syyu`)
- Malware scanning and database updating ([clamav](https://github.com/Cisco-Talos/clamav))
- Firewall ([ufw](https://wiki.archlinux.org/title/Uncomplicated_Firewall))
- Ban IPs ([fail2ban](https://github.com/fail2ban/fail2ban))
- Using [Signal](https://github.com/signalapp) (when possible)
- Hosting API keys in a private repo
- Hardened firefox ([user.js](https://github.com/arkenfox/user.js/))
- I could install the hardened Linux kernel, but that might be slightly pedantic...
- Port scanning ([nmap](https://github.com/nmap/nmap), [rustscan](https://github.com/RustScan/RustScan))

</details>

# Theme

Personally, I want a balance between good looking colors that stand out, and soft colors that will not destroy my eyes.

> [!NOTE]
> Not using nordic at the moment.

The theme is based on my Neovim plugin, [nordic.nvim](https://github.com/AlexvZyl/nordic.nvim).  It is a warmer and darker version of the [Nord](https://www.nordtheme.com/) color palette.  Wallpapers can be found at [this ImageGoNord repo](https://github.com/linuxdotexe/nordic-wallpapers) (they "norded" some nice wallpapers) and [locally](https://github.com/AlexvZyl/.dotfiles/tree/main/.wallpapers).

# Showcase

Some screenshots showing off the desktop and rice, as well as some custom features I wrote.  Everything has to be *just right*.  I am spending 8+ hours a day on this working, so it might as well be a nice experience.

<details>

<summary>📷 Preview</summary>

</br>

*Launcher via [rofi](https://github.com/adi1090x/rofi):*
![image](https://github.com/AlexvZyl/.dotfiles/assets/81622310/550f9794-0531-4f27-9433-ea76ceb381d7)

*Lock screen via [betterlockscreen](https://github.com/betterlockscreen/betterlockscreen):*
![image](https://github.com/AlexvZyl/.dotfiles/assets/81622310/4eeeab12-e778-4f6b-aa19-4f6e0cbe9767)

</details>
-->

# Key Bindings

A few notes on the bindings:

- Keys combined with the `Super` key are reserved for OS and WM related actions.
- Arrows and `hjkl` keys are interchangeable.

<details>

<summary>⌨️ Bindings table</summary>

</br>

|  Binding  |  Action   |
| :-------: | :-------: |
| Super + d | App launcher |
| Super + s | Tmux sessions |
| Super + p | Powermenu |
| Super + t | Terminal |
| Super + T | Tor terminal session |
| Super + n | Neovim |
| Super + m | Resource monitor (BTop++) |
| Super + g | GPU monitor (NVtop) |
| Super + R | Toggle read mode |
| Super + tab | Windows |
| Super + Arrow | Cycle windows |
| Super + Shift + Arrow | Move window |
| Super + Number | Go to workspace |
| Super + r | Newsboat |
| Super + w | iwctl |

</details>

# Neovim Config

The config can be found [here](https://github.com/AlexvZyl/nvim).

<!--
---
<div align="center">
*These dotfiles were briefly featured in a [TechHut Video](https://youtu.be/7NLtw26qJtU?t=789).*
</div>
-->
