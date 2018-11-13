"==============================================================================
" Vim configuration ~/.vimrc
"==============================================================================
" Author:       Roland Benz, Zurich, Switzerland
" Date:         05.Nov.2018
" Folding:      "zM" to close all folds of this file
"               "za" to toggle foldings
"------------------------------------------------------------------------------

" Plugin manager "vim-plug" ----------------------------------------------- {{{
" -----------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
" Plugins here ----->>>>
Plug 'mhinz/vim-startify'             "NOTE: Get the latest updates via github:
                                      "https://github.com/mhinz/vim-startify 
Plug 'scrooloose/syntastic'           "For the latest version version https://
                                      "github.com/scrooloose/syntastic
"Plug 'vim-scripts/javacomplete'      "https://github.com/vim-scripts/
                                      "javacomplete (buggy)
Plug 'artur-shaik/vim-javacomplete2'  "https://github.com/artur-shaik/
                                      "vim-javacomplete2
Plug 'vim-scripts/ScrollColors'       "https://github.com/vim-scripts/
                                      "ScrollColors
Plug 'vim-scripts/Colour-Sampler-Pack' "https://github.com/vim-scripts/
                                      "Colour-Sampler-Pack
Plug 'tpope/vim-fugitive'             "https://github.com/tpope/vim-fugitive
Plug 'sjl/gundo.vim'                  "https://github.com/sjl/gundo.vim (error:
                                      "requires Vim to be compiled with Py2.4+)
Plug 'python-mode/python-mode', { 'branch': 'develop' } "https://github.com/
                                      "python-mode/python-mode
call plug#end()
" -----------------------------------------------------------------------------
" }}}

" Self written "plugins" in folder .vim/own_plugs-------------------------- {{{
" -----------------------------------------------------------------------------
source /home/benzro/.vim/own_plugs/vim_un_comment.vim
source /home/benzro/.vim/own_plugs/grep_operator.vim
source /home/benzro/.vim/own_plugs/vim_helper_functions.vim
source /home/benzro/.vim/own_plugs/build.vim
" -----------------------------------------------------------------------------
" }}}

" Plugin "powerline" ------------------------------------------------------ {{{
" 30.10.2018: added powerline plugin (see also .bashrc, .tmux.conf)
" sudo apt install powerline
" -----------------------------------------------------------------------------
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set rtp+=/usr/share/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
" }}}

" Colour scheme ----------------------------------------------------------- {{{
" -----------------------------------------------------------------------------
" set colorscheme
colorscheme desert256
"colorscheme 256-jungle
"colorscheme molokai
" -----------------------------------------------------------------------------
" }}}

" Plugin "netrw" ---------------------------------------------------------- {{{
" netrw: integrated file browser 
" :Explore (current window), 
" :Vexplore (new vertical), 
" :Sexeplore (new horizontal) 
" -----------------------------------------------------------------------------
let g:netrw_banner = 0					" bannner? 0:no 1:yes
let g:netrw_liststyle = 3				" list style? 1: 2: 3:tree 4
"let g:netrw_browse_split = 4		" open new files in split window? 
                                "0:same window (default) 1:hsplit 2:vsplit 
                                "3:newtab 4:previous 
"let g:netrw_altv = 1						" where to split new window? 0:left 1:right
"let g:netrw_winsize = 25				" explore width? in per cent
"augroup ProjectDrawer						" autogroup name for file browser
"  autocmd!											
"  autocmd VimEnter * :Vexplore	" make vertical split and open netrw
"augroup END
" -----------------------------------------------------------------------------
" }}}

" Key bindings for doing stuff in wrong mode------------------------------- {{{
" normal mode: backspace deletion, empty space, carrige return, new empty line
" visual mode: move to insert mode, copy and move to insert mode
" insert mode: move to all three visual modes, 
" insert mode: copy words or lines to clipboar and return, paste from clipboar
" insert mode: undo last entry, delete line
"------------------------------------------------------------------------------

" N: make backspace key work in normal mode
nnoremap <leader><BS> X

" N: make space key work in normal mode
nnoremap <leader><space> i<space><esc>

" N: make return key work in normal mode
nnoremap <leader><return> i<CR><esc>

" N: add newline below in normal mode
nnoremap <leader>o $a<CR><esc>

" V: move from visual mode into insert mode
vnoremap <leader>i <esc><esc>i

" V: copy from visual mode and go into insert mode
vnoremap <leader>y "+yi

" V: cut from visual mode and go into insert mode
vnoremap <leader>d "+di

" I: move from insert into visual mode
inoremap <leader><leader>v <esc>lv
inoremap <leader><leader><S-v> <esc>l<S-v>
inoremap <leader><leader><C-v> <esc>l<C-v>

" I: copy whole words in insert mode to clipboard
inoremap <leader><leader>w <esc>llbve"+y<esc>i
inoremap <leader><leader>ww <esc>llbvee"+y<esc>i
inoremap <leader><leader>www <esc>llbveee"+y<esc>i
inoremap <leader><leader>wwww <esc>llbveeee"+y<esc>i
inoremap <leader><leader>wwwww <esc>llbveeeee"+y<esc>i
inoremap <leader><leader>wwwwww <esc>llbveeeeee"+y<esc>i

" I: copy whole lines in insert mode to clipboard
inoremap <leader><leader>q <esc><S-v>"+y<esc>i
inoremap <leader><leader>qq <esc><S-v>j"+y<esc>i
inoremap <leader><leader>qqq <esc><S-v>jj"+y<esc>i
inoremap <leader><leader>qqqq <esc><S-v>jjj"+y<esc>i
inoremap <leader><leader>qqqqq <esc><S-v>jjjj"+y<esc>i
inoremap <leader><leader>qqqqqq <esc><S-v>jjjjj"+y<esc>i

" I: cut line in insert mode to clipboard
inoremap <leader><leader>dd <esc><S-v>"+y<esc>dd<esc>i

" I: paste in insert mode
inoremap <leader><leader>e <esc>"+p<esc>i

" I: undo in insert mode
inoremap <leader><leader>u <esc>u<esc>i
"------------------------------------------------------------------------------
" }}}

" Own key bindings--------------------------------------------------------- {{{
" left: key combination
" right: called command
" ! (do toggle); ? (show value);
" <C-o> in insert mode let's you type ":" to access command line
" -----------------------------------------------------------------------------

" define leader key
let mapleader = "-"

" toggle :set wrap; (wr)ap
nnoremap <leader>wr :set wrap! wrap?<CR>

" toggle :set list and :set listchars to set nolist; (n)ot (v)isible
nnoremap <leader>nv :set list! list?<CR>

" toggle :set numbers; (n)umbe(r)
nnoremap <leader>nr :set nonumber! number?<CR>

" toggle Gundo Plugin 
" (error: requires Vim to be compiled with Python 2.4+) 
nnoremap <leader><F7> :GundoToggle<CR>

" comment and uncomment (in visual mode highlight blocks)
vnoremap <leader>cc :call Comment()<CR>
vnoremap <leader>cx :call Uncomment()<CR>

" change vim window directory to buffer's path 
" (all windows within one tmux window)
" % gives the name of the current file, 
" %:p gives its full path, and %:p:h gives its directory. 
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" change local window directory to buffer's path 
" (only local window within one tmux window)
" % gives the name of the current file, 
" %:p gives its full path, and %:p:h gives its directory. 
nnoremap <leader>lcd :lcd %:p:h<CR>:pwd<CR>

" Diff between buffer and file with bash diff command
nnoremap <leader>di :w !diff % - <CR>

" Write and Source current Buffer
nnoremap <leader>ws :w<CR>:so %<CR>

" VimScript: Write and Source and run current Buffers Main Function
nnoremap <leader>wb :call Build()<CR>

" Maximize your current window pane and toogle back
nnoremap <leader>tw :call MaximizeToggle()<CR>

" Grep
" file: .vim/own_plugs/grep-operator.vim
" :<c-u> starts command mode in visual mode
nnoremap <leader>g :set operatorfunc=GrepOperator<cr>g@
vnoremap <leader>g :<c-u>call GrepOperator(visualmode())<cr>
" -----------------------------------------------------------------------------
" }}}

" Own helper function for own key bindings -------------------------------- {{{
" functions can also be moved to .vim/own_plugs 
" and path in mapping changed accordingly
" -----------------------------------------------------------------------------

" Maximize your current window pane and toogle back
" no clue how it works
function! MaximizeToggle()
  if exists("s:maximize_session")
    exec "source " . s:maximize_session
    call delete(s:maximize_session)
    unlet s:maximize_session
    let &hidden=s:maximize_hidden_save
    unlet s:maximize_hidden_save
  else
    let s:maximize_hidden_save = &hidden
    let s:maximize_session = tempname()
    set hidden
    exec "mksession! " . s:maximize_session
    only
  endif
endfunction
" -----------------------------------------------------------------------------
" }}}

" Own "ex-commands" ------------------------------------------------------- {{{
"------------------------------------------------------------------------------
" Compares current buffer with original file (before saved :w)
" Command :DiffOrig opens Scratch Window (file) and Buffer Window
" Command :DiffOff or quit the Scratch Window with :q 
command! DiffOrig vert new | set bt=nofile | r # | 0d_ |
      \ diffthis | wincmd p | diffthis
"------------------------------------------------------------------------------
" }}}

" Filetype Plugin Indent--------------------------------------------------- {{{
" benzro: "filetype plugin indent on" is like a combination of these commands
"------------------------------------------------------------------------------
" filetype detection: Each time a new or existing file is edited,
" Vim will try to recognize the type of the file and set the 'filetype' option.
" This will trigger the FileType event, which can be used to set the 
" syntax highlighting, set options, etc.
filetype on

" This actually loads the file "ftplugin.vim" in 'runtimepath'. 
" (it could be ftplugin/html_example.vim for instance.)
" The result is that when a file is edited its plugin file is loaded 
" (if there is one for the detected filetype).
filetype plugin on

" This actually loads the file "indent.vim" in 'runtimepath'. 
" (it could be named indent/html_example.vim for instance.)
" The result is that when a file is edited its indent file is loaded 
" (if there is one for the detected filetype). indent-expression
filetype indent on
" }}}

" From plugin restore_view.vim -------------------------------------------- {{{
" See wiki: http://vim.wikia.com/wiki/Make_views_automatic
set viewoptions=cursor,folds,slash,unix
if exists("g:loaded_restore_view")
    finish
endif
let g:loaded_restore_view = 1

if !exists("g:skipview_files")
    let g:skipview_files = []
endif

function! MakeViewCheck()
    if &l:diff | return 0 | endif
    if &buftype != '' | return 0 | endif
    if expand('%') =~ '\[.*\]' | return 0 | endif
    if empty(glob(expand('%:p'))) | return 0 | endif
    if &modifiable == 0 | return 0 | endif
    if len($TEMP) && expand('%:p:h') == $TEMP | return 0 | endif
    if len($TMP) && expand('%:p:h') == $TMP | return 0 | endif

    let file_name = expand('%:p')
    for ifiles in g:skipview_files
        if file_name =~ ifiles
            return 0
        endif
    endfor

    return 1
endfunction

augroup AutoView
    autocmd!
    " Autosave & Load Views.
    autocmd BufWritePre,BufWinLeave ?* if MakeViewCheck() | silent! mkview | endif
    autocmd BufWinEnter ?* if MakeViewCheck() | silent! loadview | endif
augroup END
" }}}

" Vimscript filetype settings (e.g. fold methods)-------------------------- {{{
" key strokes "za" let you toggle between folding and not folding
" check the filetype of a file with echo &filetype
" (for already existing files you need to run the command manually
" :setlocal foldmethod=marker)
" more about it: http://vim.wikia.com/wiki/Folding
"------------------------------------------------------------------------------
" Enable folding/unfolding with the spacebar
nnoremap <space> za
augroup filetype_vim
  autocmd!		
  autocmd BufReadPre * setlocal foldmethod=indent
  autocmd FileType vim setlocal foldmethod=marker foldlevel=0
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END
"------------------------------------------------------------------------------
" }}}

" Python filetype settings (e.g. fold methods)----------------------------- {{{
"------------------------------------------------------------------------------
augroup filetype_python
  autocmd!
  autocmd FileType python set omnifunc=pythoncomplete#Complete
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 
        \ smartindent 
        \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
  autocmd BufRead *.py set efm=%C\ %.%#,%A\ \
        \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
  autocmd FileType python set foldmethod=indent foldlevel=99
  autocmd BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 
        \ shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix
augroup END
"------------------------------------------------------------------------------
" }}}

" Java filetype settings (e.g. fold methods)------------------------------- {{{
"------------------------------------------------------------------------------
augroup filetype_java
  autocmd!    
  autocmd FileType java set foldmethod=indent foldlevel=99
augroup END
"------------------------------------------------------------------------------
" }}}

" Bash filetype settings (e.g. fold methods)------------------------------- {{{
" manual folds: select in visual mode and press zf, delete it with zd
"------------------------------------------------------------------------------
augroup fietype_bash
  autocmd!    
  autocmd BufReadPre * setlocal foldmethod=indent
  autocmd FileType sh set foldmethod=indent foldlevel=99
  autocmd BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END
"------------------------------------------------------------------------------
" }}}

" Options "set options" --------------------------------------------------- {{{
"------------------------------------------------------------------------------
"set background=dark              " dark background
"set backspace=indent,eol,start   " allow backspace in insert mode
set backspace=2
"set backup                       " keep a backup file
"set colorcolumn=+1               " color (textwidth + 1) th column
set confirm                       " asks whether to save buffer and 
                                  "abandon buffer or hide it unsaved
set cursorline                    " highlight current line
set encoding=utf-8                " set UTF-8 encoding
"set ff=unix                      " default file types: UNIX
"set foldmethod=manual            " manual folding
"set formatoptions+=n             " recognize lists when formatting text
"set grepprg=grep\ -nH\ $*        " always display filename when grepping
"set hidden                       " buffers can exists in bg 
                                  "w/o being in a window
"set history=40                   " more command history
set hlsearch                      " highlight current search
"set ignorecase                   " ignore case for '/regex' search
"set incsearch                    " incremental search with '/regex' search
"set linebreak                    " don't wrap text in the middle of a word
"set lazyredraw                   " turn on lazy redraw (performance++)
"set listchars=tab:▸\ ,trail:·    " display unprintable chars 		  
set listchars=tab:▸\ ,trail:·,eol:¶
"set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set nolist                        "␣display␣unprintable␣chars␣(see␣listchars)¬
"set magic                        " set magic for regex
"set matchtime=3                  " show matching parent .3sec (default: .5)
"set modelines=0                  " no modelines
"set noautoread                   " don't re-read a file changed outside of Vim
set nocompatible                  " no compatible with VI
"set nofoldenable                 " don't fold by default
"set nojoinspaces                 " use only one space after a dot
"set nospell                      " do not use spell checking
set nonumber                      " to display line numbers (Toggle F6)
set nowrap                        " does not wrap long lines
"set numberwidth=1                " use only 1 column (+1 space) while possible
"set pumheight=10                 " size of completion window: 10 lines
set ruler                         " show the cursor position all the time
set scrolloff=5                   " keep 5 context lines above/below the cursor
set shell=/bin/bash               " set Bash shell
"set showcmd                      " show current incomplete command
set showmatch                     " show matching braces/brackets/etc
set splitright									  " vsplit opens new window to the right
"set t_Co=256                     " the terminal has 256 colors
set textwidth=79                  " text default width = 79 columns
set viminfo='1000,n$HOME/.vim/files/info/viminfo " plug.vim asked for this line
                                  "and startify does complain if it is not here
set wrapmargin=0                  "turn off automatic wrapping while writing
" -----------------------------------------------------------------------------
" }}}

" highlighting syntax and cursurline -------------------------------------- {{{
" -----------------------------------------------------------------------------
" syntax highlighting
syntax sync minlines=256
syntax sync maxlines=1024
syntax on

" hi (highlight) cursorline
hi CursorLine cterm=NONE ctermbg=black ctermfg=NONE
" -----------------------------------------------------------------------------
" }}}

" Indetation and Tab to Space --------------------------------------------- {{{
" -----------------------------------------------------------------------------
"set autoindent       " auto-indentation
set expandtab         " replace tabs with spaces, tab becomes shotcut for 
                      "inserting x spaces
"set smartindent      " no autoindent when starting a new line
"set shiftround       " > & < cmds round the indent to a multpl of sw
set shiftwidth=2      " use 2-spaces indentation
set softtabstop=2     " 1 tab = x spaces when editing a file
set tabstop=2         " 1 tab = x spaces when file is opened
" -----------------------------------------------------------------------------
" }}} 

" Wildmenu settings-------------------------------------------------------- {{{
" wildmenu shows menu of possible files and folders in command line
" -----------------------------------------------------------------------------
set wildmenu                    " show completion possibilities in command mode
set wildignore+=.hg,.git,.svn   " version control
set wildignore+=*.jpg,*.png     " images
set wildignore+=*.gif
set wildignore+=*~,*.sw?        " temporary/swap files
set wildignore+=.DS_Store
set wildignore+=*.o,*.cmo,*.cmx " compiled object files / bytecode
set wildignore+=*.pyc
set wildignore+=*.mo            " other compiled files
set wildignore+=*.odt,*.pdf     " other binary files
set wildignore+=venv,htmlcov    " directories
set wildignore+=__pycache__
set wildignore+=*.jar,*.zip     " archives / compressed files
set wildignore+=*.gz,*.tar
set wildignore+=*.db
" -----------------------------------------------------------------------------
" }}}

" Plugin "javacomplete" settings------------------------------------------- {{{
" 2018: downloaded javacomplete0.77.1.2.zip
" placed into ~/.vim/autoload: javacomplete.vim, 
"                               java_parser.vim, Reflection.java
" placed into ~/.vim/: /doc with 2 files: javacomplete.txt, tags
" Had to compile ~/.vim/autoload/Reflection.java --> Reflection.class
"------------------------------------------------------------------------------
" Set 'omnifunc' option. e.g.
" setlocal omnifunc=javacomplete#Complete
" augroup (auotcmd!) prevents adding duplicate 
" autocomands everytime .vimrc is sourced
augroup plugin_javacomplete
	    autocmd!
			autocmd FileType java setlocal omnifunc=javacomplete#Complete
augroup END

" Set 'completefunc' option to show parameters information IF YOU LIKE. e.g.
setlocal completefunc=javacomplete#CompleteParamsInfo
" You can map as follows for better display: (Did not work: use <C-X><C-O>)
inoremap <buffer> <C-X><C-U> <C-X><C-U><C-P>
inoremap <buffer> <C-S-Space> <C-X><C-U><C-P>
"------------------------------------------------------------------------------
" }}}

" In Tmux Pane and Vim Status Line -> set document title------------------- {{{
" augroup (auotcmd!) prevents adding duplicate 
" autocomands everytime .vimrc is sourced
" -----------------------------------------------------------------------------
" tmux window and pane line (sets document title)
augroup tmux_window_and_paneline
	    autocmd!
			autocmd BufEnter * call system("tmux select-pane -T" . expand('%:t') )
			autocmd VimLeave * call system("tmux select-pane -T 'bash' ")
augroup END

" status line in vim (sets document title)
augroup vim_statusline
	    autocmd!
			autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
			set title
augroup END
" -----------------------------------------------------------------------------
" }}}

" Plugin "python-mode" ---------------------------------------------------- {{{
"------------------------------------------------------------------------------
"installation tip
let g:pymode_python = 'python3'

" copied that one from  https://github.com/tony/vim-config-framework/
" tree/01def0b72494febbb6d7a05d9990c8a92a088593/
" and adapted and added stuff from :help pymode 
function! StartPymode()
  let g:pymode_virtualenv = 1 " Auto fix vim python paths if virtualenv enabled
  let g:pymode_folding= 1  " Enable python folding
  let g:pymode_syntax = 1
  let g:pymode_syntax_all = 1
  let g:pymode_breakpoint = 1
  let g:pymode_breakpoint_bind = '<leader>b'
  let g:pymode_run = 1
  let g:pymode_run_bind = '<leader>r'

  let g:pymode_rope = 1
  if g:pymode_rope != 0
    let g:pymode_rope_goto_definition_bind = '<C-c>g'
    let g:pymode_rope_completion = 1
    let g:pymode_rope_complete_on_dot = 1
    let g:pymode_rope_completion_bind = '<C-Space>'
    let g:pymode_rope_autoimport = 1
    let g:pymode_rope_autoimport_bind = '<C-c>ra'
    let g:pymode_rope_module_to_package_bind = '<C-c>r1p'
    let g:pymode_rope_extract_method_bind = '<C-c>rm'
    let g:pymode_rope_extract_variable_bind = '<C-c>rl'
  endif

  let g:pymode_lint = 1
  if g:pymode_lint != 0
    if exists('flake8')
      let g:pymode_lint_checkers = []
      autocmd BufWritePost *.py call Flake8()
    else
      let g:pymode_lint_checkers = ['pep8', 'pep257', 'pyflakes', 'mccabe']
    endif
    let g:pymode_lint_ignore = 'C0111,D100,D101,D102,D103'
    let g:pymode_lint_sort = ['E', 'C', 'W', 'R', 'I', 'F', 'D']
    let g:pymode_lint_unmodified = 1
  endif
endfunction

call StartPymode()
"------------------------------------------------------------------------------
" }}}

" Wimman Manpage Viewer --------------------------------------------------- {{{
" Access Linux Man pages directly in Vim
" Shift-k with cursor over keyword, :Man searchpattern
" -----------------------------------------------------------------------------
let $GROFF_NO_SGR=1
runtime ftplugin/man.vim
" -----------------------------------------------------------------------------
" }}}

" Markdown Preview in Browser with Grip ----------------------------------- {{{
" sudo apt install grip
" -----------------------------------------------------------------------------
noremap <silent> <leader>md :call Open_Md_Files_With_Grip_In_Firefox()<cr>
function! Open_Md_Files_With_Grip_In_Firefox() abort
  " run grip in terminal with current buffer (%) whole path(:p) 
  " in background (&) 
  " no messages (> /dev/null 2>&1)
  execute ':!grip ' . shellescape(expand('%:p')).'> /dev/null 2>&1 &'
  " start firefox tab with grip server port
  execute ':!firefox http://localhost:6419'
endfunction 
"------------------------------------------------------------------------------
" }}}
