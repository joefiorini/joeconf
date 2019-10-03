fun! joeconf#mapping#basic#init()
  call joeconf#mapping#basic#files()
  call joeconf#mapping#basic#search()
  call joeconf#mapping#basic#user()
endfun


fun! joeconf#mapping#basic#files()
  call joeconf#mapping#group("f", "+Files/Fold")

  call joeconf#mapping#define("nnoremap <silent>", "fd", ":Defx -split=vertical
        \ -winwidth=50 -direction=topleft -toggle `expand('%:p:h')`
        \ -search=`expand('%:p')`<CR>", 'Reveal current file')
  call joeconf#mapping#define("nnoremap <silent>", "ft", ":Defx -split=vertical -winwidth=50 -direction=topleft -toggle<CR>", "Toggle explorer")
  call joeconf#mapping#define("nnoremap <silent>", "fs", ":update<CR>", "Save")
  call joeconf#mapping#define("nnoremap <silent>", "fr", ":source %<CR>", "Source current")
  call joeconf#mapping#define("nnoremap <silent>", "fz", ":FuzzyOpen<CR>", "Fuzzy find")
  call joeconf#mapping#define("nnoremap <silent>", "fj", ":<c-u>Marksman<CR>", "Jump to file")
endfun

fun! joeconf#mapping#basic#search()
  call joeconf#mapping#group("s", "+Search")

  call joeconf#mapping#define("nnoremap <silent>", "/", ":<C-u>Ag -smartcase<CR>", "Find in files")
  call joeconf#mapping#define("nnoremap <silent>", "sp", ":<C-u>Ag -smartcase<CR>", "Find in files")
  call joeconf#mapping#define("nnoremap <silent>", "sx", ":<C-u>Ag -regex<CR>", "Find in files (regex)")
  call joeconf#mapping#define("nnoremap <silent>", "sw", ":exe 'CocList -I --input='.expand('<cword>').' grep'<CR>", "Find current word in files")
  call joeconf#mapping#define("nnoremap <silent>", "sc", ":nohlsearch", "Clear search")
endfun

fun! joeconf#mapping#basic#user()
  call joeconf#mapping#group("u", "User-Specific")
  call joeconf#mapping#group("uc", "Vim-config")
  call joeconf#mapping#group("us", "Shell-config")
  call joeconf#mapping#group("ug", "Git-config")
  call joeconf#mapping#define("nnoremap <silent>", "uce", ":EditVimConfig<cr>", "Edit Vim config")
  call joeconf#mapping#define("nnoremap <silent>", "ucr", "call joeconf#reload()<cr>", "Reload Vim config")
  call joeconf#mapping#define("nnoremap <silent>", "use", ":tabe ~/.config/fish/config.fish", "Edit Fish config")
  call joeconf#mapping#define("nnoremap <silent>", "uge", ":tabe ~/.gitconfig", "Edit Git config")
endfun
