# dotfiles
Linux dotfiles and scripts I use.

# KDE refresh rate on lock screen
Go to System Settings → Colors & Themes → Login Screen (SDDM) and clicking Apply Plasma Settings…

# Software I need to install

- Kate
- markdownpart
- DoubleCmd
- Vivaldi
    - Bitwarden
    - SponsorBlock
    - Default Zoom for Google Workspace
- NVidia
- PCloud
- dotfiles and keyboard layout
- neovim
- plexmediaserver
- qBittorrent
- timeshift
- globalprotect / gpclient `sudo pacman -Sy globalprotect-openconnect`
- viber
- KRDC (try different acceleration options if there are issues)
- gitui or lazygit

# Reinstall TODO
- Make sure to keep id_rsa
- mkdir /media/data/
    - sudo chown igors:igors data
    - chown -R igors:igors data
    - /etc/fstab
- Add these to .bashrc:

```sh
alias ll='ls -al --color=auto'
alias rdp="xfreerdp /u:<username> /v:<remote-hostame> /size:1920x1200"
```

# Steam shader compilation

1. Enable Background Shader Pre-Caching.

You can find this option if you navigate to Downloads / Shader Pre-Caching and enable both “Enable Shader Pre-Caching" and “Allow background processing of Vulkan shaders.” 

However, to my knowledge, by default, this will only uses a single CPU core or two threads, but it is possible to specify how many CPU threads Steam should should be using for background shader compilation.

2. Change CPU / Threads Used By Steam For Background Shader Compilation

vim .local/share/Steam/steam_dev.cfg
```
unShaderBackgroundProcessingThreads 9
```
The number representing how many CPU threads, you want Steam to use for background shader compilation. 

3. Restart Steam. 
