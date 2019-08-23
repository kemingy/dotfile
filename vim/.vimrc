" scroll fast
set ttyfast

" display white spaces
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" highlight current line
set cursorline
hi CursorLine cterm=NONE ctermbg=235

" color theme
" one: https://github.com/rakr/vim-one
set background=light
colorscheme one

" ruler
set cc=80

" ignore go error when use old vim
let g:go_version_warning = 0
