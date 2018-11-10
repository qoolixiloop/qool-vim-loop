"---------------------------------------------
" helper functions with functional programming
"---------------------------------------------
" sort() sorts the list in place, so we first create a full copy of the list and sort that so the original list won't be changed
" sorted() takes a list and returns a new list with elements sorted
" Reversed() takes a list and returns a new list with the elements reversed.
" Append() returns a new list with the given value appended to the end of the old one.
" Assoc() (short for "associate") returns a new list, with the element at the given index replaced by the new value.
" Pop() returns a new list with the element at the given index removed.
" Mapped() returns a new list with each element mapped with argument string or function (Funcref)
 
" How to run the script
"------------------------------------------------------------------------
" 1.a) Source the file in Vim command line :source Script_1.vim
"  .b) or source the file in another script Script_2.vim
"  .c) or source the file in .vimrc
" 2.a) Use function in Vim command line :echo MyFoo('arg1', 'arg2')
"  .b) or use function in Vim command line :echo MyFoo('arg1', 'arg2')
"  .c) or use function in other script Script_2
" Arguments:
" a:0 nr of additional arguments; 
" a:1, a:2, a:3, ... additional arguments 
" a000 vector of additional arguments

" :help map()
" map({expr1}, {expr2})
"		{expr1} must be a |List| or a |Dictionary|.
"		Replace each item in {expr1} with the result of evaluating
"		{expr2}.  {expr2} must be a |string| or |Funcref|.
"
"		If {expr2} is a |string|, inside {expr2} |v:val| has the value
"		of the current item.  For a |Dictionary| |v:key| has the key
"		of the current item and for a |List| |v:key| has the index of
"		the current item.
"		Example: >
"			:call map(mylist, '"> " . v:val . " <"')
"			<This puts "> " before and " <" after each item in "mylist".
"
"		Note that {expr2} is the result of an expression and is then
"		used as an expression again.  Often it is good to use a
"		|literal-string| to avoid having to double backslashes.  You
"		still have to double ' quotes
"
"		If {expr2} is a |Funcref| it is called with two arguments:
"			1. The key or the index of the current item.
"			2. the value of the current item.
"		The function must return the new value of the item. 
"		Example that replaces each value with "key-value": >
"			func KeyValue(key, val)
"			  return a:key . '-' . a:val
"			endfunc
"			call map(myDict, function('KeyValue'))	
"		<It is shorter when using a |lambda|: >
"			call map(myDict, {key, val -> key . '-' . val})
"		<If you do not use "val" you can leave it out: >
"			call map(myDict, {key -> 'item: ' . key})
"		<The operation is done in-place.  If you want a |List| or
"			|Dictionary| to remain unmodified make a copy first: >
"			:let tlist = map(copy(mylist), ' v:val . "\t"')
"
"		<Returns {expr1}, the |List| or |Dictionary| that was filtered.
"		When an error is encountered while evaluating {expr2} no
"		further items in {expr1} are processed.  When {expr2} is a
"		Funcref errors inside a function are ignored, unless it was
"		defined with the "abort" flag.

" type({expr}) used to differentiate between list and dict
"		Funcref:    2  |v:t_func|
"		List:		    3  |v:t_list|
"		Dictionary: 4  |v:t_dict|

function! Sorted(l)
	let new_list = deepcopy(a:l)
	call sort(new_list)
	return new_list
endfunction

function! Reversed(l)
	let new_list = deepcopy(a:l)
	call reverse(new_list)
	return new_list
endfunction

function! Appended(l, val)
	let new_list = deepcopy(a:l)
	call add(new_list, a:val)
	return new_list
endfunction

function! Replaced(l, i, val)
	let new_list = deepcopy(a:l)
	if (type(a:l) ==# v:t_list)
		let new_list[a:i] = a:val
	elseif (type(a:l) ==# v:t_dict)
		let new_list[a:i] = a:val
	endif
	return new_list
endfunction

function! Popped(l, i)
	let new_list = deepcopy(a:l)
	call remove(new_list, a:i)
	return new_list
endfunction

function! Mapped(l, fn)
	let new_list = deepcopy(a:l)
	call map(new_list, string(a:fn) . '(v:val)')
	return new_list
endfunction

function! Mapped2(l, fn)
	let new_list = deepcopy(a:l)
	call map(new_list, a:fn . '(v:val)')
	return new_list
endfunction

function! Filtered(l, fn)
	let new_list = deepcopy(a:l)
	call filter(new_list, string(a:fn) . '(v:val)')
	return new_list
endfunction

function! Removed(l, fn)
	let new_list = deepcopy(a:l)
	call filter(new_list, '!' . string(a:fn) . '(v:val)')
	return new_list
endfunction


function! Testing_vim_helper_functions()
	
	let mylist = [3, 2, 4, 1]
	echo "mylist: " mylist
	echo "Sorted: " Sorted(mylist)

	let mylist = [3, 2, 4, 1]
	echo "mylist: " mylist
	echo "Reversed: " Reversed(mylist)

	" Reversed is applied to the outer list	
	let mylist = [[1, 2], [3, 4]]
	echo "mylist: " mylist
	echo "Reversed: " Reversed(mylist)
	
	let mylist = [3, 2, 4, 1]
	echo "mylist: " mylist
	echo "Appended: " Appended(mylist, 5)
	
	let mylist = [3, 2, 4, 1]
	let mydict = {'a':1,'b':2}
	echo "mylist; mydict: " mylist '; ' mydict
	echo "Assoc: " Replaced(mylist, 2, 99)
	echo "Assoc: " Replaced(mydict, 'a', 99)

	let mylist = [3, 2, 4, 1]
	echo "mylist: " mylist
	echo "Popped: " Popped(mylist, 0)

	" Reversed is applied to the elements of all inner lists
	" function(myfunc) is used to store myfunc in a variable or to pass it
	" as an argument to another function
	let mylist = [[1, 2], [3, 4]]
	echo "mylist: " mylist
	echo "Mapped:Reversed: " Mapped(mylist, function("Reversed"))

	" Reversed is applied to the elements of all inner lists
	" function(myfunc) is used to store myfunc in a variable or to pass it
	" as an argument to another function
	let mylist = [[1, 2], [3, 4]]
	echo "mylist: " mylist
	echo "Mapped2:Reversed: " Mapped2(mylist, string(function("Reversed")))
	echo "Mapped2:Reversed: " Mapped2(mylist, "Reversed")
	
	" filter out empty elements: len([]) returns 0 (false)
	" function(myfunc) is used to store myfunc in a variable or to pass it
	" as an argument to another function
	let mylist = [[1, 2], [], ['foo'], []]
	echo "mylist: " mylist
	echo "Filtered:len: " Filtered(mylist, function('len'))

	" filter out non-empty elements: len([xyz]) returns 1 (true)
	" function(myfunc) is used to store myfunc in a variable or to pass it
	" as an argument to another function
	let mylist = [[1, 2], [], ['foo'], []]
	echo "mylist: " mylist
	echo "Removed:len: " Removed(mylist, function('len'))

endfunction
