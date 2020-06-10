
" coc for tslinting, auto complete and prettier
call minpac#add("neoclide/coc.nvim", {'do': {-> system('yarn install --frozen-lockfile') }})

" syntax
call minpac#add('peitalin/vim-jsx-typescript')
call minpac#add('leafgarland/typescript-vim')
call minpac#add('hail2u/vim-css3-syntax')
call minpac#add('rust-lang/rust.vim')
call minpac#add('cespare/vim-toml')
call minpac#add('jxnblk/vim-mdx-js')
call minpac#add('plasticboy/vim-markdown')
call minpac#add('dag/vim-fish')
call minpac#add('jordwalke/vim-reasonml')
call minpac#add('reasonml-editor/vim-reason-plus')
call minpac#add('styled-components/vim-styled-components', { 'branch': 'main' })
call minpac#add('vmchale/dhall-vim')
call minpac#add('jcmartin/stanza.vim')

" GUI
call minpac#add('Rigellute/shades-of-purple.vim')
call minpac#add('liuchengxu/vim-clap', { 'do': ':Clap install-binary' })
call minpac#add('Shougo/defx.nvim', { 'do': 'UpdateRemotePlugins' })
call minpac#add('kristijanhusak/defx-icons')
call minpac#add('mbbill/undotree')
call minpac#add('itchyny/lightline.vim')
call minpac#add('RRethy/vim-illuminate')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('mhinz/vim-startify')
call minpac#add('ryanoasis/vim-devicons')
call minpac#add('TaDaa/vimade')
call minpac#add('liuchengxu/vista.vim')
call minpac#add("liuchengxu/vim-which-key")
call minpac#add('Shougo/echodoc.vim')
call minpac#add('yuttie/comfortable-motion.vim')

" Git
call minpac#add('lambdalisue/gina.vim')
call minpac#add('rhysd/git-messenger.vim')


" Utilities
call minpac#add('iamcco/markdown-preview.nvim', { 'do': {-> system('cd app & yarn install')} })
call minpac#add('WolfgangMehner/c-support')
call minpac#add('qpkorr/vim-bufkill')
call minpac#add('tyru/open-browser.vim')
call minpac#add('joefiorini/salvor.vim')
call minpac#add('mtth/scratch.vim')

" Editing Experience
call minpac#add('godlygeek/tabular')
call minpac#add('scrooloose/nerdcommenter')
call minpac#add('tpope/vim-surround')
call minpac#add('wellle/targets.vim')
call minpac#add('lambdalisue/suda.vim')
call minpac#add('chaoren/vim-wordmotion')
call minpac#add('tmsvg/pear-tree')
call minpac#add('dhruvasagar/vim-table-mode', {
    \ 'on': [ 'TableModeEnable' ]
\ })

" Plugin Development Tools
call minpac#add('vim-jp/vital.vim')
call minpac#add('thinca/vim-themis')
call minpac#add('gerw/vim-HiLinkTrace')
