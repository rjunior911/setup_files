set nocompatible
filetype off 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'SirVer/ultisnips'
Plugin 'altercation/vim-colors-solarized'
Plugin 'honza/vim-snippets'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'dag/vim2hs'
Plugin 'christoomey/vim-tmux-navigator'
"Plugin 'VimNotes'
Plugin 'itchyny/calendar.vim'
"Plugin 'mattn/calendar-vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'ZoomWin'
Plugin 'mattn/emmet-vim'
"Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-classpath'
"Plugin 'othree/html5.vim'
Plugin 'gorodinskiy/vim-coloresque'
"Plugin 'clojure-emacs/cider-nrepl'
Plugin 'istib/vifm.vim'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-fugitive'
Plugin 'ludovicchabant/vim-lawrencium'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-leiningen'
Plugin 'klen/python-mode'
Plugin 'ivalkeen/nerdtree-execute'
Plugin 'ervandew/supertab'
Plugin 'def-lkb/vimbufsync'
Plugin 'tbelaire/coquille'
Plugin 'dockyard/vim-easydir'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'lukerandall/haskellmode-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/gundo'
Plugin 'vim-scripts/TTcoach'
Plugin 'gberenfield/sjl-slimv'
Plugin 'vim-scripts/AutomaticLaTexPlugin'
Plugin 'vim-scripts/taglist.vim'
Plugin 'jceb/vim-orgmode'
"Plugin 'vim-scripts/SyntaxRange'
"Plugin 'vim-latex/vim-latex'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
"Plugin 'matze/vim-tex-fold'
Plugin 'tmhedberg/matchit'
"Plugin 'gerw/vim-tex-syntax'
Plugin 'bjoernd/vim-ycm-tex'
Plugin 'vim-scripts/vimplate'
"Plugin 'vim-scripts/auctex.vim'
Plugin 'vim-scripts/YankRing.vim'
"Plugin 'vim-scripts/Tex-PDF'
Plugin 'chrisbra/Recover.vim'
"Plugin 'vim-evince-synctex'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'petRUShka/vim-sage'
Plugin 'jvanja/vim-bootstrap4-snippets'
Plugin 'othree/html5.vim'


"Plugin 'myusuf3/numbers.vim'
"Plugin 'kien/rainbow_parentheses.vim'
"Plugin 'nanotech/jellybeans.vim'
call vundle#end()            " required
filetype plugin on    " required
filetype indent on    " required

let Vimplate = "~/.vim/bundle/vimplate/vimplate"
	
"Solarized theme
syntax enable
set background=dark
let g:solarized_termtrans = 1
colorscheme solarized
set ttimeoutlen=50
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#flags = 's'
let g:airline_theme = 'solarized'

"redefine emmet leader key
let g:user_emmet_leader_key='<C-y>'

"makes default filetype latex for .tex files
let g:tex_flavor = "latex"

"autocmd Filetype tex source ~/.Vim/auctex.vim

"Google Calendar Settings
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
augroup calendar-mappings
            autocmd!

             "diamond cursor
            autocmd FileType calendar nmap <buffer> k <Plug>(calendar_up)
            autocmd FileType calendar nmap <buffer> h <Plug>(calendar_left)
            autocmd FileType calendar nmap <buffer> j <Plug>(calendar_down)
            autocmd FileType calendar nmap <buffer> l <Plug>(calendar_right)

"Simple Calendar Settings
"let g:calendar_keys = { 'close':            'q',
                        "\'do_action':          '<CR>',
                        "\'goto_today':         't',
                        "\'show_help':        '?',
                        "\'redisplay':        'r',
                        "\'goto_next_month':  '<Right>',
                        "\'goto_prev_month':  '<Left>',
                        "\'goto_next_year':   '<Up>',
                        "\'goto_prev_year':   '<Down>'}



"let g:calendar_diary=$HOME.'/.vim/diary'

" YouCompleteMe and UltiSnips compatibility, with the helper of supertab
	
" (via http://stackoverflow.com/a/22253548/1626737)
	
"let g:SuperTabDefaultCompletionType = '<C-n>'
	
let g:UltiSnipsExpandTrigger = '<Tab>'
	
let g:UltiSnipsJumpForwardTrigger = '<Tab>'
	
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'
	
"let g:ycm_key_list_select_completion = ['<C-j>', '<C-n>', '<Down>']
	
let g:ycm_filepath_completion_use_working_dir=1
"let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

"" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

  function! UltiSnipsCallUnite()
    Unite -start-insert -winheight=100 -immediately -no-empty ultisnips
    return ''
  endfunction

  inoremap <silent> <F8> <C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>
  nnoremap <silent> <F8>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>


"Haskell Doc Browser
:let g:haddock_browser="chromium-browser"
"Clojure Folds enable
:let g:clojure_fold = 0
:let mapleader = " "

 " Sage settings (from Franco Saliola)
 " to compile use :make
 "autocmd BufRead,BufNewFile *.sage,*.pyx,*.spyx set filetype=python
 "autocmd Filetype python set tabstop=4|set shiftwidth=4|set expandtab
 "autocmd FileType python set makeprg=sage\ -b\ &&\ sage\ -t\ %




 "Toggles
:map <C-g> :GundoToggle<CR>

"NERDTree Toggle
:map <C-t> :NERDTreeToggle<CR>
":map <C-b> 

"For Python
"python mode

let g:pymode_rope_completion_bind = '<Tab>'
let g:pymode_rope_autoimport_modules = ['os', 'shutil', 'datetime']
let g:pymode_rope_goto_definition_bind = '<C-c>g'
let g:pymode_rope_rename_bind = '<C-c>rr'
let g:pymode_breakpoint = 1
"was set to 1
let g:pymode_lint_cwindow = 0
let g:pymode_options_fold = 1

"Force all search movements to center after finding
":nnoremap n nzz
":nnoremap N Nzz
":nnoremap * *zz
":nnoremap # #zz
":nnoremap g* g*zz
":nnoremap g# g#zz

"EasyMotion setup
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

"gui options
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar

" easymotion config
"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
"map  n <Plug>(easymotion-next)
"map  N <Plug>(easymotion-prev)

" Maps Coquille commands to <F2> (Undo), <F3> (Next), <F4> (ToCursor)
au FileType coq call coquille#FNMapping()

"Misc Settings
:set scrolloff=999
:set nu

:nnoremap ev :vsplit $MYVIMRC<CR>
:nnoremap sv :source $MYVIMRC<CR>

:set hls
:set incsearch

:set expandtab


"ensures current file is the working directory
:au VimEnter * set autochdir


":nnoremap <C-s> :w<CR>
":inoremap <C-s> <Esc>:w<CR>i
:imap jk <Esc>l
:imap kj <Esc>l
:nnoremap ; :
":nnoremap <Tab> >> 
":nnoremap <S-Tab> << 
":nnoremap <S-Tab> gt 
":nnoremap <S-left> <C-w><left>
":nnoremap <S-right> <C-w><right>
":nnoremap <S-up> <C-w><up>
":nnoremap <S-down> <C-w><down>
":nnoremap <S-h> <C-w><left>
":nnoremap <S-l> <C-w><right>
":nnoremap <S-k> <C-w><up>
":nnoremap <S-j> <C-w><down>
"let g:ctrlp_user_command = 'find %s -type f'
"copy and paste to/from clipboard
:vnoremap <C-c> "+y
:nnoremap <C-v> "+p
:inoremap <C-v> <Esc>"+P
:cnoremap <C-v> <C-r>+ 
autocmd BufWinLeave *.* mkview!
autocmd BufWinEnter *.* silent loadview
:set tabstop=4

"for navigating tabs
"tab and S-tab go back and forth
"S-up toggles fullscreen
"S-down closes buffer
:nnoremap <Tab> :bn!<CR>
:nnoremap <S-Tab> :bp!<CR>
:nnoremap <S-down> :bd<CR>
:inoremap <S-down> <Esc>:bd<CR>
:nnoremap <S-up> <C-w>o
:inoremap <S-up>  <Esc><C-w>o

":set spell spelllang=en_us

"combat atp's clobbering of maps
":au VimEnter * nnoremap <C-right> :bn!<CR>
":au VimEnter * inoremap <C-right> <Esc>:bn!<CR>
":au VimEnter * nnoremap <C-left> :bp!<CR>
":au VimEnter * inoremap <C-left> <Esc>:bp!<CR>
":au VimEnter * nnoremap <C-down> :bd<CR>
":au VimEnter * inoremap <C-down> <Esc>:bd<CR>

:au VimEnter * vnoremap <C-c> "+y
:au VimEnter * nnoremap <C-v> "+p
:au VimEnter * inoremap <C-v> <Esc>"+P

:au VimEnter * map <C-g> :GundoToggle<CR>
":au VimEnter * nnoremap <Tab> >> 
":au VimEnter * nnoremap <S-Tab> << 

":au VimEnter * nnoremap <S-Tab> gt 
":au VimEnter * nnoremap <S-left> <C-w><left>
":au VimEnter * nnoremap <S-right> <C-w><right>
":au VimEnter * nnoremap <S-up> <C-w><up>
":au VimEnter * nnoremap <S-down> <C-w><down>
":au VimEnter * nnoremap <S-h> <C-w><left>
":au VimEnter * nnoremap <S-l> <C-w><right>
":au VimEnter * nnoremap <S-k> <C-w><up>
":au VimEnter * nnoremap <S-j> <C-w><down>
":au VimEnter * AirlineTheme lucius
":color jellybeans
":RainbowParenthesesToggle       " Toggle it on/off
":RainbowParenthesesLoadRound    " (), the default when toggling
":RainbowParenthesesLoadSquare   " []
":RainbowParenthesesLoadBraces   " {}
":RainbowParenthesesLoadChevrons " <>

