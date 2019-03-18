"                    .                 
"    ##############..... ##############
"    ##############......##############   
"      ##########..........##########     
"      ##########........##########       
"      ##########.......##########        
"      ##########.....##########..        
"      ##########....##########.....      
"    ..##########..##########.........    
"  ....##########.#########.............  
"    ..################JJJ............    
"      ################.............      
"      ##############.JJJ.JJJJJJJJJJ      
"      ############...JJ...JJ..JJ  JJ     
"      ##########....JJ...JJ..JJ  JJ      
"      ########......JJJ..JJJ JJJ JJJ     
"      ######    .........                
"                  .....                  


" plugin manager plug.vim
	call plug#begin('~/vim/plugged')

	" Class/module browser
"	Plug 'https://github.com/majutsushi/tagbar'

	" Solarized-dark theme
"	Plug 'https://github.com/altercation/vim-colors-solarized'
	
	" LaTeX
	"Plug 'https://github.com/ying17zi/vim-live-latex-preview'
	Plug 'https://github.com/lervag/vimtex'

	" Vim-airline
	Plug 'https://github.com/vim-airline/vim-airline'
	Plug 'https://github.com/vim-airline/vim-airline-themes'

	" Better file browser
	Plug 'https://github.com/scrooloose/nerdtree'
	
	"" Python specific plugins #
"	Plug 'https://github.com/python-mode/python-mode'
"	Plug 'https://github.com/Vimjas/vim-python-pep8-indent'

	call plug#end()

" sets indentation and stuff, namely for python
	"set tabstop=4
	"set shiftwidth=4
	"set expandtab
	"set autoindent	

" sets syntax highlightning
	syntax on

" sets numbers relative
	set number relativenumber

" does something, needed for the latex plugin
 	filetype plugin indent on

" splits open at the bottom and right
	set splitbelow splitright

" shortcutting split navigation
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" always show status bar
"	let ls=2

" Python-mode configuration
	filetype plugin on
	filetype indent on

" Tagbar configuration
	nmap <F9> :TagbarToggle<CR>

" Nerdtree confiugration
	nmap <F8> :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Vim-airline configuration
	let g:airline_theme='luna'
	"let g:airline_solarized_bg='dark'

" Vimtex
	"let g:vimtex_view_general_viewer = "zathura"
