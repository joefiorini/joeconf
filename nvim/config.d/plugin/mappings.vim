" Files
"
call joeconf#mapping#group("f", "+Files/Fold")


call joeconf#mapping#define("nnoremap <silent>", "fd", ":Defx -no-resume -no-listed -search=`expand('%:p')`<CR>", 'Reveal current file')
call joeconf#mapping#define("nnoremap <silent>", "ft", ":Defx<CR>", "Toggle explorer")
call joeconf#mapping#define("nnoremap <silent>", "fs", ":update<CR>", "Save")
call joeconf#mapping#define("nnoremap <silent>", "fn", ":CocCommand workspace.renameCurrentFile<CR>", "Rename current file")
call joeconf#mapping#define("nnoremap <silent>", "fr", ":source %<CR>", "Source current")
call joeconf#mapping#define("nnoremap <silent>", "fz", ":FuzzyOpen<CR>", "Fuzzy find")
call joeconf#mapping#define("nnoremap <silent>", "fj", ":<c-u>Marksman<CR>", "Jump to file")
call joeconf#mapping#define("nnoremap <silent>", "fm", ':<C-u>CocList mru<CR>', 'MRU Files')

" Search
" 
call joeconf#mapping#group("s", "+Search")

call joeconf#mapping#define("nnoremap <silent>", "/", ":<C-u>Ag -smartcase<CR>", "Find in files")
call joeconf#mapping#define("nnoremap <silent>", "sp", ":<C-u>Ag -smartcase<CR>", "Find in files")
call joeconf#mapping#define("nnoremap <silent>", "sx", ":<C-u>Ag -regex<CR>", "Find in files (regex)")
call joeconf#mapping#define("nnoremap <silent>", "sw", ":exe 'CocList -I --input='.expand('<cword>').' grep'<CR>", "Find current word in files")
call joeconf#mapping#define("nnoremap <silent>", "sc", ":nohlsearch<CR>", "Clear search")

" User-Specific
"
call joeconf#mapping#group("u", "User-Specific")
call joeconf#mapping#group("uc", "Vim-config")
call joeconf#mapping#group("us", "Shell-config")
call joeconf#mapping#group("ug", "Git-config")
call joeconf#mapping#define("nnoremap <silent>", "uce", ":EditVimConfig<cr>", "Edit Vim config")
call joeconf#mapping#define("nnoremap <silent>", "ucr", ":call joeconf#reload()<cr>", "Reload Vim config")
call joeconf#mapping#define("nnoremap <silent>", "use", ":tabe ~/.config/fish/config.fish<CR>", "Edit Fish config")
call joeconf#mapping#define("nnoremap <silent>", "uge", ":tabe ~/.gitconfig<CR>", "Edit Git config")

" Git
"
call joeconf#mapping#group("g", "Git")
call joeconf#mapping#define("nnoremap <silent>", "gs", ":Gina status --group=git --opener='botright split'<CR>", "Status")
call joeconf#mapping#define("nnoremap <silent>", "gm", "<Plug>(git-messenger)", "Status")
call joeconf#mapping#group("gc", "Commit")
call joeconf#mapping#define("nnoremap <silent>", "gcc", ":Gina commit --group=git --opener='botright split'<CR>", "Commit")
call joeconf#mapping#define("nnoremap <silent>", "gca", ":Gina commit --amend --group=git --opener='botright split'<CR>", "Amend")
call joeconf#mapping#define("nnoremap <silent>", "gb", ":Gina browse<CR>", "Browse current file")
call joeconf#mapping#group("gu", "Push (options)")
call joeconf#mapping#define("nnoremap <silent>", "gup", ":Gina push -u<CR>", "Push (--track)")
call joeconf#mapping#define("nnoremap <silent>", "guf", ":Gina push --force-with-lease<CR>", "Push (--force-with-lease)")

" Yank
"
call joeconf#mapping#group("y", "Yank")
call joeconf#mapping#define("nnoremap <silent>", "y@", "y:@\"<CR>", "Status")

" Buffer
"
call joeconf#mapping#group("b", "Buffer")
call joeconf#mapping#define("nnoremap <silent>", "ba", ':BA<CR>', "Alternate")
call joeconf#mapping#define("nnoremap <silent>", "bp", ":bprevious<CR>", "Previous")
call joeconf#mapping#define("nnoremap <silent>", "bn", ":bnext<CR>", "Next")
call joeconf#mapping#define("nnoremap <silent>", "bc", ':BW<CR>', "Close")
call joeconf#mapping#define("nnoremap <silent>", "br", ':BUNDO<CR>', "Reopen")
call joeconf#mapping#define("nnoremap <silent>", "bl", ":<C-u>CocList buffers<CR>", "List")

" Salvor
"
call joeconf#mapping#group("t", "Terminal")
call joeconf#mapping#describe("tr", "Kill all terminals")
call joeconf#mapping#describe("twv", "New terminal split")
call joeconf#mapping#group("tt", "Tabs")
call joeconf#mapping#describe("ttt", "New terminal tab")
call joeconf#mapping#describe("ttn", "Next tab")
call joeconf#mapping#describe("ttp", "Previous tab")
call joeconf#mapping#define("nnoremap <silent>", "to", ":call salvor#toggle_terminals()<CR>", "Toggle terminals")

" Sidebar stuff
call joeconf#mapping#group("a", "Activity Bar")
call joeconf#mapping#define("nnoremap <silent>", "cf", ':Defx<CR>', 'File explorer')
call joeconf#mapping#define("nnoremap <silent>", "cu", ':UndotreeToggle', 'Undo history')

" CoC
call joeconf#mapping#group(";", "CoC")
call joeconf#mapping#define("nnoremap <silent>", ";e", ':<C-u>CocList extensions<cr>', 'Extensions')
call joeconf#mapping#define("nnoremap <silent>", ";d", ':<C-u>CocList commands<cr>', 'Commands')
call joeconf#mapping#group(";l", "CoC List")
call joeconf#mapping#define("nnoremap <silent>", ";lp", ':<C-u>CocListResume<CR>', 'Resume')
call joeconf#mapping#define("nnoremap <silent>", ";lo", ':<C-u>CocList mru<CR>', 'MRU')
