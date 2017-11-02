"- Special keywords
syn keyword RASPropertiesSpecial
      \ printCoeffs 
      \ turbulence
highlight link RASPropertiesSpecial foam256_keyOnLeftSide

"- Modeltyp keyword
syn match PropertiesModelKey 
      \ "RAS"
highlight link PropertiesModelKey foam256_RASPropKey

"- Modeltyp keyword
syn match PropertiesModelKey 
      \ "laminar"
highlight link PropertiesModelKey foam256_RASPropKey

"- Modeltyp keyword
syn match PropertiesModelKey 
      \ "LES"
highlight link PropertiesModelKey foam256_RASPropKey

"- RASModels which are available 
syn keyword PropertiesModels 
      \ v2f
      \ realizableKE
      \ kkLOmega
      \ NonlinearKEShih    
      \ LaunderSharmaKE
      \ LaunderGibsonRSTM
      \ LamBremhorstKE
      \ kOmega 
      \ kOmegaSST 
      \ kEpsilon 
      \ qZeta 
      \ realizeableKE 
      \ SpalartAllmaras 
      \ RNGkEpsilon 
      \ NonelinearKEShih 
      \ LRR 
      \ LamBremhorsteKE 
      \ LounderGibsonRSTM 
      \ LounderSharmaKE 
      \ LienCubicKE 
      \ LienCubicKELowRe 
      \ LienLeschzinerLowRe
highlight link PropertiesModels foam256_RASModels
