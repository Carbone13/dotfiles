#!/usr/bin/env sh

osascript -e 'tell application "System Preferences" to quit'
# Firewall
sudo defaults write /Library/Preferences/com.apple.alf globalstate -int 1
# Disable guest account login
sudo defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled -bool false
# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# running "Stop iTunes from responding to the keyboard media keys"
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/null

# running "Wipe all (default) app icons from the Dock"
# # This is only really useful when setting up a new Mac, or if you don’t use
# # the Dock to launch apps.
defaults write com.apple.dock persistent-apps -array ""

#running "Enable the 2D Dock"
#defaults write com.apple.dock no-glass -bool true

#running "Add a spacer to the left side of the Dock (where the applications are)"
#defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
#running "Add a spacer to the right side of the Dock (where the Trash is)"
#defaults write com.apple.dock persistent-others -array-add '{tile-data={}; tile-type="spacer-tile";}'

#running "allow 'locate' command"
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist > /dev/null 2>&1

#running "Set standby delay to 24 hours (default is 1 hour)"
sudo pmset -a standbydelay 86400

#running "Disable the sound effects on boot"
sudo nvram SystemAudioVolume=" "

#running "Menu bar: disable transparency"
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

#running "Set sidebar icon size to medium"
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

#running "Always show scrollbars"
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
# Possible values: `WhenScrolling`, `Automatic` and `Always`

# scrollbar click to jump
defaults write NSGlobalDomain AppleScrollerPagingBehavior -bool true

#running "Increase window resize speed for Cocoa applications"
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

#running "Save to disk (not to iCloud) by default"
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

#running "Automatically quit printer app once the print jobs complete"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

#running "Disable the “Are you sure you want to open this application?” dialog"
defaults write com.apple.LaunchServices LSQuarantine -bool false

# running "Disable automatic termination of inactive apps"
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

#running "Disable the crash reporter"
defaults write com.apple.CrashReporter DialogType -string "none"

#running "Set Help Viewer windows to non-floating mode"
defaults write com.apple.helpviewer DevMode -bool true

#running "Reveal IP, hostname, OS, etc. when clicking clock in login window"
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# running "Restart automatically if the computer freezes"
# sudo systemsetup -setrestartfreeze on

# running "Never go into computer sleep mode"
# sudo systemsetup -setcomputersleep Off > /dev/null

# running "Disable Notification Center and remove the menu bar icon"
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist > /dev/null 2>&1

#running "Disable smart quotes as they’re annoying when typing code"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

#running "Disable smart dashes as they’re annoying when typing code"
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

#running "Trackpad: enable tap to click for this user and for the login screen"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

#running "Increase sound quality for Bluetooth headphones/headsets"
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

#running "Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

#running "Set a blazingly fast keyboard repeat rate"
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# running "Disable auto-correct"
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

#running "Save screenshots to the desktop"
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

#running "Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)"
defaults write com.apple.screencapture type -string "png"

#running "Enable HiDPI display modes (requires restart)"
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

#running "Keep folders on top when sorting by name (version 10.12 and later)"
defaults write com.apple.finder _FXSortFoldersFirst -bool true

#running "Allow quitting via ⌘ + Q; doing so will also hide desktop icons"
defaults write com.apple.finder QuitMenuItem -bool true

#running "Show all filename extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

#running "Show status bar"
defaults write com.apple.finder ShowStatusBar -bool true

#running "Show path bar"
defaults write com.apple.finder ShowPathbar -bool true

#running "Allow text selection in Quick Look"
defaults write com.apple.finder QLEnableTextSelection -bool true

#running "When performing a search, search the current folder by default"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

#running "Disable the warning when changing a file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

#running "Enable spring loading for directories"
defaults write NSGlobalDomain com.apple.springing.enabled -bool true

#running "Remove the spring loading delay for directories"
defaults write NSGlobalDomain com.apple.springing.delay -float 0

#running "Avoid creating .DS_Store files on network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# running "Use list view in all Finder windows by default"
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
#defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Issue on macOS Mojave, for more info
# check https://github.com/mathiasbynens/dotfiles/issues/865
# running "Show the ~/Library folder"
# chflags nohidden ~/Library

#running "Set the icon size of Dock items to 58 pixels"
defaults write com.apple.dock tilesize -int 58

#running "Change minimize/maximize window effect to scale"
defaults write com.apple.dock mineffect -string "scale"

#running "Minimize windows into their application’s icon"
defaults write com.apple.dock minimize-to-application -bool true

#running "Enable spring loading for all Dock items"
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

#running "Show indicator lights for open applications in the Dock"
defaults write com.apple.dock show-process-indicators -bool true

#running "Don’t animate opening applications from the Dock"
defaults write com.apple.dock launchanim -bool false

#running "Speed up Mission Control animations"
defaults write com.apple.dock expose-animation-duration -float 0.1

#running "Don’t group windows by application in Mission Control"
# (i.e. use the old Exposé behavior instead)
defaults write com.apple.dock expose-group-by-app -bool false


# Dashboard is disabled by default on macOS Mojave,
# Moreover as of macOS 10.15 Catalina, Dashboard is removed macOS.

# running "Disable Dashboard"
# defaults write com.apple.dashboard mcx-disabled -bool true

# running "Don’t show Dashboard as a Space"
# defaults write com.apple.dock dashboard-in-overlay -bool true

#running "Don’t automatically rearrange Spaces based on most recent use"
defaults write com.apple.dock mru-spaces -bool false

#running "Remove the auto-hiding Dock delay"
defaults write com.apple.dock autohide-delay -float 0
#running "Remove the animation when hiding/showing the Dock"
defaults write com.apple.dock autohide-time-modifier -float 0.2

#running "Automatically hide and show the Dock"
defaults write com.apple.dock autohide -bool true

#running "Make Dock icons of hidden applications translucent"
defaults write com.apple.dock showhidden -bool true

#running "Make Dock more transparent"
defaults write com.apple.dock hide-mirror -bool true


# You can change the layout of your Launchpad
# Use the following command in Terminal to change the layout of Launchpad.
# Change ‘X’ into the number of icons to be showed in a single row (e.g 9).
#defaults write com.apple.dock springboard-columns -int 9

# Change ‘X’ to the number of rows (e.g 3).
#defaults write com.apple.dock springboard-rows -int 3

# Force a restart of Launchpad with the following command to apply the changes:
#defaults write com.apple.dock ResetLaunchPad -bool TRUE;killall Dock

#bot "Configuring Hot Corners"
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center

defaults write com.apple.dock wvous-tl-corner -int 0
defaults write com.apple.dock wvous-tl-modifier -int 0
defaults write com.apple.dock wvous-tr-corner -int 0
defaults write com.apple.dock wvous-tr-modifier -int 0
defaults write com.apple.dock wvous-br-corner -int 0
defaults write com.apple.dock wvous-br-modifier -int 0
# running "Only use UTF-8 in Terminal.app"
# defaults write com.apple.terminal StringEncodings -array 4
#
# running "Use a modified version of the Solarized Dark theme by default in Terminal.app"
# TERM_PROFILE='Solarized Dark xterm-256color';
# CURRENT_PROFILE="$(defaults read com.apple.terminal 'Default Window Settings')";
# if [ "${CURRENT_PROFILE}" != "${TERM_PROFILE}" ]; then
# 	open "./configs/${TERM_PROFILE}.terminal";
# 	sleep 1; # Wait a bit to make sure the theme is loaded
# 	defaults write com.apple.terminal 'Default Window Settings' -string "${TERM_PROFILE}";
# 	defaults write com.apple.terminal 'Startup Window Settings' -string "${TERM_PROFILE}";
# fi;

#running "Enable “focus follows mouse” for Terminal.app and all X11 apps"
# i.e. hover over a window and start `typing in it without clicking first
defaults write com.apple.terminal FocusFollowsMouse -bool true
#defaults write org.x.X11 wm_ffm -bool true

echo "System preferences set."
