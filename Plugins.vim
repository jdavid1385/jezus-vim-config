" Temporarly disable filetype for Vundle will make some changes that
" would otherwise break some installations

filetype off

syntax on
syntax enable
" Now we can turn our filetype functionality back on
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
execute vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'metalelf0/supertab'
Plugin 'easymotion/vim-easymotion'
Plugin 'ludovicchabant/vim-gutentags'
" vim-clap seems like a great tool but the grep is kind of not working at all, 
" however the rest of mode as awesome and very usable, in particular commits,
" buffers with previews and the like. Now with bfrg/vim-qf-preview we could
" take it one step ahead by allowing scrolling in the previews, I spotted the
" preview chunk in the code and it could easily be replaced by vim-qf-preview
" one
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'liuchengxu/vim-clap', { 'do' : function('clap#helper#build_all') }

Plugin 'ulwlu/elly.vim'
Plugin 'voldikss/vim-floaterm'
Plugin 'liuchengxu/vim-which-key'
Plugin 'metakirby5/codi.vim'
Plugin 'AndrewRadev/quickpeek.vim'
Plugin 'bfrg/vim-qf-preview'
Plugin 'wfleming/vim-codeclimate'
Plugin 'haya14busa/incsearch.vim'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'wincent/ferret'
Plugin 'kchmck/vim-coffee-script'
"Plugin 'prabirshrestha/async.vim'
"Plugin 'prabirshrestha/asyncomplete.vim'
"Plugin 'prabirshrestha/vim-lsp'
" Required
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-cucumber'
Plugin 'vim-scripts/dbext.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'Shougo/unite.vim'
Plugin 'vim-scripts/genutils'
Plugin 'albfan/vim-breakpts'
Plugin 'pedrohdz/vim-yaml-folds'
Plugin 'devjoe/vim-codequery'
Plugin 'ddrscott/vim-side-search'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'vim-ruby/vim-ruby'
Plugin 'albfan/nerdtree-file-filter-plugin'
" HTML
Plugin 'junegunn/vim-emoji'


" Auto complete options
Plugin 'Shougo/deoplete.nvim'
Plugin 'ms-jpq/coq_nvim'
Plugin 'neovim/nvim-lspconfig'
Plugin 'ray-x/guihua.lua', {'do': 'cd lua/fzy && make' }
Plugin 'ray-x/navigator.lua'
Plugin 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plugin 'neoclide/coc.nvim', {'branch': 'release'}

Plugin 'kosayoda/nvim-lightbulb'
Plugin 'weilbith/nvim-code-action-menu'
Plugin 'skywind3000/vim-quickui'

" optional:
Plugin 'nvim-treesitter/nvim-treesitter-refactor' "
Plugin 'modsound/mac_notify-vim'

Plugin 'dense-analysis/ale'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'roxma/nvim-yarp'
Plugin 'reconquest/vim-pythonx'
Plugin 'pseewald/anyfold'

Plugin 'benmills/vimux'
Plugin 'vim-scripts/ruby-matchit'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'ivalkeen/vim-ctrlp-tjump'
Plugin 'wincent/command-t'
Plugin 'dbakker/vim-projectroot'
Plugin 'morhetz/gruvbox'
Plugin 'sjl/gundo.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'tpope/vim-bundler'   " This makes vim aware of the bundled gem tags that you create via gem-ripper-tags
Plugin 'tpope/vim-rbenv'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-rake'

" TabNine stuff
Plugin 'zxqfl/tabnine-vim'
Plugin 'ycm-core/YouCompleteMe'

Plugin 'tbodt/deoplete-tabnine', {
  \ 'branch': 'master',
  \ 'do': 'bash install.sh',
  \ }

Plugin 'vim-ctrlspace/vim-ctrlspace'
Plugin 'jdavid1385/vim-zoom'
Plugin 'jremmen/vim-ripgrep'
Plugin 'puremourning/vimspector'

Plugin 'yaasita/edit-slack.vim'

Plugin 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }


call vundle#end()            " required

filetype plugin indent on    " required
filetype plugin on           " Enable filetype-specific plugins

