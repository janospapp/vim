# My Vim plugins and vimrc

Clone the repo into ~/.vim/pack

```
git clone https://github.com/janospapp/vim ~/.vim/pack
cd ~/.vim/pack
git submodule init && git submodule update
```

or simply

`git clone --recurse-submodules https://github.com/janospapp/vim ~/.vim/pack`

Then create a symlink of .vimrc to your home directory

`ln -s ~/.vim/pack/.vimrc ~/.vimrc`

Adding new modules

`git submodule add <github repo path> plugins/start/<plugin-name>`
