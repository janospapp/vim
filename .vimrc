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
filetype plugin indent on
set nowrap
set encoding=utf8

nmap <C-n> :NERDTreeToggle<CR>
nmap <C-j> :NERDTreeFind<CR>
let NERDTreeShowHidden=1
let NERDTreeWinSize=45

" Set erlang syntax for erlSrc
au BufNewFile,BufRead *.erlSrc set syntax=erlang

let g:airline_theme='deus'

" Using FZF with ripgrep for searching inside files
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

nmap <C-p> :Files<CR>

" Storing swap files in a separate directory
set dir=~/.vim/swp//
