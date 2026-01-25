# Installation

* `cd ~/code/laptop` or wherever you want to clone this repo.
* `git clone git@github.com:neerajsingh0101/dotfiles.git`
* `cd dotfiles`
* Execute `./install.sh`.
* Execute `./macos/set-defaults.sh`.

# Wezterm
* Open wezterm instead of terminal or iterm.
* Ctrl + Option gonverns wezterm
* Ctrl + Option + i -> split in two left hand side and right hand side
* Ctrl + Option + u -> split in two top side and bottom side
* Ctrl + Option + h -> navigatge to left pane
* Ctrl + Option + l -> navigatge to right pane
* Ctrl + Option + j -> navigatge to the bottom pane
* Ctrl + Option + k -> navigatge to the top pane
* Ctrl + Option + w -> Quit the pane
* Ctrl + Option + up arrow -> resize the pane and move up
* Ctrl + Option + down arrow -> resize the pane and move down
* Ctrl + Option + left arrow -> resize the pane and move left
* Ctrl + Option + right arrow -> resize the pane and move right

# Highlights

* cd a few times but after that you can just type `z bigbinary` and it will take you to
   `~/code/bigbinary-stuff/bigbinary-website`. With the usage of `z` you don't have to type
   the full path. More info at https://github.com/ajeetdsouza/zoxide.
* Git usage: `gs`, `gap`, `gp`, `gpl`, `gcm`, `gr`
* Using Atuin: https://neerajsingh0909.neetorecord.com/watch/446ad749cd466d5db54b
* listing things: `ls`,`ll`, `la` https://neerajsingh0909.neetorecord.com/watch/dd8d9bba322b10a3e9b4
* fkill: https://neerajsingh0909.neetorecord.com/watch/d958a719c843d692e732
* sysinfo lists info about your laptop.
* Command `dotfiles` opens up dotfiles.
* Command `dotfilesd` will get you to the directory of dotfiles.


# Private Configuration

The `zshrc` file loads `~/.dotfiles.local` if it exists. Use this file for private information like environment variables that shouldn't be committed to the repo.

# Overrides for Neeraj

Have a `wezterm_local.lua` file next to `.wezterm.lua` with the following content.

```
return {
  pane_resize_keys = {
    left = "9",  -- your special keyboard emits this for left
    right = "0", -- your special keyboard emits this for right
  },
}
```