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
	""Plug 'https://github.com/python-mode/python-mode'
	Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
	Plug 'https://github.com/Vimjas/vim-python-pep8-indent'
"
"
	"" HTML, CSS, and JS stuff""
	Plug 'https://github.com/mattn/emmet-vim'
	Plug 'https://github.com/pangloss/vim-javascript'
	Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }

	"" Angular
	Plug 'burnettk/vim-angular'
	
	"" TypeScript
	Plug 'https://github.com/leafgarland/typescript-vim'
	
	"" vim-js-indent
"	Plug 'https://github.com/jason0x43/vim-js-indent'


	call plug#end()

" sets indentation and stuff, namely for python
	"set tabstop=4
	"set shiftwidth=4
	"set expandtab
	"set autoindent	


"""""""""""""""""""""""""""""""""""
"			          "
" ~ File Specific Configuration ~ "
"				  "
"""""""""""""""""""""""""""""""""""

"""""""""""""
"  GENERAL  "
"""""""""""""
	filetype plugin on
	filetype indent on

"""""""""""""
"  PYTHON   "
"""""""""""""
"" Python-mode
	"" Sets python3 syntax checking
	let g:pymode_python = 'python3'

	"" Turns off the red line in right column
	let g:pymode_options_colorcolumn = 0

"""""""""""""
"    HTML   "
"""""""""""""
	autocmd FileType html setlocal shiftwidth=2 tabstop=2

""""""""""""""
" JAVASCRIPT "
""""""""""""""
	autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

""""""""""""""
" TYPESCRIPT "
""""""""""""""
	autocmd FileType typescript setlocal shiftwidth=2 tabstop=2

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
	"let ls=2

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

" Emmet
	let g:user_emmet_leader_key=","

