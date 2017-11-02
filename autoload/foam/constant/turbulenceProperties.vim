syn keyword turbProperties 
      \ simulationType
highlight link turbProperties foam256_turbPropKey

syn match turbModel 
      \ " RASModel
      \\| LESModel
      \\| laminar"
highlight link turbModel foam256_turbPropModel
