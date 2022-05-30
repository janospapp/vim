highlight ExtraWhitespace ctermbg=red guibg=darkgreen
match ExtraWhitespace /\s\+$\| \+\ze\t/
set tabstop=4
set shiftwidth=4
set expandtab
set listchars=tab:>-
set list
set number
set rnu

autocmd FileType ruby setlocal ts=2 sw=2
autocmd FileType json setlocal ts=2 sw=2
autocmd FileType yaml setlocal ts=2 sw=2

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
let NERDTreeChDirMode=2

let g:airline_theme='deus'

" Storing swap files in a separate directory
set dir=~/.vim/swp//

" Searching files and text
nmap <C-p> :Files<CR>
nmap <C-f> :Rg<CR>
" Searching for the current word under the cursor
nmap <leader>f :Rg \b<C-R><C-W>\b<CR>

" Toggling the quickfix window with Ctrl+x
function! ToggleQuickFix()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
        copen
    else
        cclose
    endif
endfunction

nnoremap <C-x> :call ToggleQuickFix()<CR>

" Configure ALE options
let g:ale_set_highlights = 0
let g:ale_completion_enabled = 1

let g:ale_ruby_rubocop_executable = 'bundle'
let g:ale_ruby_rubocop_options = '-c .rubocop.yml'

let g:ale_linters = {
\  'ruby': ['solargraph', 'standardrb', 'rubocop'],
\}

let g:ale_fixers={
\  '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'ruby': ['standardrb', 'rubocop'],
\}

nmap gd :ALEGoToDefinition<CR>

packloadall
silent! helptags ALL
