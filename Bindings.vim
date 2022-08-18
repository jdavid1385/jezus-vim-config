let mapleader = ","
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l

" quickfix window navigation
" nmap <leader>n :cn<CR>
" nmap <leader>N :cp<CR>

nmap <leader>n :bn<CR>
nmap <leader>N :bp<CR>
nmap  <unique> <silent> <leader>lg :FloatermNew --title=gitdiff lazygit<CR>
" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" ,t for new tab
" map <leader>tt :tabnew<CR>
" ,w to close tab
map <leader>w :tabc<CR>

let g:ctrlp_map = '<c-t>'

" ctrl-n to disable search highlight
nmap <silent> <C-N> :silent noh<CR>

" ctrl-l in insert mode to jump over closed brackets
imap <c-l> <c-g>g

" toggle taglist plugin
map <F3> :TlistToggle<CR>

" syntastic
" map <F7> :SyntasticCheck<CR>
" map <F8> :Errors<CR>

" copa paste
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y

" Command-T shortcuts
nmap <unique> <silent> <leader>l :CommandTTag<CR>
nnoremap <silent> <Leader><Leader> :CommandT<CR>
nmap <unique> <silent> <Leader><Leader><Leader> :CommandTFlush<CR>:CommandT<CR>                           

" Tagbar shortcuts
nmap <unique> <silent> <leader>g :TagbarToggle<CR>

" Gundo Toogle
nnoremap <F9> :GundoToggle<CR>

" Nerdcommenter
" ,/ to invert comment on the current line/selection
nmap <leader>/ :call nerdcommenter#Comment(0, "Invert")<cr>
vmap <leader>/ :call nerdcommenter#Comment(0, "Invert")<cr>

" Nerd tree toggle
nnoremap <silent> <Leader>t :NERDTreeToggle<CR>

" Command-T shortcuts
nnoremap <silent> <Leader><Leader> :CommandT<CR>

" CtrlPtJump mappings
nnoremap <C-]> :CtrlPtjump<CR>
vnoremap <C-]> :CtrlPtjumpVisual<CR>
"nnoremap <C-]> :CodeQuery<CR>
"vnoremap <C-]> :CodeQuery<CR>


" Easymotion
map <Leader>f <Plug>(easymotion-prefix)

" SideSearch current word and return to original window
nnoremap <Leader>ss :SideSearch <C-r><C-w><CR> | wincmd p

" Create an shorter `SS` command
command! -complete=file -nargs=+ SS execute 'SideSearch <args>'
" A kill buffer that does not closes the actual split 
command Bd bp\|bd \#

" or command abbreviation
cabbrev SS SideSearch

" incsearch mappings
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" CtrlSpace configuration

" https://github.com/vim-ctrlspace/vim-ctrlspace/blob/1a8937dff063d22e681910567528ec9a563d2717/doc/ctrlspace.txt#L1190
" 8.1.1 *:CtrlSpace* [keys]

"Shows the plugin window. It is meant to be used in custom mappings or more
"sophisticated plugin integration. You can pass keys that will be "pressed"
"in the plugin window.
nnoremap <silent><C-p> :CtrlSpace l<CR>
