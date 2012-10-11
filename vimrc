filetype plugin indent on

" Tabs
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set autoindent

" Color 
set t_Co=256
syntax on
set background=dark
colorscheme Tomorrow-Night

" Look and Feel
set cursorline
set number
set equalalways
set splitbelow splitright
" set scrolloff=8
set backspace=indent,eol,start
set shortmess+=I
set clipboard=unnamed
set nopaste
set cmdheight=2

" Make tab completion for files/buffers act like bash"
set wildmenu

" Key Mappings
imap jj <Esc>
inoremap <tab> <c-n>
nmap <silent> <Leader>n :NERDTreeToggle<CR>
nmap <silent> <Leader>N :NERDTreeFind<CR>
map <leader>F :Ack<space>
nnoremap <leader><leader> <c-^>
nnoremap <leader>h :set hlsearch!<CR>

" Search
set incsearch
set ignorecase
set smartcase
set hlsearch

" Status Line
set laststatus=2
set statusline+=[%F]
set statusline+=[FORMAT=%{&ff}]
set statusline+=[TYPE=%Y]
set statusline+=[POS=%04l,%04v]
set statusline+=[%p%%]
set statusline+=%*
set ruler

" Always show tab bar
set showtabline=2

" folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" Swap and Backup Files
set nobackup
set nowritebackup
set noswapfile

" Jump to last cursor position when opening a file.
" Do not do it when writing a commit log entry.
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
  if &filetype !~ 'commit\c'
    if line("'\"") > 0 && line("'\"") <= line("$")
     exe "normal g`\""
    endif
  end
endfunction

" F5 to remove trailing white space
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Command-T
let g:CommandTMaxFiles=20000
let g:CommandTMatchWindowAtTop=1

" Vim Notes
let g:notes_directory = '~/Dropbox/Notes'
let g:notes_suffix = '.txt'