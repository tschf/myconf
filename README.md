# Setup Files for a new System

This is inspired by Jess Frazelles [dotfiles repository](https://github.com/jessfraz/dotfiles). Basically, it's for when I get a new system I can easily re-instate my preferred environment.

## Manual Tasks

Terminal delayed start could be an issue. See: https://askubuntu.com/questions/911946/terminal-appears-with-much-delay-when-shortcut-is-used/912250

FlatPak config - after package install make task:

```
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

Restart is required after this

## Author

Trent Schafer, 2019
