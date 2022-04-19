# My Vim plugins and vimrc

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

Adding new modules

`git submodule add <github repo path> pack/plugins/start/<plugin-name>`
