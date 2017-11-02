"- Keywords in radiation properties
syn match radiationFixedKeywords
      \ "^radiationModel
      \ \|^radiation"
hi link radiationFixedKeywords foam256_keyOnLeftSide

"- Keywords in radiation properties
syn keyword radiationKeywords
      \ solverFreq 
      \ absorptionEmissionModel
      \ scatterModel
      \ sootModel
      \ model1
hi link radiationKeywords foam256_keyOnLeftSide

"-
syn keyword radiationSpecialKey 
      \ noRadiation
      \ smoothing
      \ constantEmissivity
hi link radiationSpecialKey foam256_specialEntry

"- Radiation and absorption models
syn keyword radModels 
      \ P1
      \ P1
      \ fvDOM
      \ opaqueSolid
      \ viewFactor 
      \ constantAbsorptionEmission
      \ binaryAbsorptionEmission
      \ greyMeanAbsorptionEmission
      \ greyMeanSolidAbsorptionEmission
      \ wideBandAbsorptionEmission
hi link radModels foam256_keyOnRightSide

"- Radiation models coefficient dictionary
syn keyword radModelsCoeffDict
      \ constantAbsorptionEmissionCoeffs
      \ binaryAbsorptionEmissionCoeffs
      \ greyMeanAbsorptionEmissionCoeffs
      \ greyMeanSolidAbsorptionEmissionCoeffs
      \ wideBandAbsorptionEmissionCoeffs
      \ fvDOMCoeffs
      \ viewFactorCoeffs
hi link radModelsCoeffDict foam256_dictionary
