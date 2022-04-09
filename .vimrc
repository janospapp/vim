highlight ExtraWhitespace ctermbg=red guibg=darkgreen
match ExtraWhitespace /\s\+$\| \+\ze\t/
set tabstop=4
set shiftwidth=4
set expandtab
set listchars=tab:>-
set list
set number
set rnu

set tags=./tags;/
set ignorecase

syntax on
set nowrap
set encoding=utf8

nmap <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeWinSize=45

" Set erlang syntax for erlSrc
au BufNewFile,BufRead *.erlSrc set syntax=erlang

" What to show in statusline. (if modified/if readonly/filename/position %
set statusline=%m%r%f\ %p%%
" Make statusline always visible
set laststatus=2
