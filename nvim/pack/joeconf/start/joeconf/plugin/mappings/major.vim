" Files
"
call joeconf#mapping#major#group("f", "+Files/Fold")


call joeconf#mapping#major#define("fd", ":Defx -no-resume -no-listed -search=`expand('%:p')`<CR>", 'Reveal current file')
call joeconf#mapping#major#define("ft", ":Defx<CR>", "Toggle explorer")
call joeconf#mapping#major#define("fs", ":update<CR>", "Save")
call joeconf#mapping#major#define("fn", ":CocCommand workspace.renameCurrentFile<CR>", "Rename current file")
call joeconf#mapping#major#define("fr", ":source %<CR>", "Source current")
call joeconf#mapping#major#define("fz", ":Clap files<CR>", "Fuzzy find")
call joeconf#mapping#major#define("fj", ":<c-u>Marksman<CR>", "Jump to file")
call joeconf#mapping#major#define("fm", ':<C-u>CocList mru<CR>', 'MRU Files')

" Search
" 
call joeconf#mapping#major#group("s", "+Search")

call joeconf#mapping#major#define("/", ":Clap grep<CR>", "Find in files")
call joeconf#mapping#major#define("sd", ":call joeutil#search_in_directory()<CR>", "Find in directory")
call joeconf#mapping#major#define("sb", ":Clap lines<CR>", "Find in open buffers")
call joeconf#mapping#major#define("sx", ":<C-u>GrepFiles -regex<CR>", "Find in files (regex)")
call joeconf#mapping#major#define("sw", ":Clap grep ++query=<cword><CR>", "Find current word in files")
call joeconf#mapping#major#define("sc", ":nohlsearch<CR>", "Clear search")

" User-Specific
"
call joeconf#mapping#major#group("u", "User-Specific")
call joeconf#mapping#major#group("us", "Shell-config")
call joeconf#mapping#major#group("ug", "Git-config")
call joeconf#mapping#major#group("uv", "Vim-config")
call joeconf#mapping#major#define("uvi", ":tab drop ~/.config/nvim/init.vim", "Init.vim")
call joeconf#mapping#major#define("uvp", ":tab drop ~/.config/nvim/pack/joeconf/start/joeconf/config/Plugins.vim", "Plugins.vim")
call joeconf#mapping#major#define("uvc", ":tab drop ~/.config/nvim/pack/joeconf/start/joeconf/config/Commands.vim", "Commands.vim")
call joeconf#mapping#major#define("uce", ":EditVimConfig<cr>", "Edit Vim config")
call joeconf#mapping#major#define("ucr", ":call joeconf#reload()<cr>", "Reload Vim config")
call joeconf#mapping#major#define("use", ":tabe ~/.config/fish/config.fish<CR>", "Edit Fish config")
call joeconf#mapping#major#define("uge", ":tabe ~/.gitconfig<CR>", "Edit Git config")

" Git
"
call joeconf#mapping#major#group("g", "Git")
call joeconf#mapping#major#define("gs", ":Gina status --group=git --opener='botright split'<CR>", "Status")
call joeconf#mapping#major#define("gm", "<Plug>(git-messenger)", "Messenger")
call joeconf#mapping#major#group("gc", "Commit")
call joeconf#mapping#major#define("gcc", ":Gina commit --group=git --opener='botright split'<CR>", "Commit")
call joeconf#mapping#major#define("gca", ":Gina commit --amend --group=git --opener='botright split'<CR>", "Amend")
call joeconf#mapping#major#define("gb", ":Gina browse<CR>", "Browse current file")
call joeconf#mapping#major#group("gu", "Push (options)")
call joeconf#mapping#major#define("gup", ":Gina push -u<CR>", "Push (--track)")
call joeconf#mapping#major#define("guf", ":Gina push --force-with-lease<CR>", "Push (--force-with-lease)")

" Yank
"
call joeconf#mapping#major#group("y", "Yank")
call joeconf#mapping#major#define("y@", "y:@\"<CR>", "Status")

" Buffer
"
call joeconf#mapping#major#group("b", "Buffer")
call joeconf#mapping#major#define("ba", ':BA<CR>', "Alternate")
call joeconf#mapping#major#define("bp", ":bprevious<CR>", "Previous")
call joeconf#mapping#major#define("bn", ":bnext<CR>", "Next")
call joeconf#mapping#major#define("bc", ':BW<CR>', "Close")
call joeconf#mapping#major#define("br", ':BUNDO<CR>', "Reopen")
call joeconf#mapping#major#define("bl", ":<C-u>CocList buffers<CR>", "List")
call joeconf#mapping#major#define("bz", ":Clap buffers<CR>", "Fuzzy find")

" Salvor
"
call joeconf#mapping#major#group("t", "Terminal")
call joeconf#mapping#major#describe("tr", "Kill all terminals")
call joeconf#mapping#major#describe("twv", "New terminal split")
call joeconf#mapping#major#group("tt", "Tabs")
call joeconf#mapping#major#describe("ttt", "New terminal tab")
call joeconf#mapping#major#describe("ttn", "Next tab")
call joeconf#mapping#major#describe("ttp", "Previous tab")
call joeconf#mapping#major#define("to", ":call salvor#toggle_terminals()<CR>", "Toggle terminals")

" Sidebar stuff
call joeconf#mapping#major#group("a", "Activity Bar")
call joeconf#mapping#major#define("cf", ':Defx<CR>', 'File explorer')
call joeconf#mapping#major#define("cu", ':UndotreeToggle', 'Undo history')

" CoC
call joeconf#mapping#major#group(";", "CoC")
call joeconf#mapping#major#define(";e", ':<C-u>CocList extensions<cr>', 'Extensions')
call joeconf#mapping#major#define(";d", ':<C-u>CocList commands<cr>', 'Commands')
call joeconf#mapping#major#define(";c", '<Plug>(coc-codelens-action)', 'Commands')
call joeconf#mapping#major#group(";l", "CoC List")
call joeconf#mapping#major#define(";lp", ':<C-u>CocListResume<CR>', 'Resume')
call joeconf#mapping#major#define(";lo", ':<C-u>CocList mru<CR>', 'MRU')
