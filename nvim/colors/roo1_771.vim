" Exemplo de esquema de cores para o Vim baseado no xterm

highlight clear
syntax reset

" Cores básicas
highlight Normal       guibg=#101010 guifg=#c0c0c0
highlight ColorColumn  guibg=#131313 guifg=#c0c0c0
highlight CursorLine   guibg=#131313 guifg=#c0c0c0
highlight LineNr       guibg=#131313 guifg=#36393f
highlight CursorLineNr guibg=#131313 guifg=#c0c0c0
highlight Cursor       guibg=#131313 guifg=#c0c0c0

" Cores para comentários, constantes, identificadores, etc.
highlight Comment      guifg=#2d3035 guibg=NONE ""36393f
highlight Constant     guifg=#3ea28d guibg=NONE
highlight Identifier   guifg=#a8a8a8 guibg=NONE
highlight Statement    guifg=#EC1850 guibg=NONE
highlight PreProc      guifg=#4dc5ce guibg=NONE
highlight Type         guifg=#558188 guibg=NONE
highlight Special      guifg=#EC1850 guibg=NONE
highlight Underlined   gui=underline guifg=#4e4d80 guibg=NONE
highlight Todo         guifg=#131313 guibg=#EC1850

" Cores para buscas
highlight Search       guibg=#4dc5ce guifg=#080808
highlight IncSearch    guibg=#558188 guifg=#080808

" Cores para diff
highlight DiffAdd      guibg=#080808 guifg=#3ea28d
highlight DiffChange   guibg=#080808 guifg=#4dc5ce
highlight DiffDelete   guibg=#080808 guifg=#EC1850
highlight DiffText     guibg=#080808 guifg=#6ea2a5

" Cores para menu
highlight Pmenu        guibg=#131313 guifg=#c0c0c0
highlight PmenuSel     guibg=#36393f guifg=#c0c0c0
highlight PmenuSbar    guibg=#36393f guifg=#c0c0c0
highlight PmenuThumb   guibg=#c0c0c0 guifg=#36393f

" Cores para status line
highlight StatusLine   guibg=#131313 guifg=#c0c0c0
highlight StatusLineNC guibg=#131313 guifg=#36393f

" Cores para visual mode
highlight Visual       guibg=#36393f guifg=#080808

