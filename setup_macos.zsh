#!/usr/bin/env zsh

# Sources:  https://mths.be/macos
#           https://macos-defaults.com/

echo "\n<<< 💻 Starting MacOS Setup 💻 >>>\n"

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'





############################################################
echo '\n⏳ Setting up "System Preferences"...'
############################################################

##############################
echo '\tSetting up "General"...'

# System Preferences > General > Appareance
# Light (Default)
#

# System Preferences > General > Accent colour
# Multicolour (Default)
#

# System Preferences > General > Highlight colour
# Accent Colour (Default)
#

# System Preferences > General > Sidebar icon size
# Medium (Default)
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

# System Preferences > General > Allow wallpaper tinting in windows
# true (Default)
#

#####

# System Preferences > General > Show scroll bars:
# Automaticcaly based on mouse or trackpad (Default)
defaults write NSGlobalDomain AppleShowScrollBars -string "Automatic"

# System Preferences > General > Click in the scroll bar to:
# Jump to the next page (Default)
#

#####

#TODO System Preferences > General > Default web browser:
# Google Chrome.app (Default: Safari.app)
#

#####

# System Preferences > General > Prefer tabs: $1 when opening documents
# In full screen (Default)
#

# System Preferences > General > Ask to keep changes when closing documents
# false (Default)
#

# System Preferences > General > Close windows when quitting an app
# true (Default)
#

# System Preferences > General > Recent items:
# 10 (Default)
#

# System Preferences > General > Allow Handoff between this Mac and your iCloud devices
# true (Default)
#



##############################
echo '\tSetting up "Desktop & Screen Saver"...'

#TODO System Preferences > Desktop & Screen Saver > Screen Saver > Show screen saver after
# true (Default)
#
# 2 Minutes (Default: 5 Minutes)
#

#TODO System Preferences > Desktop & Screen Saver > Screen Saver > Show with clock
# true (Default: false)
#



##############################
echo '\tSetting up "Dock & Menu Bar"...'

# Wipe all default app icons from the Dock
# This is only really useful when setting up a new Mac, or if you don’t use the Dock to launch apps.
#defaults write com.apple.dock persistent-apps -array


# System Preferences > Dock & Menu Bar > Dock > Size
# 48px (Default)
# https://macos-defaults.com/dock/tilesize.html
defaults write com.apple.dock tilesize -int 48

# System Preferences > Dock & Menu Bar > Dock > Magnification
# false (Default: true)
defaults write com.apple.dock mouse-over-hilite-stack -bool false

# System Preferences > Dock & Menu Bar > Dock > Position on screen
# Bottom (Default)
# https://macos-defaults.com/dock/orientation.html#set-to-bottom-default-value
defaults write com.apple.dock orientation -string "bottom"

# System Preferences > Dock & Menu Bar > Dock > Minimize window using
# Scale effect (Default: Genius effect)
defaults write com.apple.dock mineffect -string "scale"

# System Preferences > Dock & Menu Bar > Dock >Double-click a window's title bar to
# minimise (Default)
#

# System Preferences > Dock & Menu Bar > Dock > Minimize windows into application icon
# true (Default: false)
defaults write com.apple.dock minimize-to-application -bool true

# System Preferences > Dock & Menu Bar > Dock > Animate opening applications
# false (Default: true)
defaults write com.apple.dock launchanim -bool false

# System Preferences > Dock & Menu Bar > Dock > Automatically hide and show the Dock
# false (Default)
#defaults write com.apple.dock autohide -bool false

# System Preferences > Dock & Menu Bar > Show indicator for open applications
# true (Default)
#defaults write com.apple.dock show-process-indicators -bool true

# System Preferences > Dock & Menu Bar > Show recent applications in Dock
# false (Default: true)
defaults write com.apple.dock show-recents -bool false


# Enable spring loading for all Dock items
# https://macos-defaults.com/fr/misc/enable-spring-load-actions-on-all-items.html
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# Enable highlight hover effect for the grid view of a stack (Dock)
# true (Default: false)
#defaults write com.apple.dock mouse-over-hilite-stack -bool true

# Make Dock icons of hidden applications translucent
# true (Default: false)
defaults write com.apple.dock showhidden -bool true


# System Preferences > Dock & Menu Bar > Menu Bar > Automatically hide and show the menu bar on desktop
# false (Default)
#

# System Preferences > Dock & Menu Bar > Menu Bar > Automatically hide and show the menu bar in full screen
# false (Default: true)
defaults write NSGlobalDomain _HIHideMenuBar -bool false



##############################
echo '\tSetting up "Mission Control"...'

# System Preferences > Mission Control > Automatically rearrange Spaces based on most recent use
# false (Default: true) 
defaults write com.apple.dock mru-spaces -bool false

# System Preferences > Mission Control > When switching to an application, switch to a Space with open windows for the application
# true (Default)
#

# System Preferences > Mission Control > Group windows by application
# false (Default: true) 
defaults write com.apple.dock expose-group-by-app -bool false

# TODO System Preferences > Mission Control > Displays have separate Spaces
# false (Default: true) 
#



##############################
# echo '\tSetting up "Spotlight"...'

##############################
# echo '\tSetting up "Language & Region"...'

##############################
# echo '\tSetting up "Internet Accounts"...'

##############################
# echo '\tSetting up "Users & Groups"...'



##############################
echo '\tSetting up "Security & Privacy"...'

# Require password $1 after sleep or screen saver begins
# immediataly (Default: 5 minutes)
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0



##############################
echo '\tSetting up "Keyboard"...'

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false


# System Preferences > Keyboard > Keyboard > Key Repeat
defaults write NSGlobalDomain KeyRepeat -int 1

# System Preferences > Keyboard > Keyboard > Delay Until Repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# System Preferences > Keyboard > Keyboard > Adjust keyboard brightness in low light
# true (Default)
#

# TODO System Preferences > Keyboard > Keyboard > Turn keyboard backlight off after $1 of inactivity
# true (Default: false)
# 5 secs (Default)
#

# System Preferences > Keyboard > Keyboard > Press `fn` to
# Show Emoji & Symbols (Default)
#

# System Preferences > Keyboard > Keyboard > Use F1, F2, etc. keys as standart functions keys
# false (Default)
#


# System Preferences > Keyboard > Text > Correct spelling automatically
# true (Default)
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool true

# System Preferences > Keyboard > Text > Capitalise words automatically
# true (Default)
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool true

# System Preferences > Keyboard > Text > Add full stop with double-space
# true (Default)
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool true

# System Preferences > Keyboard > Text > Spelling:
# Automatic by Language (Default)
#

# System Preferences > Keyboard > Text > Use smart quotes and dashes
# true (Default)
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool true
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool true



##############################
echo '\tSetting up "Trackpad"...'

# System Preferences > Trackpad > Point & Click > Look up & data dectectors
# true (Default)
#
# Force Click with one finger (Default)
#

# System Preferences > Trackpad > Point & Click > Secondary click
# true (Default)
#
# Click or tap with two fingers (Default)
#

# System Preferences > Trackpad > Point & Click > Tap to click
# true (Default)
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# Enable tap to click for the login screen too
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# TODO System Preferences > Trackpad > Point & Click > Click
# Light
#

# System Preferences > Trackpad > Point & Click > Tracking speed
# Default
#

# System Preferences > Trackpad > Point & Click > Force Click and haptic feedback
# true (Default)
#


# System Preferences > Trackpad > Scroll & Zoom > Scroll direction: Natural
# true (Default)
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool true

# System Preferences > Trackpad > Scroll & Zoom > Zoom in or out
# true (Default)
#

# System Preferences > Trackpad > Scroll & Zoom > Smart zoom
# true (Default)
#

# System Preferences > Trackpad > Scroll & Zoom > Rotate
# true (Default)
#


# System Preferences > Trackpad > More Gestures > Swipe between pages
# true (Default)
#
# Scroll left or right with two fingers (Default)
#

# System Preferences > Trackpad > More Gestures > Swipe between full-screen apps
# true (Default)
#
# Scroll left or right with three fingers (Default)
#

# System Preferences > Trackpad > More Gestures > Notification Centre
# true (Default)
#

# System Preferences > Trackpad > More Gestures > Mission Control
# true (Default)
#
# Swipe up with three fingers (Default)
#

# System Preferences > Trackpad > More Gestures > App Exposé
# false (Default)
#

# System Preferences > Trackpad > More Gestures > Launchpad
# true (Default)
#

# System Preferences > Trackpad > More Gestures > Show desktop
# true (Default)
#



##############################
echo '\tSetting up "Battery"...'

# System Preferences > Battery > Battery > Turn display off after
# 2 min (Default: 5 min)
#

#...Default


# System Preferences > Battery > Power Adapter > Turn display off after
# 5 min (Default: 15 min)
#

#...Default





############################################################
echo '\n⏳ Setting up "Finder" preferences...'
############################################################

# Show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Remove the delay when hovering the toolbar title
# https://macos-defaults.com/finder/NSToolbarTitleViewRolloverDelay.html#set-to-0
defaults write NSGlobalDomain "NSToolbarTitleViewRolloverDelay" -float "0"


# Finder > Preferences > General > Show these items on the desktop:
# Hard disks
# false (Default)
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
# External disks
# true (Default)
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
# CDs, DVDs and iPods
# true (Default)
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
# Connected servers
# true (Default)
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Finder > Preferences > General > New Finder windows show:
# Desktop (Default: Recents)
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Desktop/"


# Finder > Preferences > Advanced > Show all filename extensions
# true (Default: false)
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder > Preferences > Advanced > Show warning before changing an extension
# false (Default: true)
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Finder > Preferences > Advanced > Show warning before removing from iCloud Drive
# true (Default)
#

# Finder > Preferences > Advanced > Show warning before emptying the bin
# false (Default: true)
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Finder > Preferences > Advanced > Remove items from the Bin after 30 days
# false (Default)
#

# Finder > Preferences > Advanced > Keep folders on top: In windows when sorting by name
# true (Default: false)
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Finder > Preferences > Advanced > When performing a search:
# Search the Current Folder (Default: Search This Mac)
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"


# Finder > View > Show Path Bar
# true (Default: false)
defaults write com.apple.finder ShowPathbar -bool true

# Finder > View > Show Status Bar
# true (Default: false)
defaults write com.apple.finder ShowStatusBar -bool true


# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `glyv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Automatically open a new Finder window when a volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true





############################################################
echo '\n⏳ Setting up "Desktop" preferences...'
############################################################

# Desktop > Show View Options > Stack By
# Kind (Default)
#

# TODO Desktop > Show View Options > Sort By
# Name (Default: Shared by)
#

# Desktop > Show View Options > Icon size
# 48 x 48
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize 48" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:iconSize 48" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:iconSize 48" ~/Library/Preferences/com.apple.finder.plist

# Desktop > Show View Options > Grid spacing
# 60px
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:gridSpacing 60" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:gridSpacing 60" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:gridSpacing 60" ~/Library/Preferences/com.apple.finder.plist

# Desktop > Show View Options > Text size
# 12px (Default)
#

# Desktop > Show View Options > Label position
# Right (Default: Bottom)
/usr/libexec/PlistBuddy -c "Set DesktopViewSettings:IconViewSettings:labelOnBottom false" ~/Library/Preferences/com.apple.finder.plist

# Desktop > Show View Options > Show item info
# false (Default)
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo false" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:showItemInfo false" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:showItemInfo false" ~/Library/Preferences/com.apple.finder.plist

# Desktop > Show View Options > Show icon preview
# true (Default)
#



# TODO a voir
# Enable snap-to-grid for icons on the desktop and in other icon views
# /usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
# /usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
# /usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist





############################################################
echo '\n⏳ Setting up "Screen" preferences...'
############################################################

# Save screenshots to /Pictures/Screenshots
mkdir ~/Pictures/Screenshots
defaults write com.apple.screencapture location -string "${HOME}/Pictures/Screenshots"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
# Default
defaults write com.apple.screencapture type -string "png"

# Disable shadow in screenshots
# true (Default: false)
defaults write com.apple.screencapture disable-shadow -bool true





############################################################
# Other #
############################################################

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true





############################################################
echo '\n⏳ Killing (restart) affected applications...'
############################################################

killall Finder
killall Dock





############################################################
echo "\n✅ Done. Note that some of these changes require a logout/restart to take effect."
############################################################

echo "\n<<< 💻 Ending MacOS Setup 💻 >>>\n"
