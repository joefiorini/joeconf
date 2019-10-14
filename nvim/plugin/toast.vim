let g:margin_right = 2
let g:margin_top = 1

fun! ShowToast(opts)
  let s:current_buf = nvim_create_buf(v:false, v:false)
  call setbufline(s:current_buf, 1, ["", a:opts.title, "", a:opts.msg])

  let win_id = nvim_open_win(s:current_buf, v:false, {
        \ "relative": "editor",
        \ "anchor": "NE",
        \ "width": 50,
        \ "height": 5,
        \ "col": &columns - g:margin_right,
        \ "row": g:margin_top,
        \ "style": "minimal"
        \ })

  let prev_win = winnr()
  let s:current_window = win_id2win(win_id)

  call s:ActivateToastWin()

  let b:notification = a:opts
  setlocal nomodifiable
  set filetype=toast

  call s:ActivateWin(prev_win)
endfun

fun! s:ActivateToastWin()
  call s:ActivateWin(s:current_window)
endfun

fun! s:ActivateWin(win_nr)
  noautocmd execute a:win_nr . "wincmd w"
endfun

fun! DismissToast()
  let buf = bufwinnr(s:current_window)
  exec "bwipeout!" . s:current_buf
endfun

nnoremap <silent> <leader>d :call DismissToast()<CR>
nnoremap <silent> <leader>i :call ShowToast({"title": "Test", "msg": "My test message"})<CR>
