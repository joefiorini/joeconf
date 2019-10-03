let s:V = vital#joeutil#new()
let s:P = s:V.import('Prelude')

function! joeutil#set_deep(dict, path, value)
  let [head;rest] = s:P.is_list(a:path) ? a:path : split(a:path, '\.')
  let new_dict = deepcopy(a:dict)

  if len(rest) == 0
    let new_dict[head] = a:value
  else
    if !has_key(new_dict, head)
      let new_dict[head] = {}
    endif

    let new_dict[head] = joeutil#set_deep(new_dict[head], rest, a:value)
  endif
    
  return new_dict
endfunction
