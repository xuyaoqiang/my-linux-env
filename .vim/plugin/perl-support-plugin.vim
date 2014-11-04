
" author
" PlAuthor()
function! PlAuthor()
	let row = search('AUTHOR:', 'n')
	if (row != 0)
		call setline (row, '#       AUTHOR:  ' . g:perl_author . ' , ' . g:perl_email)
	endif
endfunction

" company
" PlCompany
function! PlCompany()
	let row = search('COMPANY:', 'n')
	if (row != 0)
		call setline (row, ' #      COMPANY:  ' . g:perl_company)
	endif
endfunction

" copyright
" PlCopyright
function! PlCopyright()
	let row = search('COMPANY:', 'n')
	if (row != 0)
		call setline (row, '#      COMPANY:  ' . g:perl_copyright)
	endif
endfunction
" do update head info
if has("autocmd")
	autocmd BufNewFile *.pl call PlAuthor()
	autocmd BufNewFile *.pl call PlCompany()
	autocmd BufNewFile *.pl call PlCopyright()
endif

