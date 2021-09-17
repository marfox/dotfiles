# dotfiles
Configuration files for:
- BASH (Debian, Manjaro, MacOS)
- tmux
- vim

## Vim scripts
Debian should already ship them, otherwise just:
```bash
sudo apt-get install vim-scripts
```

For Manjaro and other distros, fire:
```bash
git clone git@github.com:preservim/nerdcommenter.git ~/.vim/pack/$USER/opt/nerd-commenter
git clone git@github.com:vim-scripts/indentpython.vim.git ~/.vim/pack/$USER/opt/python-indent
git clone git@github.com:vim-scripts/Colour-Sampler-Pack.git ~/.vim/pack/$USER/opt/color_sampler_pack
```

Look for additional scripts & plugins at https://vimawesome.com/
