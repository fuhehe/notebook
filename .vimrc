syntax enable
syntax on
filetype plugin indent on
colorscheme slate
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe("normal! g'\"") | endif

set t_Co=256
set number
set completeopt=longest,menu
set nobackup
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set history=1000
set hlsearch
set incsearch
set autowrite

let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_auto_select = 1
let g:miniBufExplMapCTabSwitchBufs=1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let g:winManagerWindowLayout='FileExplorer|TagList'

nmap wm :WMToggle<cr>
nmap <F6> :cn<cr>
nmap <F7> :cp<cr>
nmap <F8> :make -j5<cr>

nnoremap <silent> <F3> :Grep<CR>
nnoremap <silent> <F12> :A<cr>

set backspace=indent,eol,start
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,cp936
if has("cscope")
    set cscopetag
    set csto=0
	set nocsverb
	"set cscopequickfix=s-,c-,d-,i-,t-,e-
	let subPath=substitute(getcwd(), "/home/[^/]*/\\([^/]*/[^/]*\\).*", "\\1", "")
	let projectPath="/home/".$USER."/cscope/".subPath
	let cscopeFile=findfile("cscope.out", projectPath) 
	exe 'cs add '.cscopeFile.' '.projectPath
    set cscopeverbose
	set nocompatible
	
	exe 'nmap <F5> :!cd '.projectPath.';./update.sh<CR>:cs reset<CR>'

    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>	

    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>	

    nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>

endif
"doxygen toolkit
let g:DoxygenToolkit_briefTag_pre="@brief "
let g:DoxygenToolkit_paramTag_pre="@param "
let g:DoxygenToolkit_returnTag="@return "
let g:DoxygenToolkit_blockHeader=""
let g:DoxygenToolkit_blockFooter=""
let g:DoxygenToolkit_licenseTag=""

let g:DoxygenToolkit_authorName="crane"
let s:licenseTag = "Copyright(C)\<enter>"
let s:licenseTag = s:licenseTag . " \<enter>"
let s:licenseTag = s:licenseTag . "All right reserved\<enter>"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1

let OmniCpp_GlobalScopeSearch = 1 " 0 or 1
let OmniCpp_NamespaceSearch = 1 " 0 , 1 or 2
let OmniCpp_DisplayMode = 1
let OmniCpp_ShowScopeInAbbr = 0
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
