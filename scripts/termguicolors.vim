" Fixes incorrect colors on some colorscheme.
" source: https://github.com/vim/vim/issues/993#issuecomment-255651605
set termguicolors
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

