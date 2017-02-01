# macos dotfiles

:green_apple:

## Sierra

I'm in the process of updating this repo for sierra configs from a macbook (not used macos since 2011).

Still not sure if I will stick with macos as I have spent more time booting into linux for the features of a tiling window manager etc.

I'm sure in time I will use macos a bit more again altho I really see it as a casual OS at the moment.

## dotfiles

So far I only have zsh related configs but will probably be adding more over the coming days/weeks.

* 31-01-2017 - added zshrc (based on zsh from linux)
* 31-01-2017 - added brew_install.sh
* 31-01-2017 - added equk.terminal (terminal config)
* 01-02-2017 - added prefs.sh

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
