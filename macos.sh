#!/bin/bash
#
# Applies macOS settings (captured from the old laptop on 2026-09-26).
# Backs up every settings domain it touches before changing anything.
#
# Usage:
#   bash ~/macos.sh
#
# Restore a backup:
#   defaults import <domain> ~/.macos-backups/<timestamp>/<domain>.plist && killall Dock Finder SystemUIServer

DOMAINS=(
    com.apple.dock
    com.apple.finder
    NSGlobalDomain
    com.apple.AppleMultitouchTrackpad
    com.apple.driver.AppleBluetoothMultitouch.trackpad
    com.apple.menuextra.clock
)

# back up current settings
BACKUP_DIR="$HOME/.macos-backups/$(date +%Y-%m-%d_%H-%M-%S)"
mkdir -p "$BACKUP_DIR"
for domain in "${DOMAINS[@]}"; do
    # a domain that was never set has nothing to export, which is fine
    defaults export "$domain" "$BACKUP_DIR/$domain.plist" 2>/dev/null ||
        echo "Note: $domain has no saved settings yet, nothing to back up."
done
echo "Backed up current settings to $BACKUP_DIR"

# Dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock tilesize -int 42
defaults write com.apple.dock mru-spaces -bool false        # don't rearrange Spaces by recent use
defaults write com.apple.dock wvous-bl-corner -int 4        # bottom-left hot corner: Desktop
defaults write com.apple.dock wvous-br-corner -int 14       # bottom-right hot corner: Quick Note

# Finder
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"   # list view

# Keyboard
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain AppleKeyboardUIMode -int 2    # Tab moves focus between all controls
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool true
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool true

# Appearance: switch light/dark automatically
defaults write NSGlobalDomain AppleInterfaceStyleSwitchesAutomatically -bool true

# Trackpad: tap to click, right click, three-finger drag (built-in and Bluetooth)
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadRightClick -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true

# Menu bar clock: show seconds
defaults write com.apple.menuextra.clock ShowSeconds -bool true

# restart affected apps
killall Dock Finder SystemUIServer 2>/dev/null
echo "Done. Log out and back in for keyboard and trackpad changes to fully apply."
