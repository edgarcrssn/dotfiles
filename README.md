# dotfiles

I **learned** about dotfiles at [dotfiles.eieio.xyz](http://dotfiles.eieio.xyz), and so can you!

## What's the purpose of this repo ?
This repo contains my **configuration files** and some scripts to **automatically install** my **preferred packages**, **applications** and keep my **System Preferences**.

It's very useful when I have to configure another Mac and helps me to save a lot of time by automating this task. 

It allows me to stop thinking about all my configurations settings anymore, which was overwhelming.

## How to use it ?

### Warning

Before starting using it, keep in my mind that some of these settings are purely personal.

You can use it if you like my configurations, but make sure to look at what each script do before running it.

For example, the [gitconfig](gitconfig) file contains only personal informations that you must change.

### Restore Instructions

1. `xcode-select --install` (Command Line Tools are required for Git and Homebrew)
2. `git clone https://github.com/edgarcrssn/dotfiles.git ~/.dotfiles`. We'll start with `https` but switch to `ssh` after everything is installed.
3. `cd ~/.dotfiles`
4. Do one last Software Audit by editing [Brewfile](Brewfile) directly.
5. Run [`./install`](install) then follow the instructions.
6. [Generate SSH key](https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh), add to GitHub, and switch remotes.

## Manual steps

- `System Preferences > Apple ID > iCloud > iCloud Drive > Options… > Desktop & Documents Folders` to true
- `System Preferences > General > Default web browser >` to Google Chrome.app
- `System Preferences > Desktop & Screen Saver > Screen Saver > Show screen after` to 2 Minutes
- `System Preferences > Desktop & Screen Saver > Screen Saver > Show with clock` to true
- `System Preferences > Dock & Menu Bar > Menu Bar > Automatically hide and show the menu bar in full screen` to false
- `System Preferences > Security & Privacy > General > Require password $1 after sleep or screen saver begins` to immediately
- `System Preferences > Keyboard > Keyboard > Turn keyboard backlight off after` to true and to 5 minutes
- `System Preferences > Trackpad > Point & Click > Click` to Light
- `System Preferences > Battery > Power Adapter > Turn display off after` to 5 minutes

- `Desktop > Right Click > Show View Options > Sort by` to Name

- `Finder > Preferences > Sidebar > Pictures & home (edgarcresson)` to true

- Dock: Rearrange applications

- Put Applications folder into Dock (next to Downloads). Then right click > `Display as Folder`