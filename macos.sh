#!/bin/bash

# Ask for the administrator password upfront
echo "Installing macOS stuff 🍏..."
sudo -v
# Keep-alive: update existing `sudo` time stamp until `macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &



# Copy all files that go to home folder
cp -R ./macos/home-files/ $HOME/

# Run configs
source macos/ssh
source macos/transmission
source macos/time-machine
source macos/terminal
# source macos/spotlight
source macos/screen
source macos/safari
source macos/peripherals
source macos/mail
source macos/macos-tweaks
# source macos/google-chrome
source macos/general
source macos/finder
source macos/apple-apps
source macos/activity-monitor



# Kill affected applications
for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" \
	"Dock" "Finder" "Google Chrome" "Google Chrome Canary" "Mail" "Messages" \
	"Opera" "Safari" "SystemUIServer" "Terminal" \
	"Transmission" "iCal"; do
	killall "${app}" > /dev/null 2>&1
done
echo "Done. Note that some of these changes require a logout/restart to take effect."
echo "And remember to update $PATH env variable for requiring apps"
