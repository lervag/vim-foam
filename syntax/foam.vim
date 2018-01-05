if exists('b:current_syntax')
  finish
endif

syntax region foamCommentLine start=/\/\// end=/\n/
syntax region foamCommentBlock start=/\/\*/ end=/\*\//

syntax region foamHeader start=/FoamFile/ end=/\}/
      \ contains=foamHeaderField
syntax match foamHeaderFieldKey '^\s\+\w\+'
      \ containedin=foamHeader
      \ nextgroup=foamHeaderFieldValue
syntax match foamHeaderFieldValue '\s\+\w\+'
      \ contained
      \ contains=foamNumber

syntax match foamNumber
      \ "-\=[0-9]\+\.\=[0-9]*-\=[eE]\=-\=[0-9]*\.\=[0-9]*"

syntax match foamOperators
      \ "+\|\*\|:\|,\|<\|>\|&\||\|!\|\~\|%\|=\|\.\|\[\|\]\|\""

syntax keyword foamBools
      \ true
      \ false
      \ TRUE
      \ FALSE
      \ yes
      \ no
      \ YES
      \ NO
      \ none
      \ NONE
      \ on
      \ off
      \ ON
      \ OFF

syntax keyword foamVariables
      \ nu
      \ nuInf
      \ nPhi
      \ n
      \ m
      \ nTheta
      \ Sf
      \ S
      \ nu0
      \ sigma
      \ E
      \ U
      \ p
      \ p_rgh
      \ k
      \ epsilon
      \ alpha
      \ beta
      \ omega
      \ nut
      \ mut
      \ mu
      \ nuTilda
      \ R
      \ rho
      \ rhok
      \ psi
      \ gamma
      \ phi
      \ p0
      \ T
      \ h
      \ phiU
      \ K
      \ sigmaS
      \ emissivity
      \ absorptivity
      \ Cp
      \ Hf
      \ kappa
      \ n0
      \ TRef
      \ C0
      \ K0
      \ Pr
      \ Prt
      \ DT
      \ phid
      \ phirb
      \ alpha
      \ thermo
      \ meshPhi
      \ pcorr
      \ b
      \ Su
      \ Xi
      \ ha
      \ hau
      \ Final
      \ Eff

syntax match foamVariables "[a-zA-Z\.]\+\(Final\|Eff\)\{1}"

syntax match foamUserDefVar "\$\{1}[A-Za-z0-9\-\_]\+"

syntax match foamIncluded "\#include\{1}\ \{1}"
syntax match foamIncludeFile
      \ "\"\{1}[A-Za-z]\+[A-Za-z0-9\_\-\/\.]*\"\{1}"

" {{{1 Default highlighting

highlight link foamCommentLine Comment
highlight link foamCommentBlock Comment
highlight link foamHeader Title
highlight link foamNumber Number
highlight link foamOperators Operator
highlight link foamBools Boolean
highlight link foamUserDefVar ModeMsg
highlight link foamInclude Include
highlight link foamIncludeFile Include
highlight link foamVariables Type
highlight link foamHeaderFieldKey Type
highlight link foamHeaderFieldValue Identifier

" }}}1

let b:current_syntax = 'foam'
