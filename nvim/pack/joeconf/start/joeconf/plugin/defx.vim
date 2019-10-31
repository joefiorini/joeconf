let g:defx_icons_directory_icon = ""
let g:defx_icons_nested_closed_tree_icon = ""
let g:defx_icons_nested_opened_tree_icon = ""
let g:defx_icons_root_opened_tree_icon = ""
let g:defx_icons_parent_icon = " "
let g:defx_icons_mark_icon = ""

call defx#custom#option('_', {
      \ 'root_marker': '⠀',
      \ 'columns': 'indent:guide:icons:filename:type',
      \ 'split': 'vertical',
      \ 'direction': 'topleft',
      \ 'toggle': 1,
      \ 'listed': 1,
      \ 'resume': 1,
      \ 'winwidth': 50,
      \ 'winheight': &lines - &cmdheight
      \ })

call defx#custom#column('filename', {
      \ 'root_marker_highlight': 'Ignore',
      \ })

