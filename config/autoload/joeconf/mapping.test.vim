let s:suite = themis#suite('joeconf#mapping')
let s:expect = themis#helper('expect')

fun! s:suite.after_each()
  unlet! g:which_key_map
endfun

fun! s:suite.__define__()
  let define = themis#suite('define')

  fun! define.begins_mappings_with_leader()
    unlet g:which_key_map
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

  fun! group.writes_to_which_key_map_with_prefix()
    call joeconf#mapping#group("a", "test")
    call s:expect(g:which_key_map.a).to_have_key("name")
    call s:expect(g:which_key_map.a.name).to_equal("+test")
  endfun

  fun! group.does_not_duplicate_existing_prefix()
    call joeconf#mapping#group("a", "+test")
    call s:expect(g:which_key_map.a.name).to_equal("+test")
  endfun

  fun! group.writes_nested_keys_automatically()
    call joeconf#mapping#group("a", "test1")
    call joeconf#mapping#group("ab", "+test")
    call s:expect(g:which_key_map).not.to_have_key("ab")
    call s:expect(g:which_key_map.a).to_have_key("b")
    call s:expect(g:which_key_map.a).to_have_key("name")
    call s:expect(g:which_key_map.a.name).to_equal("+test1")
    call s:expect(g:which_key_map.a.b).to_have_key("name")
    call s:expect(g:which_key_map.a.b.name).to_equal("+test")
  endfun

  endfun

  fun! s:suite.__e2e__()
    let e2e = themis#suite("e2e")

    fun! e2e.works_with_many_calls()
      call joeconf#mapping#group("f", "+Files/Fold")

      call joeconf#mapping#define("nnoremap <silent>", "fz", ":FuzzyOpen<CR>", "Fuzzy find")
      call joeconf#mapping#define("nnoremap <silent>", "fj", ":<c-u>Marksman<CR>", "Jump to file")

      call joeconf#mapping#group("s", "+Search")

      call joeconf#mapping#define("nnoremap <silent>", "sp", ":<C-u>Ag -smartcase<CR>", "Find in files")
      call joeconf#mapping#define("nnoremap <silent>", "sx", ":<C-u>Ag -regex<CR>", "Find in files (regex)")

      call s:expect(g:which_key_map).to_equal({
            \"f": { 
            \ "name": "+Files/Fold" ,
            \ "z": "Fuzzy find",
            \ "j": "Jump to file"
            \},
            \ "s": {
            \ "name": "+Search",
            \ "p": "Find in files",
            \ "x": "Find in files (regex)"
            \ }
            \})
    endfun

    fun! e2e.with_multiple_group_calls()
      call joeconf#mapping#group("u", "User-Specific")
      call joeconf#mapping#group("uc", "Vim-config")
      call joeconf#mapping#group("us", "Shell-config")
      call joeconf#mapping#group("ug", "Git-config")
      call joeconf#mapping#define("nnoremap <silent>", "uce", ":EditVimConfig<cr>", "Edit Vim config")
      call joeconf#mapping#define("nnoremap <silent>", "ucr", ":call joeconf#reload()<cr>", "Reload Vim config")
      call joeconf#mapping#define("nnoremap <silent>", "use", ":tabe ~/.config/fish/config.fish", "Edit Fish config")
      call joeconf#mapping#define("nnoremap <silent>", "uge", ":tabe ~/.gitconfig", "Edit Git config")

      call s:expect(g:which_key_map).to_have_key("u")
      call s:expect(g:which_key_map.u).to_have_key("c")
      call s:expect(g:which_key_map.u).to_have_key("s")
      call s:expect(g:which_key_map.u).to_have_key("g")
      call s:expect(g:which_key_map.u).to_have_key("name")
      call s:expect(g:which_key_map.u.name).to_equal("+User-Specific")

      call s:expect(g:which_key_map.u.c).to_have_key("name")
      call s:expect(g:which_key_map.u.c.name).to_equal("+Vim-config")
      call s:expect(g:which_key_map.u.c).to_have_key("e")
      call s:expect(g:which_key_map.u.c).to_have_key("r")

      call s:expect(g:which_key_map.u.s).to_have_key("name")
      call s:expect(g:which_key_map.u.s.name).to_equal("+Shell-config")
      call s:expect(g:which_key_map.u.s).to_have_key("e")

      call s:expect(g:which_key_map.u.g).to_have_key("name")
      call s:expect(g:which_key_map.u.g.name).to_equal("+Git-config")
      call s:expect(g:which_key_map.u.g).to_have_key("e")

      call s:expect(g:which_key_map).to_equal({ "u": { "name": "+User-Specific", "c": { "name": "+Vim-config", "e": "Edit Vim config", "r": "Reload Vim config" }, "s": { "name": "+Shell-config", "e": "Edit fish config" }, "g": { "name": "+Git-config", "e": "Edit Git config" } } })
    endfun
  endfun
