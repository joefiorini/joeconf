function! joeconf#mapping#major#group(key, name)
  call joeconf#mapping#group(a:key, a:name, "g:which_key_map_major")  
endfunction

function! joeconf#mapping#major#define(key, command, description)
  call joeconf#mapping#define("g:which_key_map_major", "nnoremap <silent>", "<leader>", a:key, a:command, a:description)
endfunction

function! joeconf#mapping#major#describe(key, desc)
  let keys = split(a:key, '\zs')
  call joeconf#mapping#describe("g:which_key_map_major", keys, a:desc)
endfunction

