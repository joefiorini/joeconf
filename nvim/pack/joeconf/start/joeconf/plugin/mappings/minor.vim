" Code Navigation
"
call joeconf#mapping#minor#group("g", "Code Navigation")
call joeconf#mapping#minor#define("go", ":<C-u>CocList outline<cr>", "Show symbol outline")
call joeconf#mapping#minor#define("gs", ":Vista!!<CR>", "Toggle symbol drawer")
call joeconf#mapping#minor#define("gr", "<Plug>(coc-references)", "View references")

" Compiler-related
"
call joeconf#mapping#minor#group("c", "Compiler")
call joeconf#mapping#minor#define("cd", ":<C-u>CocList diagnostics<cr>", "Show diagnostics")

" Refactoring
"
call joeconf#mapping#minor#group("r", "Refactoring")
call joeconf#mapping#minor#define("rn", "<Plug>(coc-rename)", "Rename variable")
call joeconf#mapping#minor#define("rf", "<Plug>(coc-fix-current)", "Fix current")
call joeconf#mapping#minor#define("rc", "<Plug>(coc-codeaction)", "Codeactions")
call joeconf#mapping#minor#define_v("rc", "<Plug>(coc-codeaction-selected)", "Codeactions")
