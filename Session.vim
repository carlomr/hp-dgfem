let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/LJLL/deal.II-dev/examples/hp-modified
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 step-27.cc
badd +22 boundary_tentativo
args step-27.cc
edit step-27.cc
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=20
setlocal fen
78
normal! zo
180
normal! zo
197
normal! zo
278
normal! zo
281
normal! zo
332
normal! zo
350
normal! zo
357
normal! zo
360
normal! zo
371
normal! zo
374
normal! zo
381
normal! zo
422
normal! zo
457
normal! zo
483
normal! zo
492
normal! zo
503
normal! zo
514
normal! zo
526
normal! zo
571
normal! zo
578
normal! zo
673
normal! zo
711
normal! zo
735
normal! zo
757
normal! zo
789
normal! zo
791
normal! zo
829
normal! zo
873
normal! zo
875
normal! zo
879
normal! zo
889
normal! zo
892
normal! zo
895
normal! zo
901
normal! zo
939
normal! zo
941
normal! zo
979
normal! zo
1002
normal! zo
1004
normal! zo
1010
normal! zo
1020
normal! zo
1027
normal! zo
1080
normal! zo
1086
normal! zo
1089
normal! zo
1113
normal! zo
1126
normal! zo
1170
normal! zo
1201
normal! zo
350
normal! zo
357
normal! zo
360
normal! zo
371
normal! zo
374
normal! zo
381
normal! zo
422
normal! zo
457
normal! zo
483
normal! zo
492
normal! zo
503
normal! zo
514
normal! zo
526
normal! zo
571
normal! zo
578
normal! zo
673
normal! zo
711
normal! zo
735
normal! zo
757
normal! zo
789
normal! zo
791
normal! zo
829
normal! zo
873
normal! zo
875
normal! zo
879
normal! zo
889
normal! zo
892
normal! zo
895
normal! zo
901
normal! zo
939
normal! zo
941
normal! zo
979
normal! zo
1002
normal! zo
1004
normal! zo
1010
normal! zo
1020
normal! zo
1027
normal! zo
1080
normal! zo
1086
normal! zo
1089
normal! zo
1113
normal! zo
1126
normal! zo
1170
normal! zo
1201
normal! zo
let s:l = 340 - ((32 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
340
normal! 013|
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
let g:this_obsession = v:this_session
unlet SessionLoad
" vim: set ft=vim :
