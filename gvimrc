" -----------------------------------------------------------------------------  
" |                            VIM Settings                                   |
" |                              GUI stuff                                    |
" -----------------------------------------------------------------------------  


" OS Specific *****************************************************************
if has("gui_macvim")

  " fullscreen options (MacVim only), resized window when changed to fullscreen
  set fuoptions=maxvert,maxhorz 

  " set guifont=Menlo\ Bold:h12
  " set guifont=Menlo:h12
  set guifont=Consolas\ Bold:h12
  " set guifont=Consolas\ Bold:h11
  " set guifont=Consolas:h12

  " remove toolbar
  set guioptions-=T  

  " turn on tabs by default 
  set stal=2

elseif has("gui_gtk2")

  set guifont=Menlo
  set guioptions-=T  " remove toolbar

elseif has("x11")
elseif has("gui_win32")
end

" General *********************************************************************
set anti " Antialias font

"set transparency=0

" Default size of window
set columns=99
set lines=29

" Tab headings 
set gtl=%t gtt=%F

set scrolloff=8
