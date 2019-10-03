let s:suite = themis#suite('set_deep')
let s:assert = themis#helper('assert')

let s:current_dir = expand("%:p:h")

if match(&runtimepath, "joeutil") == -1
  let &runtimepath .= ',' . expand(s:current_dir . "/../../")
endif

fun! s:suite.flat()
  let actual = joeutil#set_deep({"a": 1}, "a", 2)
  call s:assert.equals({"a": 2}, actual)
endfun

fun! s:suite.preserve()
  let actual = joeutil#set_deep({"a": 1, "b": 2}, "a", 3)
  call s:assert.equals({"a": 3, "b": 2}, actual)
endfun

fun! s:suite.set_deep_nested_single()
  let actual = joeutil#set_deep({"a": { "b": 1} }, "a.b", 2)
  call s:assert.equals({"a": { "b": 2}}, actual)
endfun

fun! s:suite.set_deep_nested_single_deeper()
  let actual = joeutil#set_deep({"a": {"b": { "c": 1 } } }, "a.b.c", 2)
  call s:assert.equals({"a": {"b": { "c": 2 } } }, actual)
endfunction

fun! s:suite.set_deep_nested_preserve_deeper()
  let actual = joeutil#set_deep({"a": {"b": { "c": 1 }, "e": 4 }, "f": 2 }, "a.b.c", 2)
  call s:assert.equals({"a": {"b": { "c": 2 }, "e": 4 }, "f": 2 }, actual)
endfunction

fun! s:suite.set_deep_new_key_flat()
  let actual = joeutil#set_deep({"a": 1}, "b", 2)
  call s:assert.equals({"a": 1, "b": 2}, actual)
endfunction

fun! s:suite.set_deep_new_key_nested()
  let actual = joeutil#set_deep({"a": {"c": 1}}, "a.b", 2)
  call s:assert.equals({"a": { "b": 2, "c": 1}}, actual)
endfunction

fun! s:suite.set_deep_new_key_empty_flat()
  let actual = joeutil#set_deep({}, "a", 2)
  call s:assert.equals({"a": 2}, actual)
endfunction

fun! s:suite.set_deep_new_key_empty_nested()
  let actual = joeutil#set_deep({}, "a.b", 2)
  call s:assert.equals({"a": { "b": 2 } }, actual)
endfunction


fun! s:suite.set_deep_new_key_path_as_list()
  let actual = joeutil#set_deep({"a": {"c": 1}}, ['a', 'b'], 2)
  call s:assert.equals({"a": { "b": 2, "c": 1}}, actual)
endfunction


