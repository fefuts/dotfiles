#!/usr/bin/env bash

# Ask for the administrator password upfront
echo "About to install brew stuff"
sudo -v
# Keep-alive: update existing `sudo` time stamp until `macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


echo "Brewing...🍺\n"

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names



# Install more recent versions of some macOS tools.
brew install wget --with-iri
brew install vim --with-override-system-vi
brew install grep
brew install ffmpeg
brew install awscli
brew install openssh
brew install openssl
brew install screen
brew install rename
brew install ssh-copy-id
brew install tree
brew install vbindiff
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
brew install git
brew install git-flow
brew install git-lfs
brew install imagemagick --with-webp


#################################
# Apps
#################################
brew cask install iterm2
brew cask install sublime-text
brew cask install opera
brew cask install balenaetcher
brew cask install postman
brew cask install sequel-pro
brew cask install google-chrome
brew cask install imagealpha
brew cask install imageoptim
brew cask install virtualbox
brew cask install vlc
brew cask install spotify
brew cask install slack
brew cask install jumpcut
brew cask install transmission
brew cask install betterzip
brew cask install skype
brew cask install teamviewer
brew cask install whatsapp
brew cask install suspicious-package


# Quick Look
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install quicklook-csv
qlmanage -r

# Remove outdated versions from the cellar.
brew cleanup