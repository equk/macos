#!/usr/bin/env bash
##
#
# Script to install commandline components using HomeBrew
# Used with a new install of macos
#
# ref: http://brew.sh/
#
##
# equk 2017 - equk.co.uk
##

# If brew not installed run install script
if [[ ! -e /usr/local/bin/brew ]]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update HomeBrew
brew update
# Upgrade Components
brew upgrade

# Install CLI Tools
brew install coreutils
brew install moreutils
brew install findutils
brew install wget
brew install gnu-sed --with-default-names
brew install bash
brew install bash-completion2
brew install zsh
brew install zsh-completion
brew install vim --with-override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install xpdf
brew install xz
brew install ack
brew install dark-mode
brew install git
brew install git-lfs
brew install p7zip

# Add bash to shells
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
    echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
fi;

# Add zsh to shells & set as default
if ! fgrep -q '/usr/local/bin/zsh' /etc/shells; then
    echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells;
    chsh -s /usr/local/bin/zsh;
fi;

brew cleanup
