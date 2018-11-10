"------------------------------------------------
" write, source current buffer, run Main() function
"------------------------------------------------
function! Build()

"	" relative path to current file incl. filename
"	echo "@%: "  @% 
"	" file name
"	echo "%:t: " expand('%:t')
"	" full path (incl. filename)
"	echo "%:p: " expand('%:p')
"	" full path excl. filename
"	echo "%:p:h: " expand('%:p:h')
"	" directory of current file excl. filename
"	echo "%:p:h:t"expand('%:p:h:t')
"	" relative path to current file incl. filename excl. extension
"	echo "%:r: " expand('%:r')
"	" file extension
"	echo "%:e: "expand('%:e')
"	" call Main() function of current file

	" full path excl. filename
	:lcd %:p:h
	:pwd
	" write buffer to file
	:w
	" source file
	:so %
	" call global Main(),
	" i.e. the Main() of the sourced file is called.
	" Main() below is only called when this file is sourced.
	:call Main()

endfunction


function! Main()
	echo " Hi from Main "
endfunction
