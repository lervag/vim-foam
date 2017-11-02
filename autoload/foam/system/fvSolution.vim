"- All keywords which are on the left sid 
syntax keyword fvSolKeywordsLS 
      \ solver 
      \ preconditioner 
      \ tolerance 
      \ relTol 
      \ maxIter 
      \ smoother 
      \ cacheAgglomeration 
      \ nCellsInCoarsestLevel 
      \ agglomerator 
      \ mergeLevels 
      \ smoother 
      \ cacheAgglomeration 
      \ nCellsInCoarsestLevel 
      \ agglomerator 
      \ mergeLevels 
      \ momentumPredictor 
      \ nCorrectors 
      \ nNonOrthogonalCorrectors 
      \ nAlphaCorr 
      \ nAlphaSubCycles 
      \ cAlpha 
      \ pRefPoint 
      \ pRefCell 
      \ pRefValue 
      \ nPreSweeps 
      \ nPostSweeps 
      \ nSweeps 
      \ rhoMin 
      \ rhoMax 
      \ pMin 
      \ pMax 
      \ transonic 
      \ nFinestSweeps 
      \ turbOnFinalIterOnly 
      \ nOuterCorrectors 
      \ correctPhi

"- Solvers and preconditioner which can be used in FOAM
syntax keyword fvSolSolver 
      \ PCG 
      \ DIC 
      \ GAMG 
      \ GaussSeidel 
      \ dummy 
      \ faceAreaPair 
      \ DILU 
      \ PBiCG 
      \ smoothSolver 
      \ DICGaussSeidel 
      \ diagonal 
      \ PBiCCCG 
      \ PBiCICG 
      \ ICCG 
      \ FDIC 
      \ nonBlockingGaussSeidel 
      \ symGaussSeidel

"- Dictionarys in fvSolution file
syntax keyword fvSolDict 
      \ SIMPLE 
      \ PISO 
      \ PIMPLE 
      \ potentialFlow 
      \ relaxationFactors 
      \ solvers
      \ cache 
      \ residualControl 
      \ convergence 
      \ equations 
      \ fields
