" Set 'selection', 'selectmode', 'mousemodel' and 'keymodel' for MS-Windows
behave mswin

" Clipboard configuration
set clipboard=unnamed,unnamedplus

" CTRL-X is Cut
smap <C-x> <C-g>x

" CTRL-C is Copy
smap <C-c> <C-g>y

" CTRL-V is Paste
imap <C-v> <Esc>pi
smap <C-v> <C-g>p

" Del is Delete 
smap <Del> <C-g>"_d

" CTRL-Z is Undo
noremap <C-z> u
inoremap <C-z> <C-O>u

" CTRL-Y is Redo
noremap <C-y> <C-R>
inoremap <C-y> <C-O><C-R>

" CTRL-A is Select all
noremap <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
snoremap <C-A> <C-C>gggH<C-O>G
xnoremap <C-A> <C-C>ggVG

" Move line upwards/downwards
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" Backspace and cursor keys wrap to previous/next line
set backspace=indent,eol,start whichwrap+=<,>,[,]

" Configuration of the status bar
set laststatus=2
set showmode
set showcmd

" Show line numbers
set number

" No wrapping
set nowrap

" Show existing tab with 4 spaces width
set tabstop=4

" When indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab

" Autoread enable: When a file has been detected to have been changed outside of Vim, automatically read it again.
set autoread

" Set encoding
set encoding=utf-8

" Highlight the matching bracket or brace when the cursor is over one
set showmatch

" Automatically indent the next new line to match the indent of the previous one
set autoindent

" Vertical column
" set colorcolumn=100
" hi ColorColumn ctermbg=0 guibg=lightgrey

" Enable sintax highlighting
syntax on

" Enable cursor shape changes (vertical line in insert mode)
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' | 
    \   silent execute '!echo -ne "\e[6 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[4 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

" Enable python highlighting and syntax
au BufRead,BufNewFile *.py set filetype=python

" General sintax 
hi Normal                    ctermfg=7     ctermbg=16 
hi LineNr                    ctermfg=8     ctermbg=16   
hi Visual                    ctermfg=NONE  ctermbg=33   
hi MatchParen                ctermfg=160   ctermbg=NONE   cterm=bold 

" Python sintax
hi pythonConstant            ctermfg=172   ctermbg=NONE
hi pythonStatement           ctermfg=172   ctermbg=NONE
hi pythonConditional         ctermfg=172   ctermbg=NONE
hi pythonRepeat              ctermfg=172   ctermbg=NONE
hi pythonOperator            ctermfg=172   ctermbg=NONE
hi pythonException           ctermfg=172   ctermbg=NONE
hi pythonInclude             ctermfg=172   ctermbg=NONE
hi pythonComma               ctermfg=172   ctermbg=NONE

hi pythonComment             ctermfg=8     ctermbg=NONE
hi pythonTodo                ctermfg=11    ctermbg=NONE

hi pythonString              ctermfg=2     ctermbg=NONE

hi pythonNumber              ctermfg=33    ctermbg=NONE

hi pythonBuiltin             ctermfg=63    ctermbg=NONE

hi pythonFunctionDefinition  ctermfg=11    ctermbg=NONE
hi pythonFunctionCallKeyword ctermfg=88    ctermbg=NONE


