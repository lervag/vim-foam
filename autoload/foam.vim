function! foam#ftdetect() " {{{1
  if did_filetype()       
    return               
  endif

  if !empty(filter(getline(1, 15), "v:val =~# 'FoamFile'"))
    setfiletype foam
  endif
endfunction

" }}}1
function! foam#init() " {{{1
  let b:foam = {}
  let b:foam.type = s:get_foam_type()
endfunction

" }}}1

function! s:get_foam_type() " {{{1
  let types = {
        \ 'BC' : '\v%(' . join([
        \     ' h', ' T', ' U.*', 'alpha.*', 'cell.*',
        \     'epsilon', 'ft', 'fu', 'G', 'hTotal',
        \     'IDefault', 'k', 'kl', 'kt', 'mut',
        \     'nu.*', 'omega', 'p', 'p_rgh', 'phi',
        \     'point.*', 'Qr', 'rho', 'S', 'Su',
        \     'Theta.*', 'Tu.*', 'Xi.*'], '|') . ');',
        \ 'changeDictionaryDict' : 'changeDictionaryDict',
        \ 'thermophysicalProperties' : 'thermophysicalProperties',
        \ 'dynamicMeshDict' : 'dynamicMeshDict',
        \}
  
  for line in getline(1, 15)
    for [name, re] in items(types)
      if line =~# re
        return name
      endif
    endfor
  endfor

  return 'general'
endfunction

" }}}1
