function! joeconf#packboot() abort
  packadd minpac

  if !exists('*minpac#init')
    echo "Bootstrapping minpac..."
    echo system(printf("git clone https://github.com/k-takata/minpac.git %s/.config/nvim/pack/minpac/opt/minpac", $HOME))
  endif
endfunction

function! joeconf#init()
  echo "Welcome Joe, make a great day!"
  runtime! START config/*.vim
endfunction

function! joeconf#reload()
  for script in split(glob(expand("<spath>:h") . "/joeconf/**/*.vim"))
    if script !~ "\.test\.vim"
      exe 'source' script
    endif
  endfor
endfunction

function! joeconf#packinit() abort
  call joeconf#packboot()
  packadd minpac
  call minpac#init()
  runtime! START Plugins.vim
endfunction

function! joeconf#packupdate() abort
  call joeconf#packinit()
  call minpac#update('', {'do': 'call minpac#status()'})
endfunction
