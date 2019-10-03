function! joeconf#bootstrap()
  call joeconf#mapping#init()   
endfunction

function! joeconf#reload()
  for script in split(glob(expand("<spath>:h") . "/joeconf/**/*.vim"))
    if script !~ "\.test\.vim"
      exe 'source' script
    endif
  endfor

  call joeconf#bootstrap()
endfunction
