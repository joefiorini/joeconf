" TODO:
" - [ ] Auto-install plugins when added
"
" == VIM PLUG ================================
call plug#begin('~/.vim/plugged')
"------------------------ COC ------------------------
" coc for tslinting, auto complete and prettier
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" coc extensions
let g:coc_global_extensions = ['coc-eslint', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-import-cost', 'coc-svg', 'coc-gitignore', 'coc-lists', 'coc-snippets', 'coc-git', 'coc-marketplace', 'coc-stylelint', 'coc-jest', 'coc-project', 'coc-vimlsp', 'coc-rls']

"Plug 'HerringtonDarkholme/yats.vim' 
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'

Plug 'tmsvg/pear-tree'

Plug 'mbbill/undotree'
Plug 'chaoren/vim-wordmotion'

Plug 'yuttie/comfortable-motion.vim'

"------------------------ VIM TSX ------------------------
" by default, if you open tsx file, neovim does not show syntax colors
" vim-tsx will do all the coloring for jsx in the .tsx file
"Plug 'peitalin/vim-jsx-typescript'

Plug 'Rigellute/shades-of-purple.vim'

Plug 'liuchengxu/vim-clap'

Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'
Plug 'Shougo/echodoc.vim'

Plug 'itchyny/lightline.vim'

Plug 'gerw/vim-HiLinkTrace'

Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'hail2u/vim-css3-syntax'

Plug 'wellle/targets.vim'

Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

Plug 'mtth/scratch.vim'

Plug 'scrooloose/nerdcommenter'

Plug 'jxnblk/vim-mdx-js'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

Plug 'liuchengxu/vim-which-key'

Plug 'joefiorini/salvor.vim'

Plug 'dag/vim-fish'

Plug 'RRethy/vim-illuminate'
let config_plugin_path = expand('<sfile>:h') . "/config.d"
Plug config_plugin_path

Plug 'WolfgangMehner/c-support'

Plug 'reasonml-editor/vim-reason-plus'
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
Plug 'mhinz/vim-startify'
Plug 'tyru/open-browser.vim'

Plug 'vim-jp/vital.vim'

Plug 'thinca/vim-themis'

Plug 'svermeulen/nvim-marksman', { 'do': ':UpdateRemotePlugins'}
Plug 'lambdalisue/gina.vim'
Plug 'lambdalisue/suda.vim'

Plug 'rhysd/git-messenger.vim'

Plug 'ryanoasis/vim-devicons'

Plug 'qpkorr/vim-bufkill'
Plug 'TaDaa/vimade'

Plug 'liuchengxu/vista.vim'

set termguicolors

call plug#end()

" From vim-better-default
"
set shortmess=atOI " No help Uganda information, and overwrite read messages to avoid PRESS ENTER prompts
set ignorecase     " Case insensitive search
set smartcase      " ... but case sensitive when uc present
set scrolljump=5   " Line to scroll when cursor leaves screen
set scrolloff=3    " Minumum lines to keep above and below cursor
set nowrap         " Do not wrap long lines
set splitright     " Puts new vsplit windows to the right of the current
set splitbelow     " Puts new split windows to the bottom of the current
set autowrite      " Automatically write a file when leaving a modified buffer
set mousehide      " Hide the mouse cursor while typing
set hidden         " Allow buffer switching without saving
set showmatch      " Show matching brackets/parentthesis
set matchtime=5    " Show matching time
set linespace=0    " No extra spaces between rows
set pumheight=20   " Avoid the pop up menu occupying the whole screen

set number
set relativenumber

set formatoptions=croqan1j
set textwidth=80


set nobackup
set nowritebackup
set noswapfile

set cursorline

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set mouse=ar

set cmdheight=2

set incsearch                 "find the next match as we type the search
set hlsearch                  "hilight searches by default
set gdefault

set wrap                      "wrap entire words, don't break them; much easier to read!

set wildmenu                  "make tab completion act more like bash
set wildmode=list:longest     "complete first match when multiple matches
set completeopt=menu,longest
set wildignorecase
set wildignore+=*test.ts,*test.tsx,*stories.tsx

set switchbuf=useopen         "don't reopen already opened buffers

set noshowmode                " Hide the mode since lightline shows it

set autoread                  " Reload files changed outside of vim

set conceallevel=2

set undodir=~/.config/nvim/undo
set undofile

set guifont=DankMono\ Nerd\ Font

let mapleader="\<Space>"
let maplocalleader=","

" From coc.nvim:
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" Default netrw to tree view
let g:netrw_liststyle = 3
let g:netrw_banner = 0
" Make netrw open with Vim's cwd, not the file's
let g:netrw_keepdir = 0
let g:netrw_winsize = 23
let g:netrw_browse_split = 4
let g:netrw_altv = 1

let g:echodoc#enable_at_startup = 1
let g:NERDDefaultAlign = 'left'

let g:scratch_persistence_file="~/.config/nvim/scratch/scratch.txt"

let g:Illuminate_only_selected = 1
let g:Illuminate_delay = 1500

let g:BufKillCreateMappings = 0
let g:BufKillOverrideCtrlCaret = 1

set sessionoptions+=globals

" From https://github.com/neovim/neovim/wiki/FAQ#nvim-shows-weird-symbols-2-q-when-changing-modes"
set guicursor=
autocmd OptionSet guicursor noautocmd set guicursor=

syntax enable
let g:shades_of_purple_lightline = 1
let g:lightline = {
      \ 'colorscheme': 'shades_of_purple',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'currentfunction', 'gitbranch', 'readonly', 'filename' ] ],
      \   'right': [['salvor'], ['percent'], ['filetype'], ['lineinfo']]
      \ },
      \ 'inactive': {
      \ 'left': [['filename', 'bufnum']],
      \ 'right': [['filetype']]
      \},
      \ 'tabline': {
      \  'left': [ [ 'tabs' ] ],
      \  'right': [ [ 'blank' ] ]
      \},
      \ 'component': {
      \   'close': '%999X ',
      \   'blank': ' '
      \},
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction',
      \   'salvor': 'salvor#lightline',
      \   'gitbranch': 'LightlineGitBranch',
      \   'filename': 'LightlineFilename',
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \   'mode': 'LightlineMode',
      \   'readonly': 'LightlineReadonly'
      \ },
      \ 'component_expand': {
      \   'percent': 'LightlinePercent',
      \   'lineinfo': 'LightlineLineinfo',
      \ }
      \}

let g:my_filetype_icons = {
      \ "gina-commit": "",
      \ "gina-branch": "",
      \ "diff": "",
      \ "gina-status": "",
      \ "gina-merge": "",
      \ "gina-rebase": "",
      \ "help": "ﲉ",
      \ "fish": ""
      \}

function! s:GetFiletypeIcon()
  return get(g:my_filetype_icons, &filetype, WebDevIconsGetFileTypeSymbol())
endfunction

function! MyFiletype()
  return &filetype == "defx" ? "" : winwidth(0) > 70 ? (strlen(&filetype) ? s:GetFiletypeIcon() . ' ' : '  ') : ''
endfunction

function! MyFileformat()
  return &filetype == "defx" ? "" : winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! LightlineMode()
  return &filetype == "defx" ? "" : lightline#mode()
endfunction

function! LightlineFilename()
  return &filetype == "defx" ? "" : pathshorten(expand('%:.')) . (&modified ? " " : "")
endfunction

function! LightlineGitBranch()
  return &filetype == "defx" ? "" : fugitive#head()
endfunction

function! LightlinePercent()
  return &filetype == "defx" ? "" : "%3p%%"
endfunction

function! LightlineLineinfo()
  return &filetype == "defx" ? "" : "%3l:%-2v"
endfunction

function! LightlineReadonly()
  return &readonly ? '' : ''
endfunction

let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['*:commit'] = ''

let g:defx_icons_directory_icon = ""
let g:defx_icons_nested_closed_tree_icon = ""
let g:defx_icons_nested_opened_tree_icon = ""
let g:defx_icons_root_opened_tree_icon = ""
let g:defx_icons_parent_icon = " "
let g:defx_icons_mark_icon = ""

let g:vimade = {
      \ "fadelevel": 0.6
      \}

call defx#custom#option('_', {
      \ 'root_marker': '⠀',
      \ 'columns': 'indent:guide:icons:filename:type',
      \ 'split': 'vertical',
      \ 'direction': 'topleft',
      \ 'toggle': 1,
      \ 'listed': 1,
      \ 'resume': 1,
      \ 'winwidth': 50,
      \ 'winheight': &lines - &cmdheight
      \ })

call defx#custom#column('filename', {
      \ 'root_marker_highlight': 'Ignore',
      \ })

function! ShadesOfPurpleTypescript() abort
        "hi tsExportDefault cterm=italic ctermfg=173
        "hi tsFuncArgs cterm=italic ctermfg=179
        "hi tsThis cterm=italic ctermfg=216
        "hi tsxAttrib guifg=#FAD000 gui=italic
        "hi tsxComment gui=italic ctermfg=173
        "hi typescriptLineComment guifg=#B362FF gui=italic cterm=italic
        "hi tsxTagName guifg=#9EFFFF
        "hi tsxTag guifg=#FFFFFF
        "hi tsxCloseTag guifg=#FFFFFF
        "hi tsxCloseString guifg=#9EFFFF
        "hi typescriptReserved guifg=#F8BD7F ctermfg=214
        "hi typescriptStorageClass guifg=#FAD000
        "hi typescriptIdentifier guifg=#9EFFFF gui=italic
        hi IlluminatedWord guibg=#4D3D85
        " Get rid of the ~s at the bottom of the buffer
        highlight EndOfBuffer guifg=bg
        hi! Normal ctermbg=NONE guibg=NONE
        hi! LineNr guibg=NONE
endfunction

augroup ColorSchemeOverrides
        autocmd!
        autocmd ColorScheme shades_of_purple call ShadesOfPurpleTypescript()
augroup END

augroup FocusWrite
  autocmd!
  autocmd FocusLost * wall
augroup END

colorscheme shades_of_purple

let g:C_MapLeader = ';'

let g:vista_executive_for = {
      \ 'c': 'coc',
      \ 'typescript': 'coc',
      \ 'typescriptreact': 'coc',
      \ 'reason': 'coc',
      \ 'rust': 'coc',
      \ 'vim': 'coc',
      \ }
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista#renderer#enable_icon = 1
let g:vista_sidebar_width = 50

let g:comfortable_motion_friction = 50.0
let g:comfortable_motion_air_drag = 1.0

function! s:open_terminal()
  let newSize = &lines > 70 ? 20 : 10
  exe "split | resize " . newSize . " | term"
  exe "startinsert!"
endfunction

command! -nargs=0 EditVimConfig :tab drop ~/.config/nvim/init.vim


command! -nargs=0 ReloadVimConfig :source ~/.config/nvim/init.vim

command! -nargs=0 OpenTerminal :call <SID>open_terminal()
"nnoremap <silent> <space>` :OpenTerminal<cr>

noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(80)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-80)<CR>

" == VIMPLUG END ================================
" == AUTOCMD ================================
" by default .ts file are not identified as typescript and .tsx files are not
" identified as typescript react file, so add following
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
" == AUTOCMD END ================================
"

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Basic mappings
"
" Quit normal mode
nnoremap <silent> <Leader>q  :q<CR>
nnoremap <Leader>Q  :qa!<CR>
" Insert mode shortcut
inoremap <C-h> <BS>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
" Bash like
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-d> <Delete>
" Command mode shortcut
" 
cnoremap <C-h> <BS>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Delete>
" jj | escaping
inoremap jj <Esc>
cnoremap jj <C-c>
" Quit visual mode
vnoremap v <Esc>
" Move to the start of line
nnoremap H ^
" Move to the end of line
nnoremap L $
" Redo
nnoremap U <C-r>
" Quick command mode
nnoremap <CR> :
" In the quickfix window, <CR> is used to jump to the error under the
" cursor, so undefine the mapping there.
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
" Yank to the end of line
nnoremap Y y$
" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" Toggle pastemode
nnoremap <Leader>tp :setlocal paste!<CR>

" Highlight symbol under cursor on CursorHold
" autocmd CursorHold * silent call CocActionAsync('doHover')

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

function! ToggleNetrw()
  let i = bufnr("$")
  let wasOpen = 0
  while (i >= 1)
    if (getbufvar(i, "&filetype") == "netrw")
      silent exe "bwipeout " . i
      let wasOpen = 1
    endif
    let i-=1
  endwhile

  if !wasOpen
    silent Vexplore
  endif
endfunction

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Use `gw` and `ge` to navigate diagnostics
nmap <silent> gW <Plug>(coc-diagnostic-prev)
nmap <silent> gw <Plug>(coc-diagnostic-next)
nmap <silent> gE <Plug>(coc-diagnostic-prev-error)
nmap <silent> ge <Plug>(coc-diagnostic-next-error)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use <tab> for select selections ranges, needs server support, like:
" coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Select a function
xmap <silent> if <Plug>(coc-funcobj-i)
xmap <silent> af <Plug>(coc-funcobj-a)

" Expand current file's directory in command line
cnoremap %% <C-R>=expand("%:h")<cr>/

" pear-tree's default <CR> mapping conflicts with vim-clap's buffer-local <CR>
" mapping. Using this hack to manually set a buffer local mapping in non-clap
" buffers for pear-tree
fun! ApplyCRBinding()
  if &filetype != "clap_input"
    imap <buffer> <CR> <Plug>(PearTreeExpand)
    imap <buffer> <BS> <Plug>(PearTreeBackspace)
    imap <buffer> <Esc> <Plug>(PearTreeFinishExpansion)
  endif
endfun

let g:clap_current_selection_sign = { 'text':  '', 'texthl': "WarningMsg", "linehl": "ClapCurrentSelection"}
let g:clap_search_box_border_style = 'curve'
let g:clap_search_box_border_symbols = {
      \ "curve": ["", ""]
      \}

let fg_color = synIDattr(synIDtrans(hlID('ClapInput')), 'bg', 'gui')

autocmd FileType clap_input hi ClapSymbol guibg=none guifg=#7d44b2

let g:pear_tree_smart_openers = v:true
let g:pear_tree_smart_closers = v:true
let g:pear_tree_smart_backspace = v:true
let g:pear_tree_map_special_keys = 0

autocmd BufRead * call ApplyCRBinding()

"autocmd WinEnter * if &buftype ==# 'terminal' | startinsert | endif

call which_key#register('<Space>', 'g:which_key_map_major')
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
call which_key#register(',', 'g:which_key_map_minor')
nnoremap <silent> <localleader> :<c-u>WhichKey ','<CR>
vnoremap <silent> <localleader> :<c-u>WhichKeyVisual ','<CR>

set timeoutlen=500

let g:which_key_map =  {}

" Using CocList
" Show all diagnostics
nnoremap <silent> <localleader>cd  :<C-u>CocList diagnostics<cr>
" Find symbol of current document
nnoremap <silent> <localleader>co  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <localleader>cs  :Vista!!<CR>
" Do default action for next item.
nnoremap <silent> <localleader>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <localleader>k  :<C-u>CocPrev<CR>
" Resume latest coc list
xmap <silent> <localleader>ac <Plug>(coc-codeaction-selected)
nmap <silent> <localleader>af <Plug>(coc-fix-current)
nmap <silent> <localleader>qr <Plug>(coc-references)
nmap <silent> <localleader>ac <Plug>(coc-codeaction)

nmap <silent> <localleader>rn <Plug>(coc-rename)

command! -nargs=+ -complete=custom,s:GrepArgs Ag exe 'CocList -I grep '.<q-args>

function! s:GrepArgs(...)
  let list = ['-S', '-smartcase', '-i', '-ignorecase', '-w', '-word',
        \ '-e', '-regex', '-u', '-skip-vcs-ignores', '-t', '-extension']
  return join(list, "\n")
endfunction

let g:startify_fortune_use_unicode = 1

let g:which_key_map.w = { 'name': '+Window' }
nnoremap <Leader>ww <C-W>w
let g:which_key_map.w.w = 'Other window'
nnoremap <Leader>wr <C-W>r
let g:which_key_map.w.r = 'Rotate windows'
nnoremap <Leader>wd <C-W>c
let g:which_key_map.w.c = 'Close window'
nnoremap <Leader>wq <C-W>q
let g:which_key_map.w.q = 'Quit window'
nnoremap <Leader>wj <C-W>j
let g:which_key_map.w.j = 'Window below'
nnoremap <Leader>wk <C-W>k
let g:which_key_map.w.k = 'Window above'
nnoremap <Leader>wh <C-W>h
let g:which_key_map.w.h = 'Window left'
nnoremap <Leader>wl <C-W>l
let g:which_key_map.w.l = 'Window right'
if has('nvim') || has('terminal')
    tnoremap <Leader>wj <C-W>j
    tnoremap <Leader>wk <C-W>k
    tnoremap <Leader>wh <C-W>h
    tnoremap <Leader>wl <C-W>l
endif
nnoremap <Leader>wH <C-W>5<
let g:which_key_map.w.H = 'Expand left'
nnoremap <Leader>wL <C-W>5>
let g:which_key_map.w.L = 'Expand right'
nnoremap <Leader>wJ :resize +5<CR>
let g:which_key_map.w.J = 'Expand down'
nnoremap <Leader>wK :resize -5<CR>
let g:which_key_map.w.K = 'Expand up'
nnoremap <Leader>w= <C-W>=
let g:which_key_map.w['='] = 'Balance windows'
nnoremap <Leader>ws <C-W>s
let g:which_key_map.w.s = 'Split below'
nnoremap <Leader>w- <C-W>s
let g:which_key_map.w['-'] = 'Split below'
nnoremap <Leader>wv <C-W>v
let g:which_key_map.w.v = 'Split right'
nnoremap <Leader>w\| <C-W>v
let g:which_key_map.w['|'] = 'Split right'


autocmd TermOpen * setlocal nonumber norelativenumber 

" TODO: Work the below into hierachical keymap
"call coc#add_command('jf.openTerminal', 'OpenTerminal', 'Opens a terminal in a lower split window')
"call coc#add_command('jf.toggleFileExplorer', 'toggleNetrw', 'Toggle the file explorer drawer')
"call coc#add_command('jf.makeComponentFolder', 'MakeComponentFolder', 'Using current file name as the component name, make a new directory for the component & related files, and export from index.{ts,js}')
nnoremap <D-p> :FuzzyOpen<CR>
nnoremap <leader>e :FuzzyOpen<CR>
nnoremap <leader><leader> <C-^>

nmap <C-/> <leader>c<space>

" Run jest for current project
command! -nargs=0 Jest :call  CocAction('runCommand', 'jest.projectTest')

" Run jest for current file
command! -nargs=0 JestCurrent :call  CocAction('runCommand', 'jest.fileTest', ['%'])

" Run jest for current test
"nnoremap <leader>te :call CocAction('runCommand', 'jest.singleTest')<CR>
"nnoremap <leader>t :JestCurrent<CR>

" Kill ex mode, I never use it anyway
nnoremap Q <Nop>
nnoremap gQ <Nop>

" Finally quit hitting :Q instead of :q
cnoremap Q<CR> q<CR>
cnoremap W<CR> w<CR>

" Stop unnecessarily recording macros
nnoremap <C-q> q
nnoremap q <Nop>

xnoremap y@ y:@"<CR>
noremap y* "*y

" Terminal settings
tnoremap <ESC> <C-\><C-n>

" Window navigation function
" Make ctrl-h/j/k/l move between windows and auto-insert in terminals
func! s:mapMoveToWindowInDirection(direction)
  execute "nnoremap" "<silent>" "<C-" . a:direction . ">" "<C-w>" . a:direction
  execute "tmap" "<silent>" "<C-" . a:direction . ">" "<C-\\><C-n><C-" . a:direction . ">"
endfunc

" Disabling temporarily due to https://github.com/neoclide/coc.nvim/issues/777
" Maybe I can figure out a way to determine if a term buffer is from coc or
" not and keep this from happening?
"autocmd WinEnter * if &buftype ==# 'terminal' | startinsert | endif

for dir in ["h", "j", "l", "k"]
    call s:mapMoveToWindowInDirection(dir)
endfor

function! MoveCurrentFile(newPath)
  let oldPath = expand('%')
  call MoveFile(oldPath, a:newPath, 1)
endfunction

function! MoveFile(oldPath, newPath, isCurrentFile)
  if (a:oldPath == a:newPath)
    return 0
  endif

  if a:isCurrentFile
    exe 'save' . fnameescape(a:newPath)
  else
    let fileContent = readfile(a:oldPath)
    call CreateFile(fileContent, a:newPath)
  endif

  call delete(a:oldPath)
endfunction

function! CreateFile(content, filePath)
  call writefile(a:content, a:filePath)
endfunction

function! s:makeComponentFolder()
  let currentPath = expand("%:p:h")
  let componentName = expand("%:p:t:r")
  let componentFilename = expand("%:p:t")
  let newPath = currentPath . "/" . componentName
  let ext = expand("%:e")

  call mkdir(newPath)

  call MoveCurrentFile(newPath . "/" . componentFilename)

  let fileCounterparts = ["test", "stories"]

  let globStr = join([componentName, "*", ext], ".")
  let fileResults = globpath(currentPath, globStr, 0, 1)

  echo fileResults

  for counterpart in fileResults
    echom counterpart

    let newCounterpartName = newPath . "/" . fnamemodify(counterpart, ":t")
    call MoveFile(counterpart, newCounterpartName, 0)
  endfor

  " create index.ts
  call CreateFile(["export { default } from './" . componentName . "';"], newPath . "/index." . ext == "tsx" ? "ts" : "js")
endfunc

command! -nargs=0 MakeComponentFolder :call s:makeComponentFolder()

fun! CompleteEcur(argLead, cmdLine, cursorPos)
  let base_dir = expand("%:p:h")
  let pattern = base_dir . "/" . is_directory(base_dir . "/" . argLead) ? argLead : "*"
  let files = glob(base_dir . "/*", v:false, v:true)
  call map(files, {idx -> fnamemodify(files[idx], ":t")})
  return files
endfun

command! -nargs=1 -complete=customlist,CompleteEcur Ecur exec "e " . expand("%:p:h") . "/" . <args>
command! -nargs=0 Mkdirc exec "!mkdir " . expand("%:p:h") . "/"
command! -nargs=0 Srcc exec "source " . expand("%")
