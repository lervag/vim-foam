function! foam#case#get_keys(k1, k2) " {{{1
  return keys(get(get(deepcopy(g:foam#case), a:k1, {}), a:k2, {}))
endfunction

" }}}1
function! foam#case#get_values(k1, k2, k3) " {{{1
  return get(get(get(deepcopy(g:foam#case), a:k1, {}), a:k2, {}), a:k3, [])
endfunction

" }}}1


" {{{1 Script local stuff

let s:bool = ['on', 'off', 'yes', 'no', 'true', 'false']

" }}}1


let g:foam#case = {}

" {{{1 system

let g:foam#case.system = {}

" {{{2 system/controlDict
"
" Values fetched from this documentation:
" https://cfd.direct/openfoam/user-guide/controlDict/#x18-1370004.3
"
let g:foam#case.system.controlDict = {}
let g:foam#case.system.controlDict.application = []
let g:foam#case.system.controlDict.startFrom = [
      \ 'firstTime',
      \ 'startTime',
      \ 'latestTime',
      \]
let g:foam#case.system.controlDict.startTime = []
let g:foam#case.system.controlDict.stopAt = [
      \ 'endTime',
      \ 'writeNow',
      \ 'noWriteNow',
      \ 'nextWrite',
      \]
let g:foam#case.system.controlDict.endTime = []
let g:foam#case.system.controlDict.deltaT = []
let g:foam#case.system.controlDict.maxDeltaT = []
let g:foam#case.system.controlDict.writeControl = [
      \ 'timeStep',
      \ 'runTime',
      \ 'adjustableRunTime',
      \ 'cpuTime',
      \ 'clockTime',
      \]
let g:foam#case.system.controlDict.writeInterval = []
let g:foam#case.system.controlDict.purgeWrite = []
let g:foam#case.system.controlDict.writeFormat = [
      \ 'ascii',
      \ 'binary',
      \]
let g:foam#case.system.controlDict.writePrecision = []
let g:foam#case.system.controlDict.writeCompression = s:bool
let g:foam#case.system.controlDict.timeFormat = [
      \ 'fixed',
      \ 'scientific',
      \ 'general',
      \]
let g:foam#case.system.controlDict.timePrecision = []
let g:foam#case.system.controlDict.graphFormat = [
      \ 'raw',
      \ 'gnuplot',
      \ 'xmgr',
      \ 'jplot',
      \]
let g:foam#case.system.controlDict.adjustTimeStep = s:bool
let g:foam#case.system.controlDict.maxCo = []
let g:foam#case.system.controlDict.maxAlphaCo = []
let g:foam#case.system.controlDict.runTimeModifiable = s:bool
let g:foam#case.system.controlDict.libs = []
let g:foam#case.system.controlDict.functions = []
let g:foam#case.system.controlDict.setFormat = []

" }}}2
" {{{2 system/fvSchemes
"
" Values fetched from this documentation:
" https://cfd.direct/openfoam/user-guide/fvSchemes/#x19-1410004.4
"
let g:foam#case.system.fvSchemes = {}
let g:foam#case.system.fvSchemes.ddtSchemes = {}
let g:foam#case.system.fvSchemes.ddtSchemes.default = [
      \ 'steadyState',
      \ 'Euler',
      \ 'backward',
      \ 'CrankNicolson',
      \ 'localEuler',
      \]

let g:foam#case.system.fvSchemes.d2dt2Schemes = {}
let g:foam#case.system.fvSchemes.d2dt2Schemes.default = [
      \ 'Euler',
      \]

let g:foam#case.system.fvSchemes.gradSchemes = {}
let g:foam#case.system.fvSchemes.gradSchemes.default = [
      \ 'Gauss linear',
      \ 'Gauss cubic',
      \ 'cellLimited Gauss linear 1',
      \ 'leastSquares',
      \]

let g:foam#case.system.fvSchemes.divSchemes = {}
let g:foam#case.system.fvSchemes.divSchemes.default = ['none']
let g:foam#case.system.fvSchemes.divSchemes.div = [
      \ 'Gauss linear',
      \ 'Gauss linearUpwind',
      \ 'Gauss LUST',
      \ 'Gauss limitedLinear',
      \ 'Gauss upwind',
      \ 'Gauss vanLeer',
      \ 'Gauss multivariateSelection',
      \]

let g:foam#case.system.fvSchemes.snGradSchemes = {}
let g:foam#case.system.fvSchemes.snGradSchemes.default = [
      \ 'corrected',
      \ 'limited corrected 0',
      \ 'limited corrected 0.33',
      \ 'limited corrected 0.5',
      \ 'limited corrected 1',
      \ 'orthogonal',
      \ 'uncorrected',
      \]

let g:foam#case.system.fvSchemes.laplacianSchemes = {}
let g:foam#case.system.fvSchemes.laplacianSchemes.default = [
      \ 'Gauss linear corrected',
      \ 'Gauss linear limited corrected 0',
      \ 'Gauss linear limited corrected 0.33',
      \ 'Gauss linear limited corrected 0.5',
      \ 'Gauss linear limited corrected 1',
      \ 'Gauss linear orthogonal',
      \ 'Gauss linear uncorrected',
      \]

let g:foam#case.system.fvSchemes.interpolationSchemes = {}
let g:foam#case.system.fvSchemes.interpolationSchemes.default = [
      \ 'linear',
      \ 'cubic',
      \]

" }}}2
" {{{2 system/fvOptions
"
" Values fetched from this documentation:
" ...
"

" let s:fvOptions.keys = [
"       \ 'active',
"       \ 'field',
"       \ 'schemesField',
"       \ 'autoSchemes',
"       \ 'nCorr',
"       \ 'resetOnStartUp',
"       \ 'selectionMode',
"       \ 'volumeMode',
"       \ 'injectionRateSuSp',
"       \]

" let s:fvOptions.dicts = [
"       \ 'functions',
"       \ 'injectionRateSuSp',
"       \ 'fvOptions',
"       \ '\w\+Coeffs'
"       \]

" let s:fvOptions.values = [
"       \ 'scalarTransport',
"       \ 'outputTime',
"       \ 'scalarSemiImplicitSource',
"       \ 'points',
"       \ 'specific',
"       \ 'absolute',
"       \]

" }}}2
" {{{2 system/fvSolution
"
" Values fetched from this documentation:
" ...
"

""- All keywords which are on the left sid 
"syntax keyword fvSolKeywordsLS 
"      \ solver 
"      \ preconditioner 
"      \ tolerance 
"      \ relTol 
"      \ maxIter 
"      \ smoother 
"      \ cacheAgglomeration 
"      \ nCellsInCoarsestLevel 
"      \ agglomerator 
"      \ mergeLevels 
"      \ smoother 
"      \ cacheAgglomeration 
"      \ nCellsInCoarsestLevel 
"      \ agglomerator 
"      \ mergeLevels 
"      \ momentumPredictor 
"      \ nCorrectors 
"      \ nNonOrthogonalCorrectors 
"      \ nAlphaCorr 
"      \ nAlphaSubCycles 
"      \ cAlpha 
"      \ pRefPoint 
"      \ pRefCell 
"      \ pRefValue 
"      \ nPreSweeps 
"      \ nPostSweeps 
"      \ nSweeps 
"      \ rhoMin 
"      \ rhoMax 
"      \ pMin 
"      \ pMax 
"      \ transonic 
"      \ nFinestSweeps 
"      \ turbOnFinalIterOnly 
"      \ nOuterCorrectors 
"      \ correctPhi

""- Solvers and preconditioner which can be used in FOAM
"syntax keyword fvSolSolver 
"      \ PCG 
"      \ DIC 
"      \ GAMG 
"      \ GaussSeidel 
"      \ dummy 
"      \ faceAreaPair 
"      \ DILU 
"      \ PBiCG 
"      \ smoothSolver 
"      \ DICGaussSeidel 
"      \ diagonal 
"      \ PBiCCCG 
"      \ PBiCICG 
"      \ ICCG 
"      \ FDIC 
"      \ nonBlockingGaussSeidel 
"      \ symGaussSeidel

""- Dictionarys in fvSolution file
"syntax keyword fvSolDict 
"      \ SIMPLE 
"      \ PISO 
"      \ PIMPLE 
"      \ potentialFlow 
"      \ relaxationFactors 
"      \ solvers
"      \ cache 
"      \ residualControl 
"      \ convergence 
"      \ equations 
"      \ fields

" }}}2
" {{{2 system/decomposePar
"
" Values fetched from this documentation:
" ...
"

""- Dictionary (coefficents) of method 
"syntax keyword decomposeCoeffs 
"      \ simpleCoeffs 
"      \ hierarchicalCoeffs 
"      \ manualCoeffs 
"      \ structuredCoeffs 
"      \ scotchCoeffs
"      \ multiLevelCoeffs
"      \ metisCoeffs
"      \ patches

""- Methods which can be used
"syntax keyword decomposeMet 
"      \ ptScotch 
"      \ scotch 
"      \ hierarchical 
"      \ simple 
"      \ metis 
"      \ processorWeights
"      \ structured 
"      \ manual
"      \ dsmcRhoNMean
"      \ multiLevel

" }}}2
" {{{2 system/snappyHexMeshDict
"
" Values fetched from this documentation:
" ...
"

""- keywords used on the left side
"syntax keyword sHMKeyword 
"      \ inGroups
"      \ file
"      \ refinementRegions 
"      \ refinementSurfaces 
"      \ maxLocalCells 
"      \ maxGlobalCells 
"      \ minRefinementCells 
"      \ nCellsBetweenLevels 
"      \ planarAngle 
"      \ locationInMesh 
"      \ allowFreeStandingZoneFaces 
"      \ nSmoothPatch 
"      \ tolerance 
"      \ nSolveIter 
"      \ nRelaxIter 
"      \ nFeatureSnapIter 
"      \ expansionRatio 
"      \ finalLayerThickness 
"      \ minThickness 
"      \ nGrow 
"      \ featureAngle 
"      \ nRelaxIter 
"      \ nSmoothSurfaceNormals 
"      \ features 
"      \ resolveFeatureAngle 
"      \ relativeSize 
"      \ relativeSizes 
"      \ nSmoothNormals 
"      \ nSmoothThickness 
"      \ maxFaceThicknessRatio 
"      \ maxThicknessToMedialRatio 
"      \ minMedianAxisAngle 
"      \ nBufferCellsNoExtrude 
"      \ nLayerIter 
"      \ nRelaxedIter 
"      \ maxNonOrtho 
"      \ maxBoundarySkewness 
"      \ maxInternalSkewness 
"      \ maxConcave 
"      \ minVol 
"      \ minTetQuality 
"      \ minArea 
"      \ minTwist 
"      \ minDeterminant 
"      \ minFaceWeight 
"      \ minVolRatio 
"      \ minTriangleTwist 
"      \ nSmoothScale 
"      \ errorReduction 
"      \ debug 
"      \ mergeTolerance 
"      \ maxLoadUnbalance 
"      \ mode 
"      \ type 
"      \ min 
"      \ max 
"      \ level 
"      \ levels 
"      \ nSurfaceLayers 
"      \ radius 
"      \ POV 
"      \ centre 
"      \ name 
"      \ faceZone 
"      \ cellZone 
"      \ cellZoneInside 
"      \ implicitFeatureSnap 
"      \ explicitFeatureSnap 
"      \ multiRegionFeatureSnap 
"      \ handleSnapProblems 
"      \ useTopologicalSnapDetection 
"      \ gapLevelIncrement 
"      \ faceType 
"      \ detectNearSurfacesSnap 
"      \ firstLayerThickness 
"      \ thickness 
"      \ minMedialAxisAngle 
"      \ nMedialAxisIter 
"      \ nSmoothDisplacement 
"      \ detectExtrusionIsland 
"      \ slipFeatureAngle 
"      \ additionalReporting 
"      \ maxTreeDepth 
"      \ minVolCollapseRatio

""- Keywords used in snappyHexMesh (right side)
"syntax keyword sHMType 
"      \ file 
"      \ inside 
"      \ outside 
"      \ distance 
"      \ closedTriSurfaceMesh 
"      \ distributedTriSurfaceMesh 
"      \ searchableBox 
"      \ searchableCylinder  
"      \ searchablePlane 
"      \ searchablePlate 
"      \ searchableSphere  
"      \ searchableSurfaceCollection 
"      \ searchableSurfaceWithGaps  
"      \ triSurfaceMesh 
"      \ patchInfo 
"      \ point1 
"      \ point2 
"      \ insidePoint 
"      \ layerSets 
"      \ layerFields 
"      \ layerInfo 
"      \ mesh 
"      \ intersections 
"      \ featureSeeds 
"      \ attraction 
"      \ scalarLevels 
"      \ searchableDisk
"      \ internal 
"      \ boundary
"      \ baffle 
"      \ patch
"      \ wall
"      \ mappedWall
"      \ cyclic
"      \ symmetryPlane
"      \ slip
"      \ empty
"      \ wedge
"highlight link sHMType foam256_sHMKeyOnRS

""- Dictionary used in snappyHexMesh
"syntax keyword sHMDict 
"      \ castellatedMesh 
"      \ snap 
"      \ addLayers 
"      \ addLayersControls 
"      \ castellatedMeshControls 
"      \ snapControls 
"      \ meshQualityControls 
"      \ relaxed 
"      \ region 
"      \ layers 
"      \ features 
"      \ refinementSurfaces 
"      \ refinementRegions 
"      \ geometry 
"      \ debugFlags 
"      \ writeFlags


" }}}2
" {{{2 system/setFieldsDict
"
" Values fetched from this documentation:
" https://cfd.direct/openfoam/user-guide/damBreak/#x7-520002.3
"
let g:foam#case.system.setFieldsDict = {}
let g:foam#case.system.setFieldsDict.defaultFieldValues = {}

" Special values
" - volScalarFieldValue 
" - volVectorFieldValue 
" - box

" Subdicts
" - defaultFieldValues 
" - fieldValues 
" - boxToCell 
" - regions 
" - boundaryToFace 
" - boxToCell 
" - boxToFace 
" - boxToPoint 
" - cellToCell 
" - cellToFace 
" - cellToPoint 
" - cylinderAnnulusToCell  
" - cylinderToCell 
" - faceToCell 
" - faceToFace  
" - faceToPoint 
" - faceZoneToCell  
" - faceZoneToFaceZone 
" - fieldToCell 
" - labelToCell 
" - labelToFace 
" - labelToPoint 
" - nbrToCell 
" - nearestToCell 
" - nearestToPoint 
" - normalToFace 
" - patchToFace 
" - pointToCell 
" - pointToFace 
" - pointToPoint 
" - regionToCell 
" - regionToFace 
" - rotatedBoxToCell 
" - setToCellZone 
" - setToFaceZone 
" - setToPointZone 
" - setsToFaceZone 
" - shapeToCell 
" - sphereToCell 
" - surfaceToCell 
" - surfaceToPoint 
" - targetVolumeToCell 
" - zoneToCell 
" - zoneToFace 
" - zoneToPoint

" }}}2
