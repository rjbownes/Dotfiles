" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" R-Support for nvim
Plug 'jalvesaq/Nvim-R'

" CSV plugin for viewing data
Plug 'chrisbra/csv.vim'

"R code completion
Plug 'roxma/nvim-completion-manager'
Plug 'gaalcaras/ncm-R'

" R linting
Plug 'w0rp/ale'

"distraction free mode
Plug 'junegunn/goyo.vim'

" Theme
Plug 'arcticicestudio/nord-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'lervag/vimtex'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'tpope/vim-surround'

" Initialize plugin system
call plug#end()

" remapping the basic :: send line
nmap , <Plug>RDSendLine

" remapping selection :: send multiple lines
vmap , <Plug>RDSendSelection

" remapping selection :: send multiple lines + echo lines
vmap ,e <Plug>RESendSelection

let g:airline_theme='base16_nord'

let g:vimtex_compiler_progname = 'nvr'
" opening R in a new tmux pane
let R_source = '/Users/richard/.config/nvim/tmux_split.vim'

"R output is highlighted with current colorscheme
let g:rout_follow_colorscheme = 1
"R commands in R output are highlighted
let g:Rout_more_colors = 1

:set number 
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'	
