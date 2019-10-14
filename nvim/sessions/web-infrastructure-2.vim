let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /src/the-pill-club/web-infrastructure-2
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +94 /src/the-pill-club/__NOTES__/dashboard-architecture.md
badd +4 term://.//77887:/usr/local/bin/fish
badd +1 core/api/index.d.ts
badd +18 core/api/package.json
badd +13 package.json
badd +1 /private/var/folders/tw/_6s7zr7d06nfj132txy333bw0000gq/T/coc-nvim-80267.log
badd +4 tsconfig.json
badd +1 ~/.config/nvim/init.vim
badd +19 packages/remote-data/src/remote-data.ts
badd +10 packages/remote-data/src/HttpResult.ts
badd +4 support/deploy/git.js
badd +95 core/api/src/buildFetcher.ts
badd +18 core/api/src/buildClient.ts
badd +41 core/api/src/model.ts
badd +38 core/api/examples/xkcd.ts
badd +24 ~/.config/nvim/coc-settings.json
badd +15 core/api/examples/pc-account.ts
badd +20 node_modules/@types/node-fetch/index.d.ts
badd +1 node_modules/redux
badd +42 core/components/AppProvider/AppProvider.tsx
badd +71 packages/remote-data/src/createFetch.ts
badd +146 core/api/src/operations.ts
badd +3610 /private/var/folders/tw/_6s7zr7d06nfj132txy333bw0000gq/T/coc-nvim-1778.log
badd +22 core/api/examples/tslint.json
badd +1414 node_modules/typescript/lib/lib.dom.d.ts
badd +3289 yarn.lock
badd +1 support/jest/matchers.d.ts
badd +36 sites/apps/src/insurance-tool/PatientInsuranceContainer.tsx
badd +54 /private/var/folders/tw/_6s7zr7d06nfj132txy333bw0000gq/T/coc-nvim-76278.log
badd +18 /usr/local/Cellar/neovim/HEAD-7fa4962/share/nvim/runtime/doc/filetype.txt
badd +105 term://.//94433:/usr/local/bin/fish
badd +11 .eslintrc.js
badd +18 /private/var/folders/tw/_6s7zr7d06nfj132txy333bw0000gq/T/coc-nvim-92461.log
badd +1 term://.//37859:/usr/local/bin/fish
badd +1 .eslintignore
badd +62 sites/thepillclub/src/reviews/rating/Rating.tsx
badd +1 output:///eslint
badd +32 /private/var/folders/tw/_6s7zr7d06nfj132txy333bw0000gq/T/coc-nvim-4560.log
badd +1 output:///info
badd +1 term://.//37867:/usr/local/bin/fish
argglobal
%argdel
$argadd /src/the-pill-club/__NOTES__/dashboard-architecture.md
set stal=2
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
if bufexists("term://.//37859:/usr/local/bin/fish") | buffer term://.//37859:/usr/local/bin/fish | else | edit term://.//37859:/usr/local/bin/fish | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 4 - ((3 * winheight(0) + 47) / 95)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
lcd /src/the-pill-club/web-infrastructure-2
tabedit ~/.config/nvim/coc-settings.json
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
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
let s:l = 7 - ((6 * winheight(0) + 47) / 95)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 041|
lcd /src/the-pill-club/web-infrastructure-2
tabedit ~/.config/nvim/init.vim
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
exe '1resize ' . ((&lines * 74 + 49) / 99)
exe '2resize ' . ((&lines * 20 + 49) / 99)
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
let s:l = 171 - ((66 * winheight(0) + 37) / 74)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
171
normal! 0
lcd /src/the-pill-club/web-infrastructure-2
wincmd w
argglobal
if bufexists("term://.//37867:/usr/local/bin/fish") | buffer term://.//37867:/usr/local/bin/fish | else | edit term://.//37867:/usr/local/bin/fish | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 20 - ((19 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 0
lcd /src/the-pill-club/web-infrastructure-2
wincmd w
exe '1resize ' . ((&lines * 74 + 49) / 99)
exe '2resize ' . ((&lines * 20 + 49) / 99)
tabnext 1
set stal=1
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
