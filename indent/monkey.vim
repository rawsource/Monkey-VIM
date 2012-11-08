" Vim indent file
" Language:     Monkey
" Maintainer:   David Townsend <toonsend@gmail.com>
" Last Change:  2012 Nov 05

" :runtime indent/monkey.vim

" Only load this indent file when no other was loaded.
let b:did_indent = 1

setlocal indentexpr=MonkeyIndent()

" Only define the functions once.
if exists("*MonkeyIndent")
  finish
endif

function! s:GetPrevNonCommentLineNum(lnum)
  let lnum = prevnonblank(a:lnum)
  let line = getline(lnum)
  " continue to search above if the current line begins with a '%'
  while line =~# '^\s*''.*$' || line=~# '^\s*#rem.*$'
    let lnum = prevnonblank(lnum - 1)
    if 0 == lnum
      return 0
    endif
    let line = getline(lnum)
  endwhile
  return lnum
endfunction

function! IsBlockStart(line)
  return(a:line =~ '^\s*\<\(Class\|Method\|Function\|For\|If\|Case\)\>')
endfunction

function! IsBlockEnd(line)
  return(a:line =~ '^\s*\<\(End\|Endif\|Next\|Case\)\>')
endfunction

function! MonkeyIndent()
  let prev_non_blank = prevnonblank(v:lnum - 1)

  " Hit the start of the file, use zero indent.
  if prev_non_blank == 0
    return 0
  endif

  let prev_non_blank_comment = s:GetPrevNonCommentLineNum(prev_non_blank)
  let prevline = getline(prev_non_blank_comment)
  let currline = getline(v:lnum)
  let indnt = indent(prev_non_blank_comment)

  if IsBlockEnd(currline) && !IsBlockStart(prevline)
    return indnt - &shiftwidth
  endif

  if IsBlockStart(prevline) && !IsBlockEnd(currline)
    return indnt + &shiftwidth
  endif

  return indnt
endfunction
