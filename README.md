# macos dotfiles


                 ###
               ####
               ###                    Distro: OS X 10.12.3
       #######    #######             Kernel: Darwin
     ######################           Uptime: xx:xx
    #####################             Shell: /usr/local/bin/zsh
    ####################              Terminal: xterm-256color Apple Terminal
    ####################              CPU: Intel Core i7-2620M CPU @ 2.70GHz
    #####################             Memory: 4 GB
     ######################           HomeBrew: 39 kegs, 27,034 files, 633.4M
      ####################
        ################
         ####     #####

## Sierra

* 31-01-2017 - added zshrc (based on zsh from linux)
* 31-01-2017 - added brew_install.sh
* 31-01-2017 - added equk.terminal (terminal config)
* 01-02-2017 - added prefs.sh
* 02-02-2017 - added chrome ramdisk script

## bin/chrome

Google Chrome RamDisk Script

* Mounts a ramdisk on /Volumes/RamDisk
* Creates a custom profile folder
* Executes chrome using ramdisk for cache & custom profile folder

This is based on my linux chrome script

## prefs.sh

Script to set macos system preferences.

Also includes various tweaks.

Basically does everything needed to tweak a new install of macos.

Includes Performance tweaks, input tweaks, appearance tweaks, privacy tweaks, optimization for SSD etc.

Has a lot of personal tweaks (like only having running apps in the autohide dock)

## brew_install

Installs HomeBrew

ref: http://brew.sh/

Then installs CLI components:

    coreutils
    moreutils
    findutils
    wget
    gnu-sed
    bash
    bash-completion2
    zsh
    zsh-completion
    vim
    grep
    openssh
    screen
    xpdf
    xz
    ack
    dark-mode
    git
    git-lfs
    p7zip

Sets zsh as default shell

Also replaces outdated components that come with macos (vim, grep, openssh, screen) with updated variants.

## old

The old/ folder contains configs and tweaks from 2011
