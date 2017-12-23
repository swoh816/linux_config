" ---------------------------------------------------------------

execute pathogen#infect()
syntax on
filetype plugin indent on

" ---------------------------------------------------------------

" YCM will auto-close the preview window after the user accepts the offered completion string.
let g:ycm_autoclose_preview_window_after_completion = 1

" ---------------------------------------------------------------

" Vim-Latex setup
" (http://vim-latex.sourceforge.net/documentation/latex-suite.html#recommended-settings)
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" ---------------------------------------------------------------

syntax enable                                                                                    
set background=dark
colorscheme solarized 

if has('gui_running')
	set background=light
else
	set background=dark
endif

" ---------------------------------------------------------------


" Move cursor while in insert mode
" http://vi.stackexchange.com/questions/3402/using-vim-when-press-both-opening-and-closing-parenthesis-brackets-etc
" inoremap <silent><C-h> <esc>hi
" inoremap <silent><C-j> <esc>ji
" inoremap <silent><C-k> <esc>ki
" inoremap <silent><C-l> <esc>li

set number
set relativenumber
set hlsearch


" Use space in normal mode like in normal space
" (http://stackoverflow.com/questions/10364432/is-there-any-way-to-insert-a-space-in-normal-mode)
nnoremap <space> i<space><esc>l


" Use jk to exit
inoremap jk <ESC>

" Move cursor among lines inside the same paragraph, when in visual mode.
" http://vi.stackexchange.com/questions/3367/move-cursor-among-lines-inside-the-same-paragraph
vnoremap j gj
vnoremap k gk

" Last modified time in the title
" (http://stackoverflow.com/questions/8426736/last-modified-time-in-the-title-or-statusline)
set title titlestring=%{strftime('%c',getftime(expand('%')))}



" nmap <C-k> O<Esc>
" nmap <C-j> o<Esc>
" nmap <A-k> kdd<Esc>
" nmap <A-j> jdd<Esc>

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts. (http://vim.wikia.com/wiki/Quickly_adding_and_deleting_empty_lines)
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent>j :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent>k :set paste<CR>m`O<Esc>``:set nopaste<CR>
" NOTE: This is not the original setting suggested in the webpage. In the
" webpage, it instead suggests usingi:
" nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
" nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR> 
" However, Alt key (<A>) does not work in many terminals (http://vim.wikia.com/index.php?title=Get_Alt_key_to_work_in_terminal&oldid=23162).
" Therefore, I need to use ^[j instead of <A-j>, and ^[k instead of <A-k>.
" To get the ^[j, press in insert mode Control-v then Alt-j. Control-v in
" insert mode will give ^, and Alt-j will give [j. (http://vim.wikia.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_2))
" Be careful ^[j is the same as escape, j - you shouldn't be using escape in
" the normal mode too much though.


" Easier moving of code blocks
" Normally, you can only tab once after visualising the lines you want to.
" However, with the following keymap, you can tab as many times as you want.
vnoremap < <gv 
vnoremap > >gv
" This is also ranked top 1 at: http://www.vimbits.com/bits?sort=top


" Set the size of command / search history up to 1000
" (http://usevim.com/2013/11/08/set-history/)
set history=1000


" Switch buffers without saving to a currently modified file
" (http://superuser.com/questions/163589/switch-buffers-in-vim-without-saving-to-a-currently-modified-file)
set hidden


" In normal mode, change d to simply delete block without putting in the register
" (http://stackoverflow.com/questions/54255/in-vim-is-there-a-way-to-delete-without-putting-text-in-the-register)
" (http://stackoverflow.com/questions/3638542/any-way-to-delete-in-vim-without-overwriting-your-last-yank)
nnoremap d "_d
nnoremap dd "_dd
nnoremap dw "_dw
" Do the same thing in visual mode
vnoremap d "_d


" yank / delete / delete and write from the current cursor to the end of the line
nnoremap y$ Y
nnoremap d$ D
nnoremap c$ C




""" Useful commands:
""" Customise tab size while in vim (http://stackoverflow.com/questions/234564/tab-key-4-spaces-and-auto-indent-after-curly-braces-in-vim)
""filetype plugin indent on
""" show existing tab with 4 spaces width
""set tabstop=4
""" when indenting with '>', use 4 spaces width
""set shiftwidth=4
""" On pressing tab, insert 4 spaces
""set expandtab
