set number              " precede each line with its line number
set numberwidth=3       " number of culumns for line numbers
set textwidth=0         " Do not wrap words (insert)
set nowrap              " Do not wrap words (view)
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ruler               " line and column number of the cursor position
set wildmenu            " enhanced command completion
set visualbell          " use visual bell instead of beeping
set laststatus=2        " always show the status line
set hidden              " hide buffers instead of closing them
set list                " highlight whitespaces in code
set listchars=tab:>.,trail:.,extends:#,nbsp:. " highlight whitespaces in code

" behavior
set history=1000                 " command history size
set autoread                     " automatically read file that has been changed
set completeopt=longest,menuone  " set completion window behavior
set autoindent                   " automatically indent new line

" mouse setting
if has("mouse")
  set mouse=a
  if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
  endif
endif


set mousehide                    " Hide mouse pointer on insert mode."

" editing
set ts=4                " number of spaces in a tab
set sw=4                " number of spaces for indent
set et                  " expand tabs into spaces

" search settings
set incsearch           " Incremental search
set hlsearch            " Highlight search match
set ignorecase          " Do case insensitive matching
set smartcase           " do not ignore if search pattern has CAPS

" directory settings
set backupdir=~/.backup,.       " list of directories for the backup file
set directory=~/.backup,~/tmp,. " list of directory names for the swap file
set nobackup            " do not write backup files
set noswapfile          " do not write .swp files

" terminal and encoding settings
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
"set term=xterm-256color
set termencoding=utf-8

set wildignore+=.git,venv,*.egg-info

