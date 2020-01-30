set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
" to INSTALL : git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
Plugin 'gmarik/Vundle.vim'

" Tools
Plugin 'scrooloose/nerdtree'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'kien/ctrlp.vim'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"Plugin 'tmhedberg/SimpylFold'

" Colors
"Plugin 'ErichDonGubler/vim-sublime-monokai'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'jnurmine/Zenburn'
"Plugin 'rakr/vim-one'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'arcticicestudio/nord-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'herrbischoff/cobalt2.vim'

" Python
"Plugin 'vim-scripts/indentpython.vim'
"Bundle 'Valloric/YouCompleteMe'
"Plugin 'vim-syntastic/syntastic'
"Plugin 'nvie/vim-flake8'

" Markdown
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'

" Editor Config support
"Plugin 'editorconfig/editorconfig-vim'

" NOTE to install plugins:   :PluginInstall


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on



let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all=1
syntax on

if has('gui_running')
    let g:airline_theme='one'
    let g:one_allow_italics=1

    " set background=dark
    " colorscheme one

    "set background=dark
    "let g:solarized_contrast="high"
    "let g:solarized_hitrail=1
    "colorscheme solarized
    set background=dark
    colorscheme Tomorrow-Night-Bright

    " Input Font : http://input.fontbureau.com/
    set guifont=RobotoMono-Medium:h14
else
    if $TERM_PROGRAM =~ "iTerm"
        let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
        let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
    endif
    colorscheme zenburn
endif



set autoindent                  " always set autoindenting on
set autoread                    " autoupdate file on change
set backspace=indent,eol,start
set clipboard=unnamed           " use default windows clipboard
set cursorline
set encoding=utf-8              " default encoding to UTF8
set foldlevel=99                " max folding levels
set foldmethod=indent           " folding of code
set hlsearch
set ignorecase                  " ignore case when searching
set incsearch                   " do incremental searching
set nobackup                    " do not keep a backup file
set noexpandtab
set nowrap
set number                      " show line numbers
set ruler                       " show the cursor position all the time
set scrolloff=3
set smartindent                 " smart indent
set splitbelow
set splitright
set ttyfast                     " smoother changes

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab



" Enable folding with the spacebar
nnoremap <space> za

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=128 expandtab autoindent
" au BufNewFile,BufRead *.js, *.html, *.css set tabstop=2 softtabstop=2 shiftwidth=2  fileformat=unix

" Show invalid ending white space in progaming files
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.cpp,*.h,*.hpp,*.js,*.html,*.php,*.lua match BadWhitespace /\s\+$/


" NerdTree Config
let NERDTreeIgnore = ['\.pyc$', '\.meta$', '\~$']
map <C-n> :NERDTreeToggle<CR>
" autocmd vimenter * NERDTree " auto start nerdtree on launch
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"


"My own menu with my favorite color scheme LIGHT
menu Pallaire.Colors.Light.PaperColor :colorscheme PaperColor<CR>
menu Pallaire.Colors.Light.github :colorscheme github<CR>
menu Pallaire.Colors.Light.solarized :set background=light<CR>:colorscheme solarized<CR>
menu Pallaire.Colors.Light.summerfruit256 :colorscheme summerfruit256<CR>
menu Pallaire.Colors.Light.tomorrow :colorscheme Tomorrow<CR>

"My own menu with my favorite color scheme DARK
menu Pallaire.Colors.Dark.cobalt2 :colorscheme cobalt2<CR>
menu Pallaire.Colors.Dark.dracula :colorscheme dracula<CR>
menu Pallaire.Colors.Dark.luna :colorscheme luna<CR>
menu Pallaire.Colors.Dark.monokai :colorscheme Monokai<CR>
menu Pallaire.Colors.Dark.seti :colorscheme seti<CR>
menu Pallaire.Colors.Dark.smyck :colorscheme smyck<CR>
menu Pallaire.Colors.Dark.solarized :set background=dark<CR>:colorscheme solarized<CR>
menu Pallaire.Colors.Dark.srcery :colorscheme srcery<CR>
menu Pallaire.Colors.Dark.wombat :colorscheme wombat<CR>

"Utils
menu Pallaire.Utils.Conversion.Remove\ BOM :setlocal nobomb<CR>
menu Pallaire.Utils.Conversion.To\ UTF8 :set fileencoding=utf-8<CR>
menu Pallaire.Utils.Reload\ vimrc :so ~/.vimrc<CR>

