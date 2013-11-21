func GetPwD()
    return substitute(getcwd(), "", "", "g")
endf

set ch=1
set stl=\ [File]\ %F%m%r%h%y[%{&fileformat},%{&fileencoding}]\ %w\ \ %h\ %=\ [Line]\ %l,%c\ %=\ %P
set ls=2  
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,default,latin1

filetype plugin on
set scr=12
set bg=dark
set spc=[.?!]\\_[\\])'\"\	\ ]\\+
set sps=best
set cindent
set ts=4
set sw=4
set ai
set si
syntax enable
set showmatch
set cursorline
imap <C-l> <esc>la
imap <C-h> <esc>ha
set clipboard=unnamed
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set magic
"set smarttab
set lbr
"colorscheme desert
colorscheme vividchalk
set autochdir
set noerrorbells
set expandtab
set autoindent
set smartindent
set backspace=indent,start

au FileType css,scss,html,vim,javascript setl shiftwidth=4
au FileType css,scss,html,vim,javascript setl tabstop=4
au FileType c,java,python,php setl shiftwidth=4
au FileType c,java,python,php setl tabstop=4
au FileType python setl softtabstop=4
au FileType python setl expandtab

set ofu=syntaxcomplete#Complete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css,scss set omnifunc=csscomplete#CompleteCSS
autocmd FileType java set omnifunc=javacomplete#Complete

au BufNewFile,BufRead *.py,*.pyw setf	python					
let g:neocomplcache_enable_at_startup = 1 

function! CHANGE_CURR_DIR()
	let _dir = expand("%:p:h")
	exec "cd " . _dir
	unlet _dir
endfunction
autocmd BufEnter * call CHANGE_CURR_DIR()

set t_Co=256
lan en_US.UTF-8
autocmd FileType c set tags+=/Applications/QT/5.1.1/clang_64/include/tags

"php auto-complete with dictionary
au FileType php call AddPHPFuncList()
function AddPHPFuncList()
    set dictionary-=~/.vim/php/php_funclist.txt dictionary+=~/.vim/php/php_funclist.txt
    set complete-=k complete+=k
endfunction

"add phpmanual direction to runtimepath
autocmd FileType php set runtimepath+=~/.vim/php/vim-php-manual/
autocmd BufNewFile,Bufread *.module,*.inc,*.php set keywordprg="help"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""The-NERD-tree"""""""""""""""""""
map <F10> :NERDTreeToggle<CR>
map <C-j> :NERDTreeToggle<CR>

""""""""""""""taglist"""""""""""""""""""""""""
map <silent> <F11> :TlistToggle<CR> 
map <C-k> :TlistToggle<CR> 
let Tlist_Auto_Highlight_Tag = 1  
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_File_Fold_Auto_Close = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Max_Submenu_Items = 1
let Tlist_Max_Tag_Length = 30
let Tlist_Process_File_Always = 0
let Tlist_Show_Menu = 0
let Tlist_Show_One_File = 0
let Tlist_Sort_Type = "order"
let Tlist_Use_Horiz_Window = 0
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 40    
let tlist_php_settings = 'php;c:class;i:interfaces;d:constant;f:function'

""""""""""""""taglist"""""""""""""""""""""""""
let g:C_Ctrl_j   = 'off'

""""""""""""""OmniCppComplete"""""""""""""""""
""let OmniCpp_NamespaceSearch = 1
""let OmniCpp_GlobalScopeSearch = 1
""let OmniCpp_ShowAccess = 1
""let OmniCpp_ShowPrototypeInAbbr = 1 
""let OmniCpp_MayCompleteDot = 1   " after . it will auto complete
""let OmniCpp_MayCompleteArrow = 1 " after -> it will auto complete
""let OmniCpp_MayCompleteScope = 1 " after :: it will auto complete
""let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
""au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
""set completeopt=menuone,menu,longest
""highlight Pmenu    guibg=darkgrey  guifg=black 
""highlight PmenuSel guibg=lightgrey guifg=black
""
""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""For vundle"""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'


""""""""""""""""""vim-scripts repos""""""""""
Bundle 'bash-support.vim'
Bundle 'vividchalk.vim'
Bundle 'The-NERD-tree'
Bundle 'taglist.vim'
"Bundle 'minibufexplorerpp'
Bundle 'AutoClose'
Bundle 'SuperTab'
Bundle 'Emmet.vim'
Bundle 'c.vim'
Bundle 'VimExplorer'
Bundle 'cpp.vim'
"Bundle 'OmniCppComplete'

"""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""For vundle end""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""
