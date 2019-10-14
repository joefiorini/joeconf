" == VIM PLUG ================================
call plug#begin('~/.vim/plugged')
"------------------------ COC ------------------------
" coc for tslinting, auto complete and prettier
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" coc extensions
let g:coc_global_extensions = ['coc-eslint', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-import-cost', 'coc-svg', 'coc-gitignore', 'coc-lists', 'coc-snippets', 'coc-git', 'coc-pairs', 'coc-marketplace', 'coc-stylelint', 'coc-jest', 'coc-project', 'coc-vimlsp']

"------------------------ VIM TSX ------------------------
" by default, if you open tsx file, neovim does not show syntax colors
" typescript-vim will do all the coloring for typescript keywords
Plug 'leafgarland/typescript-vim'

"------------------------ VIM TSX ------------------------
" by default, if you open tsx file, neovim does not show syntax colors
" vim-tsx will do all the coloring for jsx in the .tsx file
Plug 'peitalin/vim-jsx-typescript'

Plug 'Rigellute/shades-of-purple.vim'

Plug 'cloudhead/neovim-fuzzy'

Plug 'itchyny/lightline.vim'

Plug 'gerw/vim-HiLinkTrace'

Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'hail2u/vim-css3-syntax'

Plug 'wellle/targets.vim'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

Plug 'mtth/scratch.vim'

Plug 'scrooloose/nerdcommenter'

Plug 'jxnblk/vim-mdx-js'
Plug 'plasticboy/vim-markdown'

set termguicolors

call plug#end()

set hidden

set nobackup
set nowritebackup
set noswapfile

set cursorline

set expandtab
set shiftwidth=2
set softtabstop=2
set mouse=ar

set cmdheight=2

" From coc.nvim:
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

let g:NERDDefaultAlign = 'left'

let g:scratch_persistence_file="~/.config/nvim/scratch/scratch.txt"

syntax enable
let g:shades_of_purple_lightline = 1
let g:lightline = {
  \ 'colorscheme': 'shades_of_purple',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction'
      \ },
      \ }
                
function! ShadesOfPurpleTypescript() abort
        hi tsExportDefault cterm=italic ctermfg=173
        hi tsFuncArgs cterm=italic ctermfg=179
        hi tsThis cterm=italic ctermfg=216
        hi tsxAttrib guifg=#FAD000 gui=italic
        hi tsxComment gui=italic ctermfg=173
        hi typescriptLineComment guifg=#B362FF gui=italic cterm=italic
        hi tsxTagName guifg=#9EFFFF
        hi tsxTag guifg=#FFFFFF
        hi tsxCloseTag guifg=#FFFFFF
        hi tsxCloseString guifg=#9EFFFF
        hi typescriptReserved guifg=#F8BD7F ctermfg=214
        hi typescriptStorageClass guifg=#FAD000
        hi typescriptIdentifier guifg=#9EFFFF gui=italic
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

function! s:add_coc_commands()
  call coc#add_command('jf.editVimConfig', 'EditVimConfig', 'Opens vim config in a new tab')
  call coc#add_command('jf.reloadVimConfig', 'ReloadVimConfig', 'Sources vim config')
  call coc#add_command('jf.openTerminal', 'OpenTerminal', 'Opens a terminal in a lower split window')
endfunction

call <SID>add_coc_commands()

function! s:open_terminal()
  exe "split | resize 20 | term"
  exe "startinsert!"
endfunction


command! -nargs=0 EditVimConfig :tabe ~/.config/nvim/init.vim
nnoremap <silent> <leader>ge :EditVimConfig<cr>

command! -nargs=0 ReloadVimConfig :source ~/.config/nvim/init.vim
nnoremap <silent> <leader>gr :ReloadVimConfig<cr>

command! -nargs=0 OpenTerminal :call <SID>open_terminal()
nnoremap <silent> <space>` :OpenTerminal<cr>

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

" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

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

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <leader>ac <Plug>(coc-codeaction)
nmap <leader>qf <Plug>(coc-fix-current)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
vnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
nnoremap <silent> <space>/  :<C-u>CocList grep<CR>


nnoremap <D-p> :FuzzyOpen<CR>
nnoremap <leader>e :FuzzyOpen<CR>
nnoremap <leader><leader> <C-^>

nmap <C-/> <leader>c<space>

" Run jest for current project
command! -nargs=0 Jest :call  CocAction('runCommand', 'jest.projectTest')

" Run jest for current file
command! -nargs=0 JestCurrent :call  CocAction('runCommand', 'jest.fileTest', ['%'])

" Run jest for current test
nnoremap <leader>te :call CocAction('runCommand', 'jest.singleTest')<CR>
nnoremap <leader>t :JestCurrent<CR>

" Terminal mappings
" " Window split settings
highlight TermCursor ctermfg=red guifg=red
set splitbelow
set splitright

" Terminal settings
tnoremap <ESC> <C-\><C-n>

" Window navigation function
" Make ctrl-h/j/k/l move between windows and auto-insert in terminals
func! s:mapMoveToWindowInDirection(direction)
  execute "nnoremap" "<silent>" "<C-" . a:direction . ">" "<C-w>" . a:direction
  execute "tmap" "<silent>" "<C-" . a:direction . ">" "<C-\\><C-n><C-" . a:direction . ">"
endfunc

autocmd WinEnter * if &buftype ==# 'terminal' | startinsert | endif

for dir in ["h", "j", "l", "k"]
    call s:mapMoveToWindowInDirection(dir)
endfor
