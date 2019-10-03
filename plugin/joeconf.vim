let g:joeconf = get(g:, 'joeconf', {})
let g:joeconf.base = expand("<sfile>:p:h")
let g:joeconf.config_path = g:joeconf.base . "/../config"

let &runtimepath .= ',' . expand(g:joeconf.config_path)

call joeconf#bootstrap()

