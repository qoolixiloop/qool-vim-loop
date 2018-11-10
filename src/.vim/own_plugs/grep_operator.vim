

" we've defined a brand new Vim operator we can use it in a lot of different ways, such as:
"-------------------------------------------------------------------------------------------
" viw<leader>g: Visually select a word, then grep for it.
" <leader>g4w: Grep for the next four words.
" <leader>gt;: Grep until semicolon.
" <leader>gi[: Grep inside square brackets.
" ------------------------------------------------------------------------------------------

"nnoremap <leader>g :set operatorfunc=<SID>GrepOperator<cr>g@
"vnoremap <leader>g :<c-u>call <SID>GrepOperator(visualmode())<cr>

" function! s:GrepOperator(type) with s:foo it is a script local func. 
" with <SID> in front the func gets a number in front of the name.
" that means that if source in .vimrc it is visible only in .vimrc
" but not in other cripts.
" => removed s:, removed <SID>, added the map to .vimrc
function! GrepOperator(type)

	let saved_unnamed_register = @@

	"Debug with echom (writes into :messages)
	echom "grep-operator.vim: GrepOperator"
	echom "@@: " saved_unnamed_register
	echom "type: " a:type
	"can't use echom with a list
	echo "a:000: " a:000
	"redraw
	"sleep 10000m

" '[  `[			To the first character of the previously changed
" 			or yanked text.  {not in Vi}
" ']  `]			To the last character of the previously changed or
" 			yanked text.  {not in Vi}
" '<  `<			To the first line or character of the last selected
" 			Visual area in the current buffer.  For block mode it
" 			may also be the last character in the first line (to
" 			be able to define the block).  {not in Vi}.
" '>  `>			To the last line or character of the last selected
" 			Visual area in the current buffer.  For block mode it
" 			may also be the first character of the last line (to
" 			be able to define the block).  Note that 'selection'
" 			applies, the position may be just after the Visual
" 			area.  {not in Vi}.


	if a:type ==# 'v'
		echom "a:type==#v"
		normal! `<v`>y
	elseif a:type ==# 'char'
		echom "a:type==char"
		normal! `[v`]y
	else
		echom "a:type: else"
		return
	endif
	
	"Debug
	echom "@@: " @@
	echom "shellescape(@@): " shellescape(@@)
	redraw
	sleep 10000m


	silent execute "grep! -R " . shellescape(@@) . " ."
	copen

	let @@ = saved_unnamed_register
endfunction
