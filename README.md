# My neovim configuration
I review this configuration annually, but occasionally I experiment with new plugins and make minor tweaks.

I prefer the default Neovim setup and aim to use as few plugins as possible.

I keep a list of features I want for the next version of my configuration and note anything I removed from this version to remember why it was dropped.

## Version 2024.1
This version is adapted from [Kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) and [Kickstart modular](https://github.com/dam9000/kickstart-modular.nvim) from [@dam9000](https://github.com/dam9000)


### Wants
- [ ] Get better at using marks and macros
- [ ] Diff integration
    - I tried it when I used neogit and its very useful
- [ ] Global options for some telescope pickers (eg. man_pages({ sections = { 'ALL' }}))
- [ ] A keymap to paste from "0 register

### Removed
- Git integration with Neogit
    - I prefer using git on the command line or with lazygit in tmux
