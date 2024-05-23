#!/bin/bash

ln -sfv "$(pwd)/nvim/init.lua" ~/.config/nvim/init.lua
ln -sfv "$(pwd)/nvim/lua" ~/.config/nvim/lua
ln -sfv "$(pwd)/rust/config.toml" ~/.cargo/config.toml
ln -sfv "$(pwd)/rust/rustfmt.toml" ~/.cargo/rustfmt.toml
ln -sfv "$(pwd)/bash/rc" ~/.bashrc
ln -sfv "$(pwd)/bash/profile" ~/.bash_profile

if [ ! -f ~/.local/share/nvim/site/autoload/plug.vim ]; then
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi

#nvim -c "PlugInstall<\CR>" -c "qa"
