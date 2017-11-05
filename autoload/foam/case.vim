function! foam#case#get_keys(k1, k2) " {{{1
  return keys(get(get(deepcopy(g:foam#case), a:k1, {}), a:k2, {}))
endfunction

" }}}1
function! foam#case#get_values(k1, k2, k3) " {{{1
  return get(get(get(deepcopy(g:foam#case), a:k1, {}), a:k2, {}), a:k3, [])
endfunction

" }}}1

let s:bool = ['on', 'off', 'yes', 'no', 'true', 'false']


let g:foam#case = {}

let g:foam#case.system = {}

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
let g:foam#case.system.controlDict.deltaT = []
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
let g:foam#case.system.controlDict.runTimeModifiable = s:bool
let g:foam#case.system.controlDict.libs = []
let g:foam#case.system.controlDict.functions = []
