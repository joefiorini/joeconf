let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /src/the-pill-club/web-infrastructure
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +68 sites/onboarding/src/insurance/useInsurance.ts
badd +8 sites/onboarding/src/insurance/index.tsx
badd +1 sites/onboarding/src/insurance/InsuranceForm.tsx
badd +251 ~/.config/nvim/init.vim
badd +1 term://.//2179:/usr/local/bin/fish
badd +1 core/components/Button/index.ts
badd +61 core/components/Button/Button.tsx
badd +1 sites/onboarding/src/insurance/card/Provider.tsx
badd +59 sites/onboarding/src/insurance/ProvideOptions.tsx
argglobal
%argdel
$argadd ./
set stal=2
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
let s:l = 81 - ((59 * winheight(0) + 37) / 74)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
81
normal! 057|
lcd /src/the-pill-club/web-infrastructure
wincmd w
argglobal
if bufexists("term://.//2179:/usr/local/bin/fish") | buffer term://.//2179:/usr/local/bin/fish | else | edit term://.//2179:/usr/local/bin/fish | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 4 - ((3 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
lcd /src/the-pill-club/web-infrastructure
wincmd w
exe '1resize ' . ((&lines * 74 + 49) / 99)
exe '2resize ' . ((&lines * 20 + 49) / 99)
tabedit ~/.config/nvim/init.vim
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
let s:l = 252 - ((90 * winheight(0) + 47) / 95)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
252
normal! 0
lcd /src/the-pill-club/web-infrastructure
tabnext 2
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
