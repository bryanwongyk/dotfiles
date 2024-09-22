# Bryan's dotfiles
## Configs.
- oh-my-zsh
- nvim
- tmux
- iTerm2
    - To install: Import the profile from settings
    - To update: Export the profile from settings
- Homebrew
    - To install: Run `brew bundle` 
    - To update: Run `brew bundle dump --describe`

### Adding config.
1. If creating the config. file here for the first time simply do that. If copying an existing config. file, use `cp -r <path> .` e.g. `cp -r ~/.zshrc .` and delete/rename the original file.
2. Using GNU Stow run `stow .` to create symlinks 
3. Check symlinks were set up properly
    a. `cd $PATH`
    b. `ls -lah | grep -e ".zshrc" -e ".tmux"` (add more greps if required)

## Additional installations
- Jetbrains Mono Nerd Font (for nvim)
