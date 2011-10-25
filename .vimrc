
set number
set hlsearch
"set cursorline
"highlight CursorLine guibg=lightblue ctermbg=lightgray

"set cursorcolumn

set expandtab
set tabstop=4
set shiftwidth=4

filetype indent on
filetype plugin on
filetype plugin indent on
autocmd filetype FileType python set omnifunc=pythoncomplete#Complete
autocmd filetype FileType php set omnifunc=phpcomplete#Complete

"javasricpts code check 
let jslint_command_options = '-conf /usr/local/jslbin/jsl.conf -nofilelisting -nocontext -nosummary -nologo -process'
"autocmd FileType javascript set makeprg=/usr/local/jslbin/jsl\ -conf\ '/usr/local/jslbin/jsl.conf' -nologo -nofilelisting -nosummary -nocontext -process %
autocmd FileType javascript set makeprg=/usr/local/jslbin/jsl\ -conf\ '/usr/local/jslbin/jsl.conf'\ -nologo\ -nofilelisting\ -nosummary\ -nocontext\ -process\ %
"autocmd FileType javascript set makeprg=/usr/local/jslbin/jsl\ -conf\ '/usr/local/jslbin/jsl.conf'\ process\ %
autocmd FileType javascript set errorformat=%f(%l):\ %m
"autocmd FileType javascript inoremap <silent>

set autoindent
set completeopt=longest,menu

syntax enable
syntax on

"check php syntax
function! PhpCheckSyntax()
    setlocal makeprg=\/usr/local/php/bin/php\ -l\ -n\ -d\ html_errors=off\ %
    setlocal errorformat=%m\ in\ %f\ on\ line\ %l
    make %
endfunction

autocmd BufWritePost *.php :call PhpCheckSyntax()
autocmd BufWritePost *.js :make



let g:user_zen_expandabbr_key = '<F2>'

