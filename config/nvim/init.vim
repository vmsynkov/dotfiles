call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'

Plug 'KabbAmine/zeavim.vim'

Plug 'suan/vim-instant-markdown'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'

Plug 'editorconfig/editorconfig-vim'
Plug 'maksimr/vim-jsbeautify'

Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'gavocanov/vim-js-indent'

Plug 'moll/vim-node'
Plug 'mattn/emmet-vim'
Plug 'elzr/vim-json'
Plug 'heavenshell/vim-jsdoc'

Plug 'SirVer/ultisnips', { 'on': 'NERDTreeToggle' }
Plug 'honza/vim-snippets', { 'on': 'NERDTreeToggle' }

Plug 'nathanaelkane/vim-indent-guides'

Plug 'Valloric/YouCompleteMe', { 'do': '/usr/bin/python2 ./install.py --tern-completer && pkill -INT nvim' }

Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

Plug 'othree/jspc.vim'

Plug 'scrooloose/syntastic'

Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'

Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'

Plug 'junegunn/vim-easy-align'

Plug 'kien/ctrlp.vim'

Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-airline'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }

Plug 'tpope/vim-eunuch'
call plug#end()

"" Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set showtabline=2

nnoremap <leader>o :below 10sp term://$SHELL<cr>i
nnoremap <leader>] :source ~/.config/nvim/init.vim<CR>:AirlineRefresh<CR>:PlugInstall<CR>
nnoremap <leader>[ :source ~/.config/nvim/init.vim<CR>:AirlineRefresh<CR>

let @a='$a; '
nnoremap <leader>; @a

"nnoremap <space> <leader>
"map <space> <leader>

set clipboard+=unnamedplus

"" Colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme gruvbox
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='hard'
set background=dark
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"" Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_inactive_collapse=1

"" EasyAlign
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"" NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>n :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "  ",
    \ "Staged"    : "  ",
    \ "Untracked" : "  ",
    \ "Renamed"   : "  ",
    \ "Unmerged"  : "  ",
    \ "Deleted"   : "  ",
    \ "Dirty"     : "  ",
    \ "Clean"     : "  ",
    \ "Unknown"   : "  "
    \ }

" Syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs=1
let g:syntastic_javascript_checkers = ['eslint']

"" JsDoc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_input_description=1
let g:jsdoc_additional_descriptions=1

"" UltiSnips
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<leader>r"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir='~/.config/nvim/plugged/vim-snippets/UltiSnips'
let g:UltiSnipsSnippetsDirectories='~/.config/nvim/plugged/vim-snippets/snippets'

"" YouCompleteMe
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_path_to_python_interpreter = '/usr/bin/python2'
let g:ycm_python_binary_path = '/usr/bin/python2'
let g:ycm_server_python_interpreter = '/usr/bin/python2'
let g:ycm_confirm_extra_conf = 0
let g:ycm_server_use_vim_stdout = 0
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

"" TernJs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tern_map_keys=1

"" EditorConfig
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

"" InstantMarkdown
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:instant_markdown_autostart = 0

let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_detect_filetype = 1
