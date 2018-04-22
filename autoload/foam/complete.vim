function! foam#complete#omnifunc(findstart, base) " {{{1
  if a:findstart
    if exists('s:completer') | unlet s:completer | endif

    let l:pos  = col('.') - 1
    let l:line = getline('.')[:l:pos-1]
    for l:completer in s:completers
      if !get(l:completer, 'enabled', 1) | continue | endif

      for l:pattern in l:completer.patterns
        if l:line =~# l:pattern
          let s:completer = l:completer
          return s:completer.context(l:line, l:pos)
        endif
      endfor
    endfor
    return -3
  else
    if !exists('s:completer') | return [] | endif

    return s:completer.complete(a:base)
  endif
endfunction

" }}}1


let s:completer_key = {
      \ 'patterns' : [
      \   '^\w*$',
      \ ],
      \}
function! s:completer_key.context(line, pos) dict abort " {{{1
  return 0
endfunction

function! s:completer_key.complete(regex) dict abort " {{{1
  return filter(self.gather_candidates(), 'v:val.word =~? ''^'' . a:regex')
endfunction

function! s:completer_key.gather_candidates() dict abort " {{{1
  let [l:folder, l:file] = split(expand('%:p'), '/')[-2:]

  return map(foam#case#get_keys(folder, file), '{
        \ ''word'' : v:val,
        \ ''abbr'' : v:val,
        \ ''menu'' : '' [key]'',
        \}')
endfunction

" }}}1

let s:completer_keyval = {
      \ 'patterns' : [
      \   '^\w\+\s\+\w*$',
      \ ],
      \}
function! s:completer_keyval.context(line, pos) dict abort " {{{1
  let l:words = split(a:line)
  let self.key = l:words[0]

  return strlen(matchstr(a:line, '^\w*\s*'))
endfunction

function! s:completer_keyval.complete(regex) dict abort " {{{1
  return filter(self.gather_candidates(), 'v:val.word =~? ''^'' . a:regex')
endfunction

function! s:completer_keyval.gather_candidates() dict abort " {{{1
  let [l:folder, l:file] = split(expand('%:p'), '/')[-2:]

  return map(foam#case#get_values(folder, file, self.key), '{
        \ ''word'' : v:val,
        \ ''abbr'' : v:val,
        \ ''menu'' : '' [keyval]'',
        \}')
endfunction

" }}}1


" {{{1 Initialize module

let s:completers = map(
      \ filter(items(s:), 'v:val[0] =~# ''^completer_'''),
      \ 'v:val[1]')

let g:foam#complete#re_refresh_ncm = [
      \ '^[A-Za-z]+\s+[A-Za-z]*',
      \ '^[A-Za-z]*',
      \]

let g:foam#complete#re_refresh_deoplete = g:foam#complete#re_refresh_ncm

" }}}1
