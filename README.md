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

### To consider
- Syntax checker: [syntastic](https://github.com/vim-syntastic/syntastic)
- code completion: [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)
- good ol' TextMate snippets: [engine](https://github.com/sirver/ultisnips) & [DB](https://github.com/honza/vim-snippets)
- color scheme: [solarized](https://github.com/altercation/vim-colors-solarized)
- status & tab lines: [airline](https://github.com/vim-airline/vim-airline)
