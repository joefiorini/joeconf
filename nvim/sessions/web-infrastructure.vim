let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
let C_Dictionary_File = "/src/joeconf/nvim/pack/minpac/start/c-support/c-support/wordlists/c-c++-keywords.list,/src/joeconf/nvim/pack/minpac/start/c-support/c-support/wordlists/k+r.list,/src/joeconf/nvim/pack/minpac/start/c-support/c-support/wordlists/stl_index.list"
let Italic = ""
let C_UseTool_make = "yes"
let Toolbox_Version = "1.3"
let Illuminate_only_selected =  1 
let Make_Version = "1.1.1"
let C_Installation = "system"
let NERDUsePlaceHolders = "1"
let Xterm_Options = "-fa courier -fs 12 -geometry 80x24"
let WebDevIconsUnicodeDecorateFolderNodesExactMatches =  1 
let C_CplusCFlags = "-Wall -g -O0 -c"
let C_MapLeader = ";"
let DevIconsEnableFoldersOpenClose =  0 
let C_UseTool_cmake = "no"
let WebDevIconsNerdTreeAfterGlyphPadding = " "
let C_UseTool_doxygen = "no"
let WebDevIconsUnicodeByteOrderMarkerDefaultSymbol = ""
let NERDDefaultAlign = "left"
let BufKillFunctionSelectingValidBuffersToDisplay = "buflisted"
let WebDevIconsUnicodeDecorateFileNodes =  1 
let NERDCommentEmptyLines = "0"
let C_Debugger = "gdb"
let C_CplusLFlags = "-Wall -g -O0"
let DevIconsEnableFolderPatternMatching =  1 
let BufKillCommandPrefix = "B"
let WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ""
let NERDDefaultNesting = "1"
let DevIconsArtifactFixChar = " "
let NERDMenuMode = "3"
let WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ""
let BufKillVerbose =  1 
let NERDToggleCheckAllLines = "0"
let NERDSpaceDelims = "0"
let NERDLPlace = "[>"
let WebDevIconsNerdTreeGitPluginForceVAlign =  1 
let DevIconsAppendArtifactFix =  0 
let WebDevIconsUnicodeDecorateFolderNodes =  1 
let NERDCreateDefaultMappings = "1"
let Templates_Version = "1.1alpha"
let Illuminate_delay =  1500 
let WebDevIconsNerdTreeBeforeGlyphPadding = " "
let BufKillActionWhenBufferDisplayedInAnotherWindow = "confirm"
let C_CplusLibs = "-lm"
let WebDevIconsUnicodeDecorateFolderNodesSymlinkSymbol = ""
let BufKillOverrideCtrlCaret =  1 
let NERDCommentWholeLinesInVMode = "0"
let Bold = ""
let C_CplusCompiler = "g++"
let NERDRPlace = "<]"
let C_CFlags = "-Wall -g -O0 -c"
let BufKillCreateMappings =  0 
let WebDevIconsUnicodeGlyphDoubleWidth =  1 
let NERDRemoveExtraSpaces = "0"
let Illuminate_highlightUnderCursor =  1 
let NERDRemoveAltComs = "1"
let NERDTrimTrailingWhitespace = "0"
let TemplatesConfig_Version = "1.0"
let NERDBlockComIgnoreEmpty = "0"
let NERDDisableTabsInBlockComm = "0"
let NERDTreeUpdateOnCursorHold =  1 
let DevIconsDefaultFolderOpenSymbol = ""
let C_CCompiler = "gcc"
let NERDCompactSexyComs = "0"
let C_LFlags = "-Wall -g -O0"
let DevIconsEnableFolderExtensionPatternMatching =  0 
let NERDAllowAnyVisualDelims = "1"
let C_Libs = "-lm"
let C_Version = "6.2.1pre"
silent only
cd /src/pillclub/web-infrastructure
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +68 sites/onboarding/src/insurance/useInsurance.ts
badd +8 sites/onboarding/src/insurance/index.tsx
badd +1 sites/onboarding/src/insurance/InsuranceForm.tsx
badd +243 /src/joeconf/nvim/init.vim
badd +1 term://.//324323:/usr/local/bin/fish
badd +1 core/components/Button/index.ts
badd +61 core/components/Button/Button.tsx
badd +1 sites/onboarding/src/insurance/card/Provider.tsx
badd +59 sites/onboarding/src/insurance/ProvideOptions.tsx
argglobal
%argdel
$argadd ./
edit sites/onboarding/src/insurance/InsuranceForm.tsx
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 58 + 39) / 79)
exe '2resize ' . ((&lines * 17 + 39) / 79)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd /src/pillclub/web-infrastructure
wincmd w
argglobal
if bufexists("term://.//324323:/usr/local/bin/fish") | buffer term://.//324323:/usr/local/bin/fish | else | edit term://.//324323:/usr/local/bin/fish | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 4 - ((3 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
wincmd w
exe '1resize ' . ((&lines * 58 + 39) / 79)
exe '2resize ' . ((&lines * 17 + 39) / 79)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOF
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
