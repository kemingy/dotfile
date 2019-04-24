" scroll fast
set ttyfast

" display white spaces
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" highlight current line
set cursorline
hi CursorLine cterm=NONE ctermbg=235

" color theme
set background=dark
colorscheme solarized

" ruler
set cc=80

" ignore go error when use old vim
let g:go_version_warning = 0
