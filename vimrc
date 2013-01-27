
source ~/.vim/basic.vim
source ~/.vim/filetypes.vim
source ~/.vim/plugins.vim
source ~/.vim/extended.vim


" always set the message to English
let $LANG = 'en_US.UTF-8'
set langmenu=en_US

" rebuild the menu
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

if has("win16") || has("win32")
    set gfn=Consolas:h14:cANSI
endif

if has("gui_running")
    set guioptions-=m
endif

colorscheme desert

" Use the arrows to something usefull
map <right> :bn<cr>
map <left> :bp<cr>

set number

" Set the vim encoding and fileencoding to utf-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,taiwan,japan,korea,latin1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fast editing and reloading of vimrc configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>e :e! ~/.vim/vimrc<cr>
autocmd! bufwritepost vimrc source ~/.vim/vimrc


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Turn persistent undo on 
"    means that you can undo even when you close a buffer/VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
    set undodir=~/.vim/temp_dirs/undodir
    set undofile
catch
endtry

