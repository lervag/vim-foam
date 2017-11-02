"- Special behavior of specie mixture
syn match thermodynamicSpecie2
      \ " \=specie\{1} \=
      \\| \=mixture\{1} \="
hi link thermodynamicSpecie2 foam256_keyOnLeftSide

"- Special behavior of specie at the end
syn match thermodynamicSpecie1
      \ " \{1}specie\{1};\{1}"
hi link thermodynamicSpecie1 foam256_keyOnRightSide

"- Dictionarys (main)
syn match thermodynamicDict
      \ "^thermoType
      \\|^mixture"
hi link thermodynamicDict foam256_dictionary

"- Special keywords on the left side
syn keyword thermodynamicKeys
      \ thermo
      \ equationOfState
      \ energy
      \ thermodynamics
      \ transport
hi link thermodynamicKeys foam256_keyOnLeftSide

"- Thermodynamic models etc.
syn keyword thermodynamicSettings
      \ nMoles
      \ molWeight
      \ Tlow
      \ Tcommon
      \ Thigh
      \ highCpCoeffs
      \ lowCpCoeffs
      \ CpCoeffs
      \ muCoeffs
      \ kappaCoeffs
      \ rhoCoeffs
      \ psiThermo
      \ hePsiThermo
      \ pureMixture
      \ hConst
      \ heRhoThermo
      \ heSolidThermo
      \ constIso
      \ constAnIso
      \ exponential
      \ hExponential
      \ rhoConst
      \ rhoThermo
      \ perfectGas
      \ perfectFluid
      \ sensibleEnthalpy
      \ absolutEnthalpy
      \ sensibleInternalEnergy
      \ absolutInternalEnergy
      \ sutherland
      \ icoPolynomial
      \ hIcoPolynomial
      \ polynomial
      \ hPolynomial
      \ reactingMixture
      \ homogeneousMixture
      \ inhomogeneousMixture
      \ multiComponentMixture
      \ singleStepReactionMixture
      \ veryInhomogeneousMixture
      \ egrMixture
      \ janaf
      \ const
hi link thermodynamicSettings foam256_keyOnRightSide
