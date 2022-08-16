nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
set nu
set ignorecase
set incsearch
set hlsearch
set smartcase
set wrapscan
set cindent
set relativenumber
set mouse=a
syntax on
set tabstop=8
set shiftwidth=8
set noexpandtab  "Use tabs not spaces
set colorcolumn=80
set comments=sl:/*,mb:*,elx:*/
set confirm
set wildmenu
set wildmode=list:longest,full
set cino+=(0,:0
set title
set scrolloff=4
set showcmd
set ruler
set gdefault
set noswapfile
"fugitive status line
set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P

" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

nnoremap <silent> <leader>b :buffers<CR>

"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>

filetype plugin on
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
"checkpatch highlighting
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
"match ExtraWhitespace /if(
"match ExtraWhitespace /switch(
"match ExtraWhitespace /for(

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

"plugin code
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'vimwiki/vimwiki'

call plug#end()

"Key mapping for building and installing the software
nmap <F3> :w<CR>:!make uboot-rebuild<CR>
nmap <F4> :w<CR>:!make uboot-rebuild all<CR>
nmap <F5> :w<CR>:!make linux-rebuild<CR>
nmap <F6> :w<CR>:!make linux-rebuild all<CR>
"nmap <F7> :w<CR>:!cd ../release/nand/linux && sudo ./flash_board_x64<CR>
nmap <F7> :w<CR>:!cd output/linux && sudo ./flash_board_x64<CR>
nmap <F8> :w<CR>:!./kernelbuildinstall.sh<CR>
nmap <F9> :w<CR>:source ~/.vimrc<CR>
nmap <F10> :w<CR>:!make ethtool-rebuild all && cd output/linux && sudo ./flash_board_x64<CR>

map ,gs :!git status<CR>
map ,gd :!git diff<CR>
map ,gl :!git logone<CR>
map ,gl :!git logone<CR>
map ,gacf :!git add %<CR>
map ,gca :!git commit --amend<CR>
map ,grc :!git rebase --continue
map ,grp :!git rebase -i HEAD~11

"abbreviation
ab ture true
ab flase false

