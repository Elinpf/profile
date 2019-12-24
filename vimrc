" 不知道为什么, 这句话一定要放在最前面,否则会重置 runtimpath
runtime! debian.vim

" Vundle {
  set nocompatible              " 去除VI一致性,必须要添加
  filetype off                  " 必须要添加

  " 设置包括vundle和初始化相关的runtime path
  set runtimepath+=~/.vim/bundle/Vundle.vim
  " 放到了 ~/.vim/after 中
  call vundle#begin()
  " 另一种选择, 指定一个vundle安装插件的路径
  "call vundle#begin('~/some/path/here')

  " 让vundle管理插件版本,必须
  Plugin 'VundleVim/Vundle.vim'

  " 以下范例用来支持不同格式的插件安装.
  " 请将安装插件的命令放在vundle#begin和vundle#end之间.
  " Github上的插件
  " 格式为 Plugin '用户名/插件仓库名'
  "
  " 在vim中Git的插件
  Plugin 'tpope/vim-fugitive'
  " 文件导航插件
  Plugin 'scrooloose/nerdtree'
  " CtrlP
  Plugin 'Yggdroot/LeaderF'
  " Airline
  Plugin 'bling/vim-airline'
  " 撤销分支
  Plugin 'sjl/gundo.vim'

  " 精确查找工具
  Plugin 'easymotion/vim-easymotion'

  " Tagbar
  Plugin 'majutsushi/tagbar'

  " 补全
  Plugin 'Valloric/YouCompleteMe'

  " 会话管理
  Plugin 'vim-scripts/sessionman.vim'

  " 自动创建目录
  Plugin 'pbrisbin/vim-mkdir'

  " 自动创建注释
  Plugin 'scrooloose/nerdcommenter'

  " 检查语法
  Plugin 'vim-syntastic/syntastic'

  " 当切换到Normal模式后,输入法切换到英文
  Plugin 'lilydjwg/fcitx.vim'

  " 抬头显示table或者空格
  Plugin 'Yggdroot/indentLine'

  " 有道翻译
  Plugin 'ianva/vim-youdao-translater'

  " Rials 插件
  Plugin 'tpope/vim-rails'

  " 在vim中Grep
  "Plugin 'wsdjeg/FlyGrep.vim'

  " 包围
  Plugin 'tpope/vim-surround'

  " slim 语法高亮
  " https://www.rubydoc.info/gems/slim/frames
  Plugin 'slim-template/vim-slim'
  
  " 缩进对齐
  Plugin 'godlygeek/tabular'

  " 重命名
  " Usage:
  "   :rename[!] {rename}
  Plugin 'danro/rename.vim'

  " vim-ruby
  "Bundle 'vim-ruby/vim-ruby'

  " css 颜色显示插件
  Plugin 'ap/vim-css-color'

  " 多光标多行编辑器, https://github.com/terryma/vim-multiple-cursors
  "Plugin 'terryma/vim-multiple-cursors'

  " minitest 语法
  Plugin 'sunaku/vim-ruby-minitest'

  " coffee-script 语法
  Plugin 'kchmck/vim-coffee-script'

  " Python 缩进
  Plugin 'Vimjas/vim-python-pep8-indent'

  " set breakpoint for python
  Plugin 'sillybun/setbreakpoints_python'

  " Python 换行自动排版
  Plugin 'Chiel92/vim-autoformat'

  " 彩虹括号
  Plugin 'kien/rainbow_parentheses.vim'

  " 自动补全括号
  Plugin 'Raimondi/delimitMate'

  " EasyGrep
  Plugin 'dkprice/vim-easygrep'

  " Python 自动补全
  Plugin 'davidhalter/jedi-vim'

  " 有Git功能的导航
  Plugin 'Xuyuanp/nerdtree-git-plugin'

  " 颜色
  Plugin 'connorholyday/vim-snazzy'

  " markbook
  Plugin 'kshenoy/vim-signature'

  " Git 显示修改处
  Plugin 'mhinz/vim-signify'

  " Git 的VIM浏览
  Plugin 'junegunn/gv.vim'

  " 你的所有插件需要在下面这行之前
  call vundle#end()            " 必须
  filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
  " 忽视插件改变缩进,可以使用以下替代:
  " vim-ruby 需要
  "filetype plugin on
  "
  " 常用的命令
  " :PluginList       - 列出所有已配置的插件
  " :PluginInstall     - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
  " :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
  " :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
  "
  " 查阅 :h vundle 获取更多细节和wiki以及FA'
  " 将你自己对非插件片段放在这行之后
" }
"
" *************** 原配置 ************************
" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif



" *************** 全局设置 *****************

" 颜色方案
"colorscheme ron
colorscheme snazzy
 
" 定义快捷键的前缀，即<Leader>
let mapleader="'"

" 按键映射 {
    " 为了方便窗口转换
    nmap <C-h> <C-w>h
    nmap <C-j> <C-w>j
    nmap <C-k> <C-w>k
    nmap <C-l> <C-w>l
    "nmap fq :q
    "nmap fw :w
    "nmap fwq :wq
    " 删除当前Buffer
    map :d :bd 
    xmap <C-C> "+y
    nmap q! :q!

    " 修复Alt按键
    "for i in range(97,122)
      "let c = nr2char(i)
      "exec '"map \e".c." <M-".c.">"
      "exec '"map! \e".c." <M-".c.">"
    "endfor

    " 替换Esc为Alt + c
    "nmap <Esc> <Nul>
    "inoremap <Esc> <Nul>
    "inoremap <M-c> <Esc>
    "nmap <M-c> <Esc>

    " 替换Backspace 为 Alt + n
    "inoremap <BS> <Nul>
    "inoremap <M-n> <BS>

    " 在插入模式下使用上下左右
    "imap <M-h> <Left>
    "imap <M-j> <Down>
    "imap <M-k> <Up>
    "imap <M-l> <Right>
    "nmap <M-h> <Left>
    "nmap <M-j> <Down>
    "nmap <M-k> <Up>
    "nmap <M-l> <Right>

    " 上一个和下一个Buffer
    nnoremap :n :bn
    nnoremap :p :bp
" }


" 环境设置 {
    set nu
    set shortmess=atI " 启动时不显示救助
    set nobackup "取消备份。 视情况自己改
    set noswapfile "关闭交换文件

    " 隐藏滚动条"
    set guioptions-=r
    set guioptions-=L
    set guioptions-=b

    " 选择autoindent是因为#注释会顶头的原因
    " 由于不知道哪个插件加入了indentexpr这个选项,所以有了更加智能的缩进, 如果要取消的话:
    " autocmd FileType * setlocal indentexpr=none
    set nosmartindent
    set autoindent
    set nocindent
    set cursorline              " 突出显示当前行
    set noeb   " 去掉输入错误的提示声音
    set ignorecase    " 搜索忽略大小写
    "set hlsearch "搜索逐字符高亮

    " 通过autocmd FileType * setlocal 来覆盖配置
    " :help ftplugin-overrule
    autocmd FileType * setlocal formatoptions=l
    "autocmd FileType python setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79 " 不清楚为什么，非要特别指定Python的缩进

    set ts=2 " table 为两个空格
    set sw=2
    set expandtab " 将table 变成空格
    set softtabstop=2 " 首行退格时采用连退模式
    set backspace=2   " 使回格键（backspace）正常处理indent, eol, start等
    set scrolloff=1   " 光标移动到buffer的顶部和底部时保持1行距离
    

    " 添加支持GBK
    let &termencoding=&encoding
    "set fileencodings=utf-8,gbk
    set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

    set mouse=h		" Enable mouse usage (all modes)
    set showcmd

    " 支持CSS HTML 自动补全
    " 使用方法: <c-o><c-x><c-x><c-o>
    autocmd FileType scss set omnifunc=csscomplete#CompleteCSS
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

    " minitest 自动补全 i_CTRL-X_CTRL-U
    set completefunc=syntaxcomplete#Complete

    " 折叠设置
    set foldmethod=indent
    " 启动 Vim 时关闭折叠
    set nofoldenable
    set foldlevel=99
    nnoremap <space><space> za
    " zM 折叠所有
    " zr 打开折叠
    " zR 打开所有嵌套折叠
    " zc 折叠
    " zC 将整个函数折叠，并嵌套
    " zo 打开
    " zO 打开嵌套折叠
    " za 打开关闭切换
    highlight Folded ctermfg=37 ctermbg=0

" }

" *************** 插件设置 *******************
"
" Shift+r 刷新
" NERDTreeToggle {
    " 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
    nmap <F8> :NERDTreeToggle<CR>
    " 设置NERDTree子窗口宽度
    let NERDTreeWinSize=32
    " 设置NERDTree子窗口位置
    let NERDTreeWinPos="left"
    " 显示隐藏文件
    let NERDTreeShowHidden=1
    " NERDTree 子窗口中不显示冗余帮助信息
    let NERDTreeMinimalUI=1
    " 删除文件时自动删除文件对应 buffer
    let NERDTreeAutoDeleteBuffer=1
    " 当vim启动时没有文件时自动启动
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
    "当NERDTree为剩下的唯一窗口时自动关闭
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }

" 需要注意的是使用的时候第一个要是文件,而不是目录
" fugit {
    nnoremap <silent> <leader>gd :Gdiff<CR>
    " 注意后面后个空格哦
    nnoremap <Space>g :Git 
" }
 
" <F5>刷新
" <C-]> :vs
" <C-x> :sp
" Leaderf {
  let g:Lf_ShortcutF = '<Space>f'
  let g:Lf_ShortcutB = '<Space>b'
  let g:Lf_DefaultMode = 'FullPath'
  let g:Lf_WildIgnore = {
      \ 'dir': ['.svn','.git','.hg'],
      \ 'file': ['*.sw?', '~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
      \}

" }

" Airline {
      
    "let g:airline_theme="luna" 

    "这个是安装字体后 必须设置此项" 
    let g:airline_powerline_fonts = 1   

    "打开tabline功能,方便查看Buffer和切换,省去了minibufexpl插件
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#buffer_nr_show = 1

    " 开启tarbar功能
    "let g:airline#extensions#tagbar#enabled = 1

    " 开启语法验证功能
    "let g:airline#extensions#syntastic#enabled = 1
    "let airline#extensions#syntastic#error_symbol = 'E:'
    "let airline#extensions#syntastic#stl_format_err = '%E{[%e(#%fe)]}'
    "let airline#extensions#syntastic#stl_format_warn = '%W{[%w(#%fw)]}'
    let g:syntastic_python_python_exec = 'python3'

    set t_Co=256
    " 代替方案
    let g:airline_right_sep = '◀'

" }

" syntastic {
    " 关闭错误窗口
    nmap :cl :lclose
" }

" Gundo {
    nnoremap <Leader>u :GundoToggle<CR>

    " 支持Python3
    let g:gundo_prefer_python3 = 1

    " gundo窗口在右边， 默认禁用该选项
    let g:gundo_right = 1

    " 还原版本后，自动关闭窗口，默认禁用该选项 
    let g:gundo_close_on_revert = 1
    
    " 开启永久撤销
    let $VIMTEMP = $VIMFILES.'/tmp'
    if v:version >= 703
      set undofile
      set undodir=$VIMTEMP
      set undolevels=1000 "maximum number of changes that can be undone
      set undoreload=10000 "maximum number lines to save for undo on a buffer
    endif
" }

" EasyMotion {
    let g:EasyMotion_smartcase = 1
    
    " <Leader><Leader>f{char}{char} to move to {char}{char}
    map  <Leader><Leader>f <Plug>(easymotion-bd-f2)
    nmap <Leader><Leader>f <Plug>(easymotion-overwin-f2)

    " s{char} to move to {char}
    nmap s <Plug>(easymotion-overwin-f)

    " Move to line
    map <Leader><Leader>L <Plug>(easymotion-bd-jk)
    nmap <Leader><Leader>L <Plug>(easymotion-overwin-line)

    " Move to word
    map  <Leader><Leader>w <Plug>(easymotion-bd-w)
    nmap <Leader><Leader>w <Plug>(easymotion-overwin-w)

    " 字符串查找
    map  \ <Plug>(easymotion-sn)
    omap \ <Plug>(easymotion-tn)
" }

" Tagbar {
    " 在项目中执行  ctags -R ./* 

    nmap <F10> :TagbarToggle<CR>
    "设置tagbar使用的ctags的插件,必须要设置对  
    let g:tagbar_ctags_bin='/usr/bin/ctags'  
    "设置tagbar的窗口宽度  
    let g:tagbar_width=30  
    ""设置tagbar的窗口显示的位置,为左边  
    let g:tagbar_right=1  
    "打开文件自动 打开tagbar  
    "autocmd BufReadPost *.rb call tagbar#autoopen()  
" }

" ctags {
    
        set tags=./tags;/,~/.vimtags

        " Make tags placed in .git/tags file available in all levels of a repository
        let gitroot = substitute(system('git rev-parse --show-toplevel'), '[\n\r]', '', 'g')
        if gitroot != ''
            let &tags = &tags . ',' . gitroot . '/.git/tags'
        endif
" }

" YouCompleMe {
    let g:ycm_global_ycm_extra_conf = '/root/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
    "let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全
    let g:ycm_confirm_extra_conf=0   " 打开vim时不再询问是否加载ycm_extra_conf.py配置
    "inoremap <expr> <CR>  pumvisible() ? "\<C-y>" : "\<CR>"    "回车即选中当前项

    let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<C-j>'] " 下移动
    let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>', '<C-k>'] " 上移动
    set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
    " 跳转到对应的方法 goto, 好像不行
    "nnoremap <leader>gt :YcmCompleterGoToDefinitionElseDeclaration<CR>  

    " css
    let g:ycm_semantic_triggers = {
   \   'css': [ 're!^\s{2}', 're!:\s+' ],
   \   'scss': [ 're!^\s{2}', 're!:\s+' ],
   \ }
" }

" Sessionman {
    set sessionoptions=blank,buffers,curdir,folds,tabpages,winsize
    nmap <leader>sl :SessionList<CR>
    nmap <leader>ss :SessionSave<CR>
    nmap <leader>sc :SessionClose<CR>
" }

" nerdcommenter {
"   快捷键是 <Leader>c<space>
" }

" vim-rails {
    " gf 跳转查看当前光标的定义
    nmap <Space>r :Rails 
" }

" fly-grep {
  "  nnoremap <Space>/ :FlyGrep<cr> 
" }

  " 
  "Normal mode
  "ds  - delete a surrounding
  "cs  - change a surrounding
  "ys  - add a surrounding
  "yS  - add a surrounding and place the surrounded text on a new line + indent it
  "yss - add a surrounding to the whole line
  "ySs - add a surrounding to the whole line, place it on a new line + indent it
  "ySS - same as ySs
  "ysiw - add a surronding to a word
    
  "Visual mode
  "s   - in visual mode, add a surrounding
  "S   - in visual mode, add a surrounding but place text on new line + indent it
    
  "Insert mode
  "<CTRL-s> - in insert mode, add a surrounding
  "<CTRL-s><CTRL-s> - in insert mode, add a new line + surrounding + indent
  "<CTRL-g>s - same as <CTRL-s>
  "<CTRL-g>S - same as <CTRL-s><CTRL-s>
  "
" surround {
    " yss-
    let g:surround_{char2nr("-")} = "<% \r %>"
    " yss=
    let g:surround_{char2nr("=")} = "<%= \r %>"
    let g:surround_{char2nr("d")} = "<div\1class: \r..*\r class=\"&\"\1>\n  \r\n</div>"
    let g:surround_{char2nr('{')} = "{\n  \r\n}"
" }

" Tabularize {
      nmap <Space>a= :Tabularize /=<CR>
      vmap <Space>a= :Tabularize /=<CR>
      nmap <Space>a: :Tabularize /:\zs/l0r1<CR>
      vmap <Space>a: :Tabularize /:\zs/l0r1<CR>
      nmap <Space>a, :Tabularize /,\zs/l0r1<CR>
      vmap <Space>a, :Tabularize /,\zs/l0r1<CR>
      nmap <Space>a<Space> :Tabularize / /l0<CR>
      vmap <Space>a<Space> :Tabularize / /l0<CR>
"

" autoformat Python 自动排版工具
" vim-autoformat {
  " 每次在normal环境下按F6便可以格式化代码
  nnoremap <F6> :Autoformat<CR>
  let g:autoformat_autoindent = 0
  let g:autoformat_retab = 0
  let g:autoformat_remove_trailing_spaces = 0
" }

" Python set breakpoint {
  autocmd FileType python nnoremap <F12> :call ToggleBreakPoint()<Cr>
" }

" 彩虹括号 {
  let g:rbpt_colorpairs = [
      \ ['brown',       'RoyalBlue3'],
      \ ['Darkblue',    'SeaGreen3'],
      \ ['darkgray',    'DarkOrchid3'],
      \ ['darkgreen',   'firebrick3'],
      \ ['darkcyan',    'RoyalBlue3'],
      \ ['darkred',     'SeaGreen3'],
      \ ['darkmagenta', 'DarkOrchid3'],
      \ ['brown',       'firebrick3'],
      \ ['gray',        'RoyalBlue3'],
      \ ['darkmagenta', 'DarkOrchid3'],
      \ ['Darkblue',    'firebrick3'],
      \ ['darkgreen',   'RoyalBlue3'],
      \ ['darkcyan',    'SeaGreen3'],
      \ ['darkred',     'DarkOrchid3'],
      \ ['red',         'firebrick3'],
      \ ]

  " 不加入这行, 防止黑色括号出现, 很难识别
  " \ ['black',       'SeaGreen3'],

  let g:rbpt_max = 16
  let g:rbpt_loadcmd_toggle = 0
  au VimEnter * RainbowParenthesesToggle
  au Syntax * RainbowParenthesesLoadRound
  au Syntax * RainbowParenthesesLoadSquare
  au Syntax * RainbowParenthesesLoadBraces
" }

" delimitMate {
  " for python docstring ", 特别有用
  au FileType python let b:delimitMate_nesting_quotes = ['"']
  " 关闭某些类型文件的自动补全
  "au FileType mail let b:delimitMate_autoclose = 0
" }

" fcitx {
  " 消除退出插入模式的延迟
  set timeoutlen=1000 ttimeoutlen=0
" }

" EasyGrep {
  "<Leader>vv  # 搜索光标所在单词，并匹配出所有结果，类似 gstar
  "<Leader>vV  # 搜索光标所在单词，全词匹配，类似 star
  "<Leader>va  # 类似 vv，但是会把结果添加到之前的搜索列表
  "<Leader>vA  # 类似 vV，但是会把结果添加到之前的搜索列表
  "<Leader>vr  # 全局搜索光标所在单词，并替换想要的单词

  ":Grep [arg]             # 类似 <Leader>vv，使用 ! 类似<Leader>vV
  ":GrepAdd [arg]          # 类似 <Leader>va，使用 ! 类似<Leader>vA
  ":Replace [target] [replacement] # 类似 <Leader>vr
  ":ReplaceUndo            # 撤销替换操作
  ":GrepOptions            # 选项
" }

" jedi-vim {
  "关闭YouCompleteMe
  "au FileType python let g:ycm_auto_trigger=0

  let g:jedi#popup_select_first = 0

  let g:jedi#goto_command = "<leader>d"
  let g:jedi#goto_assignments_command = "<leader>g"
  let g:jedi#goto_definitions_command = ""
  let g:jedi#documentation_command = "K"
  let g:jedi#usages_command = "<leader>n"
  let g:jedi#completions_command = "<F9>"
  let g:jedi#rename_command = "<leader>r"

  " 关闭自动选择第一个
  let g:jedi#popup_select_first = 0

  " 关闭，但是保留其他功能
  "let g:jedi#completions_enabled = 0
"}

" setbreakpoints_python {
	let g:setbreakpoints_pdb = 0
" }

" NerdTree-git {
    let g:NERDTreeIndicatorMapCustom = { 
        \ "Modified"  : "✹",
        \ "Staged"    : "✚",
        \ "Untracked" : "✭",
        \ "Renamed"   : "➜",
        \ "Unmerged"  : "═",
        \ "Deleted"   : "✖",
        \ "Dirty"     : "✗",
        \ "Clean"     : "✔︎",
        \ "Unknown"   : "?"
    \ }
" }


" vim-signature
    let g:SignatureMap = {
            \ 'Leader'             :  "m",
            \ 'PlaceNextMark'      :  "m,",
            \ 'ToggleMarkAtLine'   :  "m.",
            \ 'PurgeMarksAtLine'   :  "dm-",
            \ 'DeleteMark'         :  "dm",
            \ 'PurgeMarks'         :  "dm/",
            \ 'PurgeMarkers'       :  "dm?",
            \ 'GotoNextLineAlpha'  :  "m<LEADER>",
            \ 'GotoPrevLineAlpha'  :  "",
            \ 'GotoNextSpotAlpha'  :  "m<LEADER>",
            \ 'GotoPrevSpotAlpha'  :  "",
            \ 'GotoNextLineByPos'  :  "",
            \ 'GotoPrevLineByPos'  :  "",
            \ 'GotoNextSpotByPos'  :  "mn",
            \ 'GotoPrevSpotByPos'  :  "mm",
            \ 'GotoNextMarker'     :  "",
            \ 'GotoPrevMarker'     :  "",
            \ 'GotoNextMarkerAny'  :  "",
            \ 'GotoPrevMarkerAny'  :  "",
            \ 'ListLocalMarks'     :  "m/",
            \ 'ListLocalMarkers'   :  ""
    \ }
    nmap m? :SignatureListGlobalMarks<cr>
" }

" GV {
" :GV 所有的commit历史
" :GV? 本文件的commit历史
" }

" ************** 自定义vim插件 *******************
" 有道翻译 {
    "vnoremap <silent> <C-T> :<C-u>Ydv<CR>
    "nnoremap <silent> <C-T> :<C-u>Ydc<CR>
    noremap <leader>fy :<C-u>Yde<CR>
" }
" wudao 光标支持 {
" https://github.com/qiebzps/vim_wudao-dict
    map <Leader>wd :call SearchWord()<cr>
    function SearchWord()
      execute "normal viwy\<Esc>"
      execute "\"+=\"\""
      execute "!wd $(xsel)"
    endfunction
" }

" 百度翻译光标 {
    map <Leader>lwd :call SearchBaiduWord()<cr>
    function SearchBaiduWord()
      execute "normal '<,'>y<Esc>"
      execute "\"+=\"\""
      execute "!lwd $(xsel)"
      " FIXME
      "redir @a
        "set all
      "redir END
      "echo @a
    endfunction
" }

" 关闭所有Buffers, 除了自己 {
    function! DeleteAllBuffersInWindow()
    e let s:curWinNr = winnr()
      if winbufnr(s:curWinNr) == 1
        ret
      endif
      let s:curBufNr = bufnr("%")
      exe "bn"
      let s:nextBufNr = bufnr("%")
      while s:nextBufNr != s:curBufNr
        exe "bn"
        exe "bdel ".s:nextBufNr
        let s:nextBufNr = bufnr("%")
      endwhile
    endfun
    noremap <leader>da :call DeleteAllBuffersInWindow()<CR>
" }

" :q 退出的时候如果有多个buf则提示确认 {
   function! ListedBufCount()
     let s:bufCount = 0
     for i in range(1, bufnr('$'))
       if buflisted(i)
         let s:bufCount += 1
       endif
     endfor
     return s:bufCount
   endfunction

   function! ListedWinCount()
     let s:winCount = 0
     for i in range(1, winnr('$'))
       let s:winCount += 1
     endfor
     return s:winCount
   endfunction

   function! QuitConfirmBuf(writeFile)
     if (a:writeFile)
       if (expand("#")=="")
         echo "Can't save a file with no name."
         return
       endif
       write
     endif

     let s:bufCount = ListedBufCount()
     let s:winCount = ListedWinCount()
     " FIXME 在这里Tarbar会导致有多个窗口,然后直接退出, 能不能做成排除掉Tarbar和NBTree
     if s:bufCount == 1
       quit
     else
       let l:confirmed = confirm("有多个Buffer,仍然退出么?", "&Yes\n&No", 2)
       if l:confirmed == 1
         quit
       endif
     endif
   endfunction

   "cmap :wq<cr>  call QuitConfirmBuf(1)<cr>
   nnoremap <Space>q  :call QuitConfirmBuf(0)<cr>
   nnoremap <silent> q<cr> :call QuitConfirmBuf(0)<cr>
   nmap <silent> wq<cr> :call QuitConfirmBuf(1)<cr>
   nmap <silent> w<cr>  :w<cr>
   nmap <silent> ww<cr>  :wa<cr>
" }

" 按r回车直接运行程序 {
  """"""""""""""""""""""
  "Quickly Run
  """"""""""""""""""""""
  "map <F9> :call CompileRunGcc()<CR>
  nmap <silent> r<cr> :call CompileRunGcc()<CR>
  func! CompileRunGcc()
      exec "w"
      if &filetype == 'c'
          " 32bit 编译， 无保护
          exec "!g++ -g -ggdb -O0 -fno-stack-protector -z execstack % -o %<"
          exec "!time ./%<"
      elseif &filetype == 'cpp'
          exec "!g++ -g -ggdb -O0 -fno-stack-protector -z execstack % -o %<"
          exec "!time ./%<"
      elseif &filetype == 'java'
          exec "!javac %"
          exec "!time java %<"
      elseif &filetype == 'sh'
          :!time bash %
      elseif &filetype == 'python'
          exec "!python3 %"
      elseif &filetype == 'ruby'
          exec "!time ruby %"
      elseif &filetype == 'html'
          exec "!firefox % &"
      elseif &filetype == 'go'
  "        exec "!go build %<"
          exec "!time go run %"
      elseif &filetype == 'mkd'
          exec "!~/.vim/markdown.pl % > %.html &"
          exec "!firefox %.html &"
      endif
  endfunc
" }


