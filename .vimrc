"https://vi.stackexchange.com/questions/356/how-can-i-set-up-a-ruler-at-a-specific-column
"https://stackoverflow.com/questions/2447109/showing-a-different-background-colour-in-vim-past-80-characters
"https://github.com/justinforce/dotfiles/blob/master/files/nvim/init.vim
"https://superuser.com/questions/249779/how-to-setup-a-line-length-marker-in-vim-gvim
"https://stackoverflow.com/questions/1919028/how-to-show-vertical-line-to-wrap-the-line-in-vim
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
"let &colorcolumn=join(range(81,81),",")
"highlight ColorColumn ctermbg=235 guibg=#2c2d27

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" Set invisibles https://vi.stackexchange.com/questions/422/displaying-tabs-as-characters

set listchars=space:·,tab:»·,eol:¬
set list

" Wrap markdown files: https://robots.thoughtbot.com/wrap-existing-text-at-80-characters-in-vim
au BufRead,BufNewFile *.md setlocal textwidth=80

set number "Show line numbers. To turn off, set nonumber


set tabstop=8
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab
