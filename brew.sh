#!/usr/bin/env bash

# Ask for the administrator password upfront
echo "About to install brew stuff"
sudo -v
# Keep-alive: update existing `sudo` time stamp until `macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


echo "Brewing...🍺"

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
echo 'Be sure to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.'
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
# with default names is an invalid option
echo 'Be sure to add `$(brew --prefix gnu-sed)/libexec/gnubin` to `$PATH`.'
brew install gnu-sed



# Install more recent versions of some macOS tools.
# --with-iri is an invalid option
# brew install wget --with-iri
# -with-override-system-vi invalid option
# brew install vim --with-override-system-vi
brew install grep
brew install ffmpeg
brew install awscli
brew install openssh
brew install openssl
brew install screen
# brew install rename
# brew install ssh-copy-id
# brew install tree
# brew install vbindiff
brew install mackup




# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install binwalk
brew install knock
brew install pngcheck
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install sshuttle
brew install autojump

# Install really useful binaries.
brew install q
brew install ack
brew install nvm
# brew install git-flow
brew install git-lfs
brew install imagemagick


#################################
# Apps
#################################
brew install --cask iterm2
# brew install --cask sublime-text
brew install --cask opera
brew install --cask balenaetcher
brew install --cask postman
# brew install --cask sequel-pro
brew install --cask google-chrome
brew install --cask imagealpha
brew install --cask imageoptim
brew install --cask vlc
# brew install --cask spotify
brew install --cask slack
brew install --cask jumpcut
brew install --cask transmission
brew install --cask skype
brew install --cask teamviewer
brew install --cask whatsapp
brew install --cask suspicious-package
brew install --cask google-photos-backup-and-sync
brew install --cask proxyman
brew install --cask lastpass
brew install --cask docker
# Putting this CLI here; not sure if k8 will look for docker when installing
brew install kubernetes-cli

# Quick Look
brew install --cask qlstephen
brew install --cask qlmarkdown
brew install --cask quicklook-json
brew install --cask quicklook-csv
qlmanage -r

# Remove outdated versions from the cellar.
brew cleanup