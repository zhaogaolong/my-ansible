source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin


"" disable windows ctrl+v paste
unmap <C-V>

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

"" set color
colorscheme molokai
set t_Co=256
" let g:molokai_original = 1
" let g:rehash256 = 1
" set guifont=Monaco:h12


" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile
set noundofile
set number

" Disable gvim menu
if has("gui_running")
  "au GUIEnter * simalt ~x " 窗口启动时自动最大化
  set guioptions-=m " 隐藏菜单栏
  set guioptions-=T " 隐藏工具栏
  set guioptions-=L " 隐藏左侧滚动条
  set guioptions-=r " 隐藏右侧滚动条
  "set guioptions-=b " 隐藏底部滚动条
  " set showtabline=0 " 隐藏Tab栏
endif

" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>



" Setup Pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
call pathogen#infect()

" ============================================================================
" Plugin Install Setup
" ============================================================================

" Settings for vim-fugitve
" cd ~/.vim/bundle
" git clone git://github.com/tpope/vim-fugitive.git
" vim -u NONE -c "helptags vim-fugitive/doc" -c q

" Settings vim-powerline fonts
" git clone https://github.com/powerline/fonts.git
" install Meslo Dotted font


" Settings vim-airline
" cd ~/.vim/bundle
" git clone https://github.com/vim-airline/vim-airline.git
set laststatus=2
" set guifont=Droid Sans Mono Slashed for Pow:h12
set guifont=Droid_Sans_Mono_Slashed_for_Pow:h12
let g:airline_powerline_fonts = 1

" 主题可以访问地址：https://github.com/vim-airline/vim-airline/wiki/Screenshots
" 选择更喜欢的主题
let g:airline_theme='luna'
let g:airline#extensions#tabline#enabled = 1
"" let g:airline#extensions#tabline#left_sep = ''
"" let g:airline#extensions#tabline#left_alt_sep = ''
  let g:airline#extensions#tabline#tab_nr_type = 1

  function! AirlineInit()
    "" let g:airline_section_a = airline#section#create(['mode', ' ', 'branch'])
    "" let g:airline_section_b = airline#section#create_left(['ffenc','file'])
    let g:airline_section_x = airline#section#create(['filetype', ' ', '%{strftime("%H:%M")}'])
  endfunction
  autocmd User AirlineAfterInit call AirlineInit()


if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" git clone https://github.com/vim-airline/vim-airline-themes.git
"
