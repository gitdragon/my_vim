
set number

syntax on

set cursorline

:colorscheme desert

"let g:winManagerWindowLayout='FileExplorer|TagList'
let g:winManagerWindowLayout='FileExplorer'
nmap wm :WMToggle<cr>
":WMToggle

:NERDTree

nnoremap <F4> :call g:Jsbeautify()<CR>
let mapleader=","

:let g:closetag_html_style=1
:au Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim




let g:user_zen_expandabbr_key = '<F2>'

