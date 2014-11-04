" highlight syntax
" syntax enable
" template
" header template
let s:start_line = 1
function! BasicHeader()
	call setline(s:start_line, '/**')
	let s:start_line = s:start_line + 1
	call setline(s:start_line, ' * @file')
	let s:start_line = s:start_line + 1
	call setline(s:start_line, ' * @brief')
	let s:start_line = s:start_line + 1
	call setline(s:start_line, ' *')
	let s:start_line = s:start_line + 1
	call setline(s:start_line, ' * @author')
	let s:start_line = s:start_line + 1
	call setline(s:start_line, ' * @date')
	let s:start_line = s:start_line + 1
	call setline(s:start_line, ' * @version')
	let s:start_line = s:start_line + 1
	call setline(s:start_line, ' */')
	let s:start_line = s:start_line + 1
	call setline(s:start_line, '')
	let s:start_line = s:start_line + 1
	call setline(s:start_line, '')
endfunction

function! Filename()
	let row = search('@file', 'n')
	if (row != 0)
		call setline (row, ' * @file ' . expand("%"))
	endif
endfunction

function! Author()
	let row = search('@author', 'n')
	let author = g:author . " <" . g:email . ">"
	if (row != 0)
		call setline (row, ' * @author ' . author)
	endif
endfunction

function! Date()
	let row = search('@date', 'n')
	let date = strftime('%Y-%m-%d %H:%M')
	if (row != 0)
		call setline (row, ' * @date ' . date)
	endif
endfunction

function! Version()
	let row = search('@version', 'n')
	if (row != 0)
		call setline (row, ' * @version ' . '0.0.0')
	endif
endfunction


function! UpdateHeader()
	call BasicHeader()
	call Filename()
	call Author()
	call Date()
	call Version()
endfunction


if has("autocmd")
	nmap <leader>ch :call UpdateHeader()<cr>	
endif
