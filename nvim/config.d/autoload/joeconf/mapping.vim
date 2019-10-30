function! joeconf#mapping#group(key, name, dict_name)
  if !exists(a:dict_name)
    let key_map = {}
  else
    let key_map = deepcopy({a:dict_name})
  endif

  let keys = split(a:key, '\zs')

  let name = a:name !~ "^+" ? "+" . a:name : a:name

  call extend(keys, ['name'])

  let {a:dict_name} = joeutil#set_deep(key_map, keys, a:name)
endfunction

function! joeconf#mapping#define(dict_name, type, prefix, key, value, desc)
  let keys = split(a:key, '\zs')
  call s:set_which_key_desc(a:dict_name, keys, a:desc)
  echo a:type . ' ' . a:prefix . a:key . ' ' . a:value
  exec a:type . ' ' . a:prefix . a:key . ' ' . a:value
endfunction

function! joeconf#mapping#describe(dict_name, keys, desc)
  call s:set_which_key_desc(a:dict_name, a:keys, a:desc)
endfunction

function! s:set_which_key_desc(dict_name, keys, desc)
  let [group_key;rest] = a:keys

  if !exists(a:dict_name) || !has_key({a:dict_name}, group_key)
    return
  endif

  let description = '➤ ' . a:desc
  let {a:dict_name} = joeutil#set_deep({a:dict_name}, a:keys, a:desc)
endfunction

