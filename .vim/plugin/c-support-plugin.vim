
" author
" CAuthor()
function! CAuthor()
	let row = search('Author:', 'n')
	if (row != 0)
		call setline (row, ' *         Author:  ' . g:c_author . '() , ' . g:c_email)
	endif
endfunction

" company
" CCompany()
function! CCompany()
	let row = search('Company:', 'n')
	if (row != 0)
		call setline (row, ' *        Company:  ' . g:c_company)
	endif
endfunction

" do update head info
if has("autocmd")
	autocmd BufNewFile *.c,*.h,*.cpp,*.cxx,*.cc,*.hxx call CAuthor()
	autocmd BufNewFile *.c,*.h,*.cpp,*.cxx,*.cc,*.hxx call CCompany() 
endif
