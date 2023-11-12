function! zepl#contrib#bracketedpaste#formatter(lines)
	if exists('&t_PS') && exists('&t_PE') && !empty(&t_PS) && !empty(&t_PE)
		return &t_PS . trim(join(a:lines, "\<CR>")) . &t_PE . "\<CR>"
	else
		return zepl#generic_formatter(lines)
	endif
endfunction
