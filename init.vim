call plug#begin('~/.config/nvim/bundle')
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'

" Plug 'dracula/vim'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

" NERD tree configuration
noremap <C-d> :NERDTreeToggle<CR>
nnoremap F :NERDTreeFind<CR>

colorscheme dracula
:set number
