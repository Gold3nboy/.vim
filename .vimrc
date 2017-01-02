"www.yolinux.com/TUTORIALS/LinuxTutorialAdvanced_vi.html
"github--basic.vim
" Sections:
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Moving around, tabs and buffers
"    -> Status line
"    -> Editing mappings
"    -> vimgrep searching and cope displaying
"    -> Spell checking
"    -> Misc
"    -> Helper functions
"---------------------------------------------------------
"GENERAL
    set hidden 
    set history=50
    filetype plugin on 
    filetype indent on
    set autoread

"---------------------------------------------------------
"UI
    set wildmenu
    set so=7
    set ruler
    set cmdheight=1
    "search settings
    set hlsearch
    set ignorecase
    set smartcase
    "for regular expressions 
    set magic
    filetype on
    "syntax enable
  "  set background=dark
    if has('syntax')
        syntax enable             " Turn on syntax highlighting
        silent! colorscheme monokai " Custom color scheme
    endif

    hi Normal guibg=NONE ctermbg=NONE
    "filetype plugin indent on
    
    "au BufReadPost,BufNewFile *.twig colorscheme koehler 
    "au BufReadPost,BufNewFile *.css colorscheme slate
    "au BufReadPost,BufNewFile *.js colorscheme slate2
    "au BufReadPost,BufNewFile *.py colorscheme molokaiyo
    "au BufReadPost,BufNewFile *.html colorscheme monokai
    "au BufReadPost,BufNewFile *.java colorscheme monokai
    
    "hi String ctermfg=140
    "hi CursorLine ctermbg=235
    "hi CursorLine guibg=#D3D3D3 cterm=none
    
    
    "autocmd BufReadPost *
  "\  if line("'\"") > 1 && line("'\"") <= line("$") |
  "\    exe "normal! g`\"" |
  "\  endif

  
  
  " highlight current line
    set cursorline
"-------------------------------------------------------
"set syntax=java
"colorscheme nocturne
"set lines=35 columns=70
"let mapleader=" "
"seems dowsn't work
"map <leader>ss :source ~/.vimrc<CR>

"turn on autoindent
set autoindent
set shiftwidth=4     
set smartindent

"tab displays 4 spaces
set tabstop=4

"toggle autoindent on/off when pasting text
set pastetoggle=<F2>

"display line number
set number


"editor mode is displayed on bottom of screen
set showmode

"show matching for ) and }
"set showmatch

"should set significant characters( ?)
"set taglength

"disable shitty swapfiles when modifying and not saving
set nobackup
set noswapfile


"set background color to dark (maybe it's default ?)
"set background=dark

"let base16colorspace=256
"syntax on
"set t_Co=256 " 256 color mode
"" colorscheme OceanicNext
"colorscheme nocturne

"this shit doesn't work 
"moving with CTRL+right arrow to next word in normal mode
    "nnoremap <C-Right> w

"moving with CTRL+left arrow to previous word in normal mode
   " nmap <C-Left>  b

"delete a whole word with Ctrl+Delete in INSERT mode
   " noremap <C-BS> db

"paste after external copy 
    inoremap <C-S-v> "*p
"yank text from vim to clipboard
    vnoremap <C-c> "+y
"move faster up (for paragraph)
"notfuckin workin with Arrow
"noremap <C><Up> (
noremap <C-k> {
    inoremap <C-k> <Esc>{i
noremap <C-j> }
    inoremap <C-j> <Esc>}i
noremap jj <Esc>
    inoremap jj <ESC>
"automatic brackets 
"inoremap <C-{> <Esc>$a{ "<Esc>o}<Esc>ko
"noremap <C-l> w
"   inoremap <C-l> <Esc>wi
"noremap <C-h> b
"   inoremap <C-h> <Esc>bi
set incsearch
set nocp
set expandtab
set smarttab
     
"for powerline
set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256
