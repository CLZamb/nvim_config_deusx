vim.cmd[[
function s:asyncrun_floaterm_build(opts)
  let l:name = 'AsyncRunBuild'
  let l:bufnr = floaterm#terminal#get_bufnr(l:name)
  if l:bufnr == -1
    execute('FloatermNew --height=1.0 --width=0.5 --title=Build --position=topright --autoclose=0 --name=' . l:name . ' ' . a:opts.cmd)
  else
    execute('FloatermSend --name=' . l:name . ' ' . a:opts.cmd)
  endif
endfunction

function s:asyncrun_floaterm_run(opts)
  let l:name = 'AsyncRunRun'
  let l:bufnr = floaterm#terminal#get_bufnr(l:name)
  if l:bufnr == -1
    execute('FloatermNew --height=1.0 --width=0.7 --title=Run --position=topright --autoclose=0 --name=' . l:name . ' ' . a:opts.cmd)
  else
    execute('FloatermSend --name=' . l:name . ' ' . a:opts.cmd)
  endif
endfunction

function s:asyncrun_floaterm_tests(opts)
  let l:name = 'AsyncRunTests'
  let l:bufnr = floaterm#terminal#get_bufnr(l:name)
  if l:bufnr == -1
    execute('FloatermNew --height=1.0 --width=0.4 --title=Tests --position=topright --autoclose=0 --name=' . l:name . ' ' . a:opts.cmd)
  else
    execute('FloatermSend --name=' . l:name . ' ' . a:opts.cmd)
  endif
endfunction

let g:asyncrun_runner = get(g:, 'asyncrun_runner', {})
let g:asyncrun_runner.floaterm_build = function('s:asyncrun_floaterm_build')
let g:asyncrun_runner.floaterm_run = function('s:asyncrun_floaterm_run')
let g:asyncrun_runner.floaterm_tests = function('s:asyncrun_floaterm_tests')
let g:asynctasks_term_pos = 'floaterm'
]]
