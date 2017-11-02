let s:fvOptions = {}

let s:fvOptions.keys = [
      \ 'active',
      \ 'field',
      \ 'schemesField',
      \ 'autoSchemes',
      \ 'nCorr',
      \ 'resetOnStartUp',
      \ 'selectionMode',
      \ 'volumeMode',
      \ 'injectionRateSuSp',
      \]

let s:fvOptions.dicts = [
      \ 'functions',
      \ 'injectionRateSuSp',
      \ 'fvOptions',
      \ '\w\+Coeffs'
      \]

let s:fvOptions.values = [
      \ 'scalarTransport',
      \ 'outputTime',
      \ 'scalarSemiImplicitSource',
      \ 'points',
      \ 'specific',
      \ 'absolute',
      \]
