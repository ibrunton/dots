" .vimrc file for Ian D Brunton

set bg=dark
set number
set showmode
set ruler
syntax on
set directory=/tmp

let g:hybrid_use_Xresources = 1
colorscheme hybrid

" Status Line
set laststatus=2
set statusline=\ %f\ %m\ %r\ %y%=L:\ %l/%L,%c%V\ \ \ %p%%\ %P\ 
highlight statusline cterm=bold ctermfg=Blue ctermbg=Black

" put plugins in discrete subdirectories:
call pathogen#infect()

set nofoldenable

filetype plugin indent on
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0

" Language-specific settings
autocmd FileType c setlocal shiftwidth=4
autocmd FileType c setlocal tabstop=4

autocmd FileType cpp setlocal shiftwidth=4
autocmd FileType cpp setlocal tabstop=4

"autocmd FileType perl setlocal expandtab=4
autocmd FileType perl setlocal shiftwidth=4
autocmd FileType perl setlocal softtabstop=4

autocmd FileType make setlocal noexpandtab

autocmd FileType python setlocal expandtab
autocmd FileType python setlocal shiftwidth=4
autocmd FileType python setlocal tabstop=4
autocmd FileType python setlocal softtabstop=4
autocmd FileType python setlocal smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setlocal tw=79

autocmd FileType lua setlocal shiftwidth=4
autocmd FileType lua setlocal tabstop=4

autocmd FileType html setlocal shiftwidth=2
autocmd FileType html setlocal softtabstop=2


autocmd FileType html setlocal shiftwidth=2
autocmd FileType html setlocal tabstop=2

set grepprg=grep\ -nH\ $*
let g:tex_flavour = "latex"
autocmd FileType tex setlocal shiftwidth=4
autocmd FileType tex setlocal tabstop=4
autocmd FileType tex setlocal tw=79

autocmd FileType mkd setlocal tw=79

" Keymaps
nmap <F11> a<C-R>=strftime("%Y-%m-%d %a")<CR><Esc>
nmap <F12> a<C-R>=strftime("%H:%M")<CR><Esc>
imap <F11> a<C-R>=strftime("%Y-%m-%d %a")<CR><Esc>
imap <F12> a<C-R>=strftime("%H:%M")<CR><Esc>

map <F8> : call CompileGcc()<CR>
func! CompileGcc()
	exec "w!"
	exec "make"
endfunc
