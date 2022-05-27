# My Vim plugins and vimrc

## Install

Clone the repo into ~/.vim/pack

```
git clone https://github.com/janospapp/vim ~/.vim
cd ~/.vim
git submodule init && git submodule update
```

or simply

`git clone --recurse-submodules https://github.com/janospapp/vim ~/.vim`

Then create a symlink of .vimrc to your home directory

`ln -s ~/.vim/.vimrc ~/.vimrc`

## Add new modules

`git submodule add <github repo path> pack/plugins/start/<plugin-name>`

## Code completion

The 'deoplete' plugin is used for code completion. It requires these two plugins:
* nvim-yarp
* vim-hug-neovim-rpc

And it requires these two python packages to be installed

```
pip install pynvim
pip install neovim
```
