# Introduction

A simple dotfile that gives sensible defaults, is fast and looks beautiful out of the box.

# Installation

```
mkdir -p ~/code/devbox
cd ~/code/devbox
git clone https://github.com/neerajsingh0101/laptop.git
cd laptop
```

* Before executing the next command, please note that the next command will back up your existing `~/.zshrc` file as `.zshrc-bkp-YYYYMMDDSSSS`. So
  If you don't want to use the dotfiles, you can revert to the backed-up `.zshrc` file.
* Execute `./bin/setup`.
* You can run `./bin/setup` any number of times.

# Wezterm as the terminal emulator
* Open [wezterm](https://wezterm.org/) instead of opening terminal or iterm application. Some of you might be using [ghostyy](https://ghostty.org/) or [warp](https://www.warp.dev/). Still I'll say that you should give wezterm a try for a few days.
* Shift + Opt governs wezterm configuration.
* Shift + Opt + i -> split in left hand side and right hand side
* Shift + Opt + u -> split in top side and bottom side
* Shift + Opt + h -> navigate to left pane
* Shift + Opt + l -> navigate to right pane
* Shift + Opt + j -> navigate to the bottom pane
* Shift + Opt + k -> navigate to the top pane
* Shift + Opt + w -> Quit the pane
* Shift + Opt + up arrow -> resize the pane and move up
* Shift + Opt + down arrow -> resize the pane and move down
* Shift + Opt + left arrow -> resize the pane and move left
* Shift + Opt + right arrow -> resize the pane and move right
* By default the tab name is the name of the running process. Press Shift + Opt + r to rename the tab.

# z command
`z` is a smarter `cd` command. It comes from [zoxide](https://github.com/ajeetdsouza/zoxide).
https://neerajsingh0909.neetorecord.com/watch/c75ffff803ac46963f7d

# Atuin for better shell history
https://neerajsingh0909.neetorecord.com/watch/446ad749cd466d5db54b

# Listing things
`ls`,`ll`, `la` https://neerajsingh0909.neetorecord.com/watch/dd8d9bba322b10a3e9b4

# fkill
https://neerajsingh0909.neetorecord.com/watch/d958a719c843d692e732

# Git usage
`gs`, `gap`, `gp`, `gpl`, `gcm`, `gr`

# sysinfo
* `sysinfo` lists info about your laptop.

# Override with dotfiles.local
This `zshrc` file loads `~/.dotfiles.local` if it exists. Use this file for private information like environment variables that shouldn't be committed to the repo.

# Mac defaults

Have a look at `bin/customize-macos`. I don't like every time Mac boots it makes a sound. So I've disabled it.
Similarly I don't like warning when I'm emptying trash.
