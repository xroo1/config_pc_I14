set number
set termguicolors
set relativenumber
set mouse=a
set title
set cursorline
set encoding=utf-8 " Importante para o YCM

colorscheme roo1_771
"highlight clear StatusLine

call plug#begin()
Plug 'vim-scripts/HTML-AutoCloseTag'
"Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
Plug 'romgrk/barbar.nvim'

Plug 'voldikss/vim-floaterm'
"Plug 'lissaferreira/dalton-vim' "Plug do tema dalton
"Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'

Plug 'preservim/nerdtree' " Plug do nerdtree

"Plug 'vim-airline/vim-airline' " barra de status

"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'dense-analysis/ale'

Plug 'gko/vim-coloresque'

Plug 'ryanoasis/vim-devicons'

"Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'

"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'

"Plug 'liuchengxu/vista.vim'
"Plug 'akinsho/toggleterm.nvim', {'tag' : '*'} 

Plug 'hail2u/vim-css3-syntax'
call plug#end()



"color dalton

" CONFIGS RECOMENDADA
" MAPEAMENTOS LEGAIS
map <Space>t :FloatermToggle<CR>
map q :quit<CR>
map <C-s> :w!<CR>
map <C-c> :close<CR>
map <Space>e :NERDTree<CR>
map <Space>v :vsplit <CR>
map <Space>h :split <CR>


" UTILSNIPS
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" VIM AIRLINE
let g:airline_theme = 'dalton'
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols = {}
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰ '
let g:airline_symbols.maxlinenr = '  '
let g:airline_symbols.dirty='⚡'


" Atalhos da Barbar
nnoremap <silent> [b :BufferPrevious<CR>
nnoremap <silent> ]b :BufferNext<CR>

let g:coc_global_extensions = [
      \ 'coc-snippets',
      \ 'coc-tsserver',
      \ 'coc-eslint',
      \ 'coc-prettier',
      \ 'coc-json',
      \ 'coc-html',
      \ 'coc-css',
      \ 'coc-emmet',
      \ ]

" Configurações da Barbar
let g:barbar_options = {
      \ 'icons': {
      \   'filetype': {
      \     'enabled': 0,
      \   },
      \   'custom_colors': 0,
      \ },
      \ 'closable': 0
      \ }


" Configurações adicionais
syntax enable                   " Habilitar realce de sintaxe
set nu                          " Mostrar números de linha
set relativenumber              " Números de linha relativos
set tabstop=2                   " Tamanho de tabulação de 2 espaços
set shiftwidth=2                " Tamanho da indentação de 2 espaços
set expandtab                   " Usar espaços em vez de tabulações
set mouse=a                     " Habilitar o uso do mouse
set autoindent                  " Manter a indentação automática
set clipboard+=unnamedplus      " Permitir copiar/colar para a área de transferência do sistema
set ignorecase                  " Ignorar caixa em pesquisas
set smartcase                   " Pesquisa com caixa inteligente
set hlsearch                    " Realçar resultados da pesquisa
set incsearch                   " Realçar correspondências conforme você pesquisa
set noswapfile                  " Desativar arquivos de troca
set undodir=~/.vim/undo         " Diretório para arquivos de undo
set undofile                    " Ativar arquivos de undo persistentes
set backupdir=~/.vim/backup     " Diretório para arquivos de backup
set directory=~/.vim/swap       " Diretório para arquivos temporários
set undofile                    " Manter undo depois de fechar o arquivo
set undolevels=1000             " Número máximo de alterações que podem ser desfeitas
set undoreload=10000            " Número de alterações que podem ser desfeitas após recarregar um arquivo



" Move to previous/next
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>

" Re-order to previous/next
nnoremap <silent>    <A-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A->> <Cmd>BufferMoveNext<CR>

" Goto buffer in position...
nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>

" Pin/unpin buffer
nnoremap <silent>    <A-p> <Cmd>BufferPin<CR>

" Close buffer
nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>
" Restore buffer
nnoremap <silent>    <A-s-c> <Cmd>BufferRestore<CR>

" Wipeout buffer
"                          :BufferWipeout
" Close commands
"                          :BufferCloseAllButCurrent
"                          :BufferCloseAllButVisible
"                          :BufferCloseAllButPinned
"                          :BufferCloseAllButCurrentOrPinned
"                          :BufferCloseBuffersLeft
"                          :BufferCloseBuffersRight

" Magic buffer-picking mode
nnoremap <silent> <C-p>    <Cmd>BufferPick<CR>
nnoremap <silent> <C-p>    <Cmd>BufferPickDelete<CR>

" Sort automatically by...
nnoremap <silent> <Space>bb <Cmd>BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bn <Cmd>BufferOrderByName<CR>
nnoremap <silent> <Space>bd <Cmd>BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl <Cmd>BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw <Cmd>BufferOrderByWindowNumber<CR>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used
