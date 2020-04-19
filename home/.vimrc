set nu " line numbers
set hlsearch " highlight search matches
set expandtab " expand tab to spaces

" expand existing tab to spaces
set tabstop=2
set softtabstop=2

set shiftwidth=2 " use 2 spaces when indenting
set showtabline=2 " always show tabline
filetype plugin on " recognize filetypes

set background=dark " don't be evil, use dark themes

" remove highlights on <esc>, w/ termresponse fix
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" move selected lines around
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" enter or leader+enter to insert newline and get out of insert mode
nmap <Leader>O O<Esc>
nmap <Leader>o o<Esc>
