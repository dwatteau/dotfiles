# `defaults`

## Dock

Mojave: don't show recent apps in the Dock:
```sh
defaults write com.apple.dock show-recents 0
```

Group by app by default in Exposé:
```sh
defaults write com.apple.dock expose-group-by-app -bool true
```

Lighter effect when minimizing an app:
```sh
write com.apple.Dock mineffect scale
```

Lock the Dock size (*once you've properly configured it!*):
```sh
defaults write com.apple.dock size-immutable -bool true
```

## Finder

Display full POSIX path as Finder window title (restart Finder):
```sh
defaults write com.apple.Finder _FXShowPosixPathInTitle -bool true
```

Keep folders on top when sorting by name (restart Finder):
```sh
defaults write com.apple.Finder _FXSortFoldersFirst -bool true
```

Avoid creating `.DS_Store` files on network volumes or USB drives:
```sh
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
```

Don't show internal hard drives on the desktop:
```sh
defaults write com.apple.Finder ShowHardDrivesOnDesktop -bool false
```

## General UI

Disable Dashboard:
```sh
defaults write com.apple.dashboard mcx-disabled -bool true
```

Don’t automatically rearrange Spaces based on most recent use:
```sh
defaults write com.apple.dock mru-spaces -bool false
```

Always show battery percentage:
```sh
defaults write com.apple.menuextra.battery ShowPercent -string YES
```

## Rendering

Tolerable fonts on non-Retina displays with Mojave (restart the session):
```sh
# /!\ ONLY on non-Retina displays! /!\
defaults -currentHost write -globalDomain AppleFontSmoothing -int 2
```

## Safari

**XXX:** test this.

Default homepage is `about:blank`:
```sh
defaults write com.apple.Safari HomePage -string 'about:blank'
```

Always an empty page for new tabs and windows:
```sh
defaults write com.apple.Safari NewTabBehavior -int 1
defaults write com.apple.Safari NewWindowBehavior -int 1
```

Show the full URL in the address bar:
```sh
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
```

Prevent Safari from opening "safe" files automatically after downloading:
```sh
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
```

Always prefer tabs:
```sh
defaults write com.apple.Safari TabCreationPolicy -int 2
```

No search engine suggestions:
```sh
defaults write com.apple.Safari SuppressSearchSuggestions -bool true
```

Enable the Develop menu and the Web Inspector:
```sh
defaults write com.apple.Safari ShowDevelopMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
```

## Security

Require password immediately after sleep or screensaver begins:
```sh
defaults write com.apple.screensaver askForPassword -bool true
defaults write com.apple.screensaver askForPasswordDelay -int 0
```

Disable guest users:
```sh
sudo defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled -bool false
```

## Siri

Enable Siri, and put it into the status bar:
```sh
defaults write com.apple.assistant.support "Assistant Enabled" -bool true
defaults write com.apple.Siri StatusMenuVisible -bool true
```

Only use Siri in textual mode:
```sh
defaults write com.apple.Siri TypeToSiriEnabled -bool true
defaults write com.apple.Siri VoiceTriggerUserEnabled -bool false
```

## Sound

No user interface sound effects:
```sh
defaults write com.apple.systemsound com.apple.sound.uiaudio.enabled -bool false
```

No feedback when volume is changed:
```sh
defaults write NSGlobalDomain com.apple.sound.beep.feedback -bool false
```

No Mac startup sound:
```sh
sudo nvram SystemAudioVolume=" "
```

## Terminal

Terminal should only support UTF-8:
```sh
defaults write com.apple.terminal StringEncodings -array 4
```

## Trackpad

Tap to click:
```sh
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
```

Swipe down to switch any app to Exposé:
```sh
defaults write com.apple.dock showAppExposeGestureEnabled -bool true
```

**TODO:** everything else:
```sh
{
    Clicking = 1;
    DragLock = 0;
    Dragging = 0;
    TrackpadCornerSecondaryClick = 0;
    TrackpadFiveFingerPinchGesture = 2;
    TrackpadFourFingerHorizSwipeGesture = 2;
    TrackpadFourFingerPinchGesture = 2;
    TrackpadFourFingerVertSwipeGesture = 2;
    TrackpadHandResting = 1;
    TrackpadHorizScroll = 1;
    TrackpadMomentumScroll = 1;
    TrackpadPinch = 1;
    TrackpadRightClick = 1;
    TrackpadRotate = 1;
    TrackpadScroll = 1;
    TrackpadThreeFingerDrag = 1;
    TrackpadThreeFingerHorizSwipeGesture = 0;
    TrackpadThreeFingerTapGesture = 2;
    TrackpadThreeFingerVertSwipeGesture = 0;
    TrackpadTwoFingerDoubleTapGesture = 1;
    TrackpadTwoFingerFromRightEdgeSwipeGesture = 3;
    USBMouseStopsTrackpad = 0;
    UserPreferences = 1;
    version = 5;
}
```

## Various

No automatic spelling correction:
```sh
defaults write NSGlobalDomain WebAutomaticSpellingCorrectionEnabled -bool false
```

Calendar: always show week numbers:
```sh
defaults write com.apple.iCal "Show Week Numbers" -bool true
```

iTunes: don't automatically sync connected devices
```sh
defaults write com.apple.itunes dontAutomaticallySyncIPods -bool true
```

TextEdit: use plain text mode for new TextEdit documents
```sh
defaults write com.apple.TextEdit RichText -int 0
```
