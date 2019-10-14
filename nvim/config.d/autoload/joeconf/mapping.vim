function! joeconf#mapping#group(key, name)
  if !exists("g:which_key_map")
    let key_map = {}
  else
    let key_map = deepcopy(g:which_key_map)
  endif

  let keys = split(a:key, '\zs')

  let name = a:name !~ "^+" ? "+" . a:name : a:name

  call extend(keys, ['name'])

  let g:which_key_map = joeutil#set_deep(key_map, keys, name)
endfunction

function! joeconf#mapping#define(type, key, value, desc)
  let keys = split(a:key, '\zs')
  call s:set_which_key_desc(keys, a:desc)
  exec a:type . ' <Leader>' . a:key . ' ' . a:value
endfunction

function! joeconf#mapping#describe(key, desc)
  let keys = split(a:key, '\zs')
  call s:set_which_key_desc(keys, a:desc)
endfunction

function! s:set_which_key_desc(keys, desc)
  let [group_key;rest] = a:keys

  if !exists("g:which_key_map") || !has_key(g:which_key_map, group_key)
    return
  endif

  let description = '➤ ' . a:desc
  let g:which_key_map = joeutil#set_deep(g:which_key_map, a:keys, a:desc)
endfunction

