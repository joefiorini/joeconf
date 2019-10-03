let s:suite = themis#suite('joeconf#mapping')
let s:expect = themis#helper('expect')

fun! s:suite.__define__()
  let define = themis#suite('define')

  fun! define.begins_mappings_with_leader()
    call joeconf#mapping#define("nmap", "a", "<C-q>", "test description")
    call s:expect(maparg("<Leader>a", "n")).to_equal("<C-Q>")
    call s:expect(exists("g:which_key_map")).to_be_falsy()
  endfun

  fun! define.does_not_write_to_which_key_map_without_group()
    let g:which_key_map = {}

    call joeconf#mapping#define("nmap", "a", "<C-q>", "test description")

    call s:expect(g:which_key_map).not.to_have_key("a")

  endfun

  fun! define.writes_to_which_key_map_with_group()
    let g:which_key_map = { "a": { "name": "test" } }
    call joeconf#mapping#define("nmap", "ab", "<C-q>", "test description")

    call s:expect(g:which_key_map).to_have_key("a")
    call s:expect(g:which_key_map.a).to_have_key("name")
    call s:expect(g:which_key_map.a.name).to_equal("test")
    call s:expect(g:which_key_map.a).to_have_key("b")
    call s:expect(g:which_key_map.a.b).to_equal("test description")

    let g:which_key_map = { "a": { "b": { "c": { "d": { "e": { "name": "some group" } } } } } }
    call joeconf#mapping#define("nmap", "abcdef", "<C-q>", "test description")

    call s:expect(g:which_key_map).to_equal({  "a": { "b": { "c": { "d": { "e":
          \ {  "name": "some group", "f": "test description"}}}}}})
  endfun
endfun

fun! s:suite.__group__()
  let group = themis#suite("group")

  fun! group.writes_to_which_key_map()
    call joeconf#mapping#group("a", "test")
    call s:expect(g:which_key_map.a).to_have_key("name")
    call s:expect(g:which_key_map.a.name).to_equal("test")
  endfun
endfun
