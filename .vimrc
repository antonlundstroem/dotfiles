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

	" Vim-airline
	Plug 'https://github.com/vim-airline/vim-airline'
	Plug 'https://github.com/vim-airline/vim-airline-themes'

	" Better file browser
	Plug 'https://github.com/scrooloose/nerdtree'
	call plug#end()

" sets syntax highlightning
	syntax on

" sets numbers relative
	set number relativenumber

" splits open at the bottom and right
	set splitbelow splitright

" shortcutting split navigation
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" always show status bar
"	let ls=2

" Tagbar configuration
	nmap <F9> :TagbarToggle<CR>

" Nerdtree confiugration
	nmap <F8> :NERDTreeToggle<CR>

" Vim-airline configuration
	let g:airline_theme='luna'
	"let g:airline_solarized_bg='dark'

" Colorscheme
	"set background=dark
	"colorscheme solarized
	"let g:solarized_termcolors=256
