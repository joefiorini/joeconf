function! joeconf#mapping#minor#group(key, name)
  call joeconf#mapping#group(a:key, a:name, "g:which_key_map_minor")  
endfunction

function! joeconf#mapping#minor#define_v(key, command, description)
  let type = match(a:command, "<Plug>") > -1 ? "vmap" : "vnoremap"
  call joeconf#mapping#define("g:which_key_map_minor",  type ." <silent>", "<localleader>", a:key, a:command, a:description)
endfunction

function! joeconf#mapping#minor#define(key, command, description)
  let type = match(a:command, "<Plug>") > -1 ? "nmap" : "nnoremap"
  call joeconf#mapping#define("g:which_key_map_minor",  type ." <silent>", "<localleader>", a:key, a:command, a:description)
endfunction

function! joeconf#mapping#minor#describe(key, desc)
  let keys = split(a:key, '\zs')
  call joeconf#mapping#describe("g:which_key_map_minor", keys, a:desc)
endfunction


