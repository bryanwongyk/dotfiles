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

## Global agent instructions

Edit [AGENTS.md](AGENTS.md) to update personal instructions shared by coding agents.
Use each agent's user-level instructions file to load it.

- **Codex:** Point `~/.codex/AGENTS.md` at this repository's `AGENTS.md`. The existing `codex/AGENTS.md` path also resolves to the shared file.
- **Claude Code:** Add `@~/work/dotfiles/AGENTS.md` on its own line in `~/.claude/CLAUDE.md`. Adjust the import if the repository is checked out somewhere else.

## Additional installations
- Jetbrains Mono Nerd Font (for nvim)
- tmux tpm (package manager for tmux)
