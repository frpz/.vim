"Fichier de configuration VIM
"  Par Francis Pugnere
"  Plugins: Vundle

"Configuration pour Vundle <-
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Liste des plugins:
"Plugin 'scrooloose/nerdtree'
Plugin 'frpz/nerdtree.git'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-scripts/PDV--phpDocumentor-for-Vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'SirVer/ultisnips.git'
Plugin 'elzr/vim-json'
Plugin 'groenewege/vim-less'
Plugin 'plasticboy/vim-markdown.git'
Plugin 'tpope/vim-surround.git'
Plugin 'scrooloose/nerdcommenter.git'
Plugin 'godlygeek/tabular.git'
Plugin 'thomasbelin4/vim-jsdoc.git'
Plugin 'jonathanfilip/vim-lucius.git'
Plugin 'jistr/vim-nerdtree-tabs.git'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'airblade/vim-gitgutter'
Plugin 'jQuery'
Plugin 'markgandolfo/nerdtree-fetch.vim'
"Plugin 'kshenoy/vim-signature.git'
Plugin 'drmikehenry/vim-fixkey.git'
"/Fin de la liste des plugins
call vundle#end()            " required
filetype plugin indent on    " required
"fin conf Vundle ->

"Params pour airline <-
set laststatus=2 "pour corriger le bug sur airline
"let g:airline_theme='term'
"let g:airline_theme='kalisi'
let g:airline_theme='wombat'
"let g:airline_theme='bubblegum'
"let g:airline_theme='hybrid'
"let g:airline_powerline_fonts = 1
"set timeoutlen=50
"Fin des params pour airline ->

"Params globaux <-
set modeline
sy on
set noai
set mouse=a
set nu
set showcmd
set ts=3
set showmatch
set ignorecase
"hi Comment ctermfg=lightblue
hi Comment ctermfg=darkgreen
hi Directory ctermfg=darkgreen
set si
set shiftwidth=3
set tabstop=3
cab wr w !sudo tee %
color desert
"set background=light
set background=dark
set nohlsearch " do not highlight searched for phrases
set incsearch " BUT do highlight as you type you search phrase
set sessionoptions=blank,buffers,curdir,folds,help,tabpages,resize,winsize

set <S-F9>=[33~
set <S-F10>=[34~

set directory=~/.vim/temp
set noswapfile

set scrolloff=1  " pour avoir des lignes en haut et en bas
set noerrorbells " don't make noise
set novisualbell

"caracteres au debut de chaque ligne wrappées:
set showbreak=\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \|\ 

"/parmatres globaux ->

"Assignation des touches Fx <-
map <silent> <F2> :NERDTreeTabsToggle<enter>
map <F3> 0i#<Esc>j
map <F4> 0xj
map <F5> :set mouse=a<enter>:set nu<enter>
map <F6> @a
map <F7> @z
map <F8> @e
map <silent> <S-F9> :call My_bg_toggle()<CR>
"map <F10> 0i	<Esc>j
map <S-F10> :Explore<enter>
map <F10> @@
map <F11> gT
map <F12> gt
map <Char-178> :wa<enter>
 
map! <silent> <F2> <C-O>:NERDTreeTabsToggle<enter>
map! <F3> <Esc>0i#<Esc>j
map! <F4> <Esc>0xj
map! <F5> <Esc>:set mouse=a<enter>:set nu<enter>a
map! <F6> <Esc>@a
map! <F7> <Esc>@z
map! <F8> <Esc>@e
map! <S-F10> <Esc> :Explore<enter>
"map! <F10> <Esc>0i	<Esc>j
map! <F10> <Esc>@@
map! <F11> <Esc> gT
map! <F12> <Esc> gt
map! <Char-178> <Esc>:wa<enter>
"Fin Assignation des touches Fx ->

"Assignation de touches diverses <-
"pour garder la sélection en mode visuel quand on change le retrait
vnoremap > >gv
vnoremap < <gv

"aller a la tab précédente avec gb
nnoremap gb gT
vnoremap gb gT
 
"map des directions pour pouvoir utiliser en insert mode
"(h est remplacé par n car avec putty ctrl+h = backspace):
"imap <c-j> <Down>
"imap <c-n> <Left>
"imap <c-k> <Up>
"imap <c-l> <Right>
inoremap <M-k> <Up>
inoremap <M-j> <Down>
inoremap <M-l> <Right>
"inoremap <M-h> <Left>

"on se balade entre les tabs avec alt u et i
nnoremap <M-i> gt
nnoremap <M-u> gT

"Fin assignation des touches diverses ->

"Mappings Leader <-
let mapleader=','
"nnoremap <leader>t :tabe<CR>
"nnoremap <leader>gb :buffers<CR>:sb<Space>
nnoremap <leader>b :buffers<CR>:b<Space>
nnoremap <leader>p :set paste! paste?<CR>

"recharger la conf
nnoremap <leader>v :source $MYVIMRC <CR>
"Toggle markers (from plugin vim-signature)
nnoremap <leader>M :SignatureToggleSigns <CR>
"voir la liste des marks, atteindre une mark avec 'lettre
nnoremap <leader>m :marks<CR>
"tabs:
nnoremap <leader>t :tabs<CR>:tabn<Space>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

"pour aller à la tab précédemment active:
"let g:lasttab = 1
nmap <Leader>n :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

"Tabularize
nnoremap <leader>a :Tabularize<Space>/
vnoremap <leader>a :Tabularize<Space>/
nnoremap <leader>: :Tabularize<Space>/^[^:]*\zs:/l0l1<CR>
vnoremap <leader>: :Tabularize<Space>/^[^:]*\zs:/l0l1<CR>
"nnoremap <leader>: :Tabularize<Space>/:<CR>
"vnoremap <leader>: :Tabularize<Space>/:<CR>
nnoremap <leader>= :Tabularize<Space>/^[^=]*\zs=<CR>
vnoremap <leader>= :Tabularize<Space>/^[^=]*\zs=<CR>
"nnoremap <leader>= :Tabularize<Space>/=<CR>
"vnoremap <leader>= :Tabularize<Space>/=<CR>
nnoremap <leader>> :Tabularize<Space>/=><CR>
vnoremap <leader>> :Tabularize<Space>/=><CR>

"Ajouter un ; à la fin de la ligne
"map g; A;<Esc>
nnoremap <leader>; A;<Esc>

"phpDoc
nnoremap <leader>d :call PhpDocSingle()<CR>

"Enregistrer la session courante:
nnoremap <leader>s :NERDTreeTabsClose<CR>:wa<Bar>exe "mksession! " . v:this_session<CR>
nnoremap <leader>ss :NERDTreeTabsClose<CR>:mksession  
"save session and quit:
nnoremap <leader>sq :NERDTreeTabsClose<CR>:wa<Bar>exe "mksession! " . v:this_session<CR>:qa<CR>

"set list " pour activer les caractères invisibles
set listchars=tab:>-,trail:-
nnoremap <leader>l :set list! list?<CR>

"Orthographe:
set spelllang=fr
"pour activer: (z= pour lister les suggestions)
"set spell
nnoremap <leader>o :set spell! spell?<CR>

"Pour bien formater le json
nnoremap <leader>j :%!python -m json.tool<CR>

"/Mappings Leader ->

"Folds <-
"Pour folder tout ce qui est entre les {
map zz zfa{
"ou sans inclure les {
map zq zfi{
"pour folder les tags html
"map zh vatzfj
map zh zfat
"fold comments
map zg [/zf]/j

"Fold all function (php type)
nnoremap <leader>fp :%g/\(function\_.\{-}\)\@<={/ normal! f{zf%za<CR><CR>zM<CR>``
"nnoremap <leader>fb :%g/\(function\_.\{-}\)\@<={/ normal! f{zf%<CR>
"nnoremap <leader>fb :%g/case\_.\{-}break/fold<CR>

"fold javascript functions
"nnoremap <leader>fj :%g/^[^(){}="]*\(function.*\){/ normal! f{zf%<CR>
nnoremap <leader>fj :%g/^[^(){}=" ]*: \(function.*\){/ normal! f{zf%za<CR>zM<CR>``

"Fold all comments in file
nnoremap <leader>fc :%g/\/\*/ normal! $F/zf]/j<CR>``

"Fold all group that has a } at the beginning of the line
nnoremap <leader>f} :%g/^}/ normal! zfaB<CR>``zM<CR>

"Fold all templates
nnoremap <leader>ft :%g/<template/ normal! zfat<CR>``
nnoremap <leader>fT :%g/Template.*{/ normal! f{zf%za<CR>``

"Fold all case in switch statment
nnoremap <leader>fs :%g/case.*:/.,-/break;/ fold<CR>``

function! NeatFoldText()
  let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ''
  let endtext = substitute(getline(v:foldend),"^[ 	]*","",1)
  let lines_count = v:foldend - v:foldstart + 1
  let lines_count_text = '| ' . printf("L%02s %10s", v:foldlevel, lines_count . ' lines') . ' |'
  let foldchar = matchstr(&fillchars, 'fold:\zs.')
  let foldtextstart = strpart('+' . repeat(foldchar, v:foldlevel*2) . line.'...'.endtext, 0, (winwidth(0)*2)/3)
  let foldtextend = lines_count_text . repeat(foldchar, 8)
  let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
  return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
endfunction
set foldtext=NeatFoldText()

set foldcolumn=3
"hi Folded ctermbg=grey
autocmd ColorScheme * hi Folded ctermbg=black
autocmd ColorScheme * hi Folded ctermfg=blue

"/Folds->

" <- Term Settings
let &t_Co=256 "->

"Variables NerdTree <-
"trucs pour le browser de fichier
let g:netrw_liststyle=3 " Use tree-mode as default view
let g:netrw_browse_split=4 " Open file in previous buffer
let g:netrw_preview=1 " preview window shown in a vertically 

let NERDChristmasTree     = 0
let NERDTreeMinimalUI     = 1
let NERDTreeDirArrows     = 1
let g:NERDTreeAutoCenter  = 0
let NERDTreeShowHidden    = 1
let NERDTreeShowBookmarks = 0
let NERDTreeQuitOnOpen    = 0
let NERDTreeMouseMode     = 2
"let g:NERDTreeDirArrowExpandable = "+"
"let g:NERDTreeDirArrowCollapsible = "~"
"let g:NERDTreeDirArrows=0
let g:NERDTreeMapOpenInTabSilent = '<2-LeftMouse>'
"/Variables NerdTree ->

"Configuration de l'auto complétion tern <-
let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold' "->

"Fonction My_Bg_toggle <-
function! My_bg_toggle()
	if &background == 'dark'
		set background=light
	else
		set background=dark
	endif
endfunction " ->

"Autoreload vim conf <-
augroup reload_vimrc " {
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " ->

"Snipets:<-
"https://github.com/SirVer/ultisnips/blob/master/doc/UltiSnips.txt
"helptags ~/.vim/bundle/ultisnips/doc
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips/'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
nnoremap <leader>u :UltiSnipsEdit<CR>
vnoremap <leader>u :UltiSnipsEdit<CR>
"------------------->

"Fichiers Jsons <-
"https://github.com/elzr/vim-json
let g:vim_json_syntax_conceal = 0 "->

"-------------------<- DIVERS DOC
"pour deplacer une fenetre dans screen: CRTL+A :number <nouveau_numero>
"pour spliter screen: C+A |, C+A S, C+A X 

"Pour justifier du text, entrer la commande suivant, sélectionner
"le texte et taper _j
":runtime macros/justify.vim

"fermer les "({[" automatiquement
"imap { {}<Left>
"imap {{ {<CR><CR><BS><Up><Right>
"imap [ []<Left>
"imap ( ()<Left>

" space / shift-space scroll in normal mode
"noremap <S-space> <C-b>
"noremap <space> <C-f>

"set fenc=utf-8 " UTF-8
"filetype plugin indent on " load filetype plugins/indent settings
"filetype plugin on
"au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
"docs:
"Text Objects : http://vimdoc.sourceforge.net/htmldoc/motion.html#text-objects
"Astuces      : http://stackoverflow.com/questions/726894/what-are-the-dark-corners-of-vim-your-mom-never-told-you-about?rq=1
"couleurs     : http://ethanschoonover.com/solarized
"remote       : http://vimdoc.sourceforge.net/htmldoc/remote.html


"total 80/usr/share/vim/vim72/colors/
"4 drwxr-xr-x  2 root root 4096 2014-03-11 17:58 .
"4 drwxr-xr-x 17 root root 4096 2014-03-11 17:58 ..
"4 -rw-r--r--  1 root root 2476 2012-11-15 01:35 blue.vim
"4 -rw-r--r--  1 root root 2990 2012-11-15 01:35 darkblue.vim
"4 -rw-r--r--  1 root root  548 2012-11-15 01:35 default.vim
"4 -rw-r--r--  1 root root 2399 2012-11-15 01:35 delek.vim
"4 -rw-r--r--  1 root root 2812 2012-11-15 01:35 desert.vim
"4 -rw-r--r--  1 root root 1666 2012-11-15 01:35 elflord.vim
"4 -rw-r--r--  1 root root 2476 2012-11-15 01:35 evening.vim
"4 -rw-r--r--  1 root root 3306 2012-11-15 01:35 koehler.vim
"4 -rw-r--r--  1 root root 2460 2012-11-15 01:35 morning.vim
"4 -rw-r--r--  1 root root 2006 2012-11-15 01:35 murphy.vim
"4 -rw-r--r--  1 root root 1037 2012-11-15 01:35 pablo.vim
"4 -rw-r--r--  1 root root 2673 2012-11-15 01:35 peachpuff.vim
"4 -rw-r--r--  1 root root 2311 2012-11-15 01:35 README.txt
"4 -rw-r--r--  1 root root 1239 2012-11-15 01:35 ron.vim
"4 -rw-r--r--  1 root root 2720 2012-11-15 01:35 shine.vim
"4 -rw-r--r--  1 root root 2445 2012-11-15 01:35 slate.vim
"4 -rw-r--r--  1 root root 1629 2012-11-15 01:35 torte.vim
"4 -rw-r--r--  1 root root 1840 2012-11-15 01:35 zellner.vim
"
"->

" vim: set foldmethod=marker foldmarker=<-,->:
