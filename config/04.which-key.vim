let g:vlime_leader = ","
nnoremap <silent> , :silent WhichKey ','<CR>

let g:which_key_use_floating_win = 1
let g:which_key_sep = '→'
let g:which_key_fallback_to_native_key = 1

let g:km_vlime = {}

let g:km_vlime['i'] = [',i'  , 'Vlime: Interaction Mode']
let g:km_vlime['l'] = [',l'  , 'Vlime: Load the current file']
let g:km_vlime['a'] = [',a'  , 'Vlime: Disassemble the form under the cursor']
let g:km_vlime['p'] = [',p'  , 'Vlime: Specify the package for the current buffer']
let g:km_vlime['b'] = [',b'  , 'Vlime: Set a breakpoint at entry to a function']
let g:km_vlime['t'] = [',t'  , 'Vlime: Show a list of the running threads']

let g:km_vlime['c'] = {
      \ 'name' : 'Vlime: Connection Management',
      \ 'c' : [',cc'              , 'Connect to Vlime server'],
      \ 's' : [',cs'              , 'Switch Vlime connections'],
      \ 'd' : [',cd'              , 'Disconnect'],
      \ 'R' : [',cR'              , 'Rename the current connection'],
      \ }
let g:km_vlime['r'] = {
      \ 'name' : 'Vlime: Server Management' ,
      \ 'r' : [',rr'              , 'Run a new Vlime server and connect to it'],
      \ 'v' : [',rv'              , 'View the console output of the current server'],
      \ 's' : [',rs'              , 'Stop the current server'],
      \ 'S' : [',rS'              , 'Show a list of Vlime servers and stop the chosen one'],
      \ 'R' : [',rR'              , 'Rename a server'],
      \ }
let g:km_vlime['s'] = {
      \ 'name' : 'Vlime: Sending Stuff To The REPL',
      \ 's' : [',ss'              , 'Send an atom or an s-expression under the cursor to the REPL'],
      \ 'e' : [',se'              , 'Send the s-expression under the cursor to the REPL'],
      \ 't' : [',st'              , 'Send the top-level s-expression under the cursor to the REPL'],
      \ 'a' : [',sa'              , 'Send the atom under the cursos to the REPL'],
      \ 'i' : [',si'              , 'Open an input buffer and compose a snippet to send to the REPL'],
      \ }
let g:km_vlime['m'] = {
      \ 'name' : 'Vlime: Expanding Macros',
      \ 'm' : [',mm'              , 'Expand the macro under the cursor'],
      \ '1' : [',m1'              , 'Expand the macro under the cursor once'],
      \ 'a' : [',ma'              , 'Expand the macro under the cursor and all nested macros'],
      \ }
let g:km_vlime['c'] = {
      \ 'name': 'Vlime: Compiling',
      \ 'e' : [',ce'              , 'Compile the form under the cursor'],
      \ 't' : [',ct'              , 'Compile the top-level form under the cursor'],
      \ 'f' : [',cf'              , 'Compile the current file'],
      \ }
let g:km_vlime['x'] = {
      \ 'name' : 'Vlime: Cross References (xref)',
      \ 'c' : [',xc'              , 'Show callers of the function under the cursor'],
      \ 'C' : [',xC'              , 'Show callees of the function under the cursor'],
      \ 'r' : [',xr'              , 'Show references of the variable under the cursor'],
      \ 'b' : [',xb'              , 'Show bindings of the variable under the cursor'],
      \ 's' : [',xs'              , 'Show who sets the value of the variable under the cursor'],
      \ 'e' : [',xe'              , 'Show who expands the macro under the cursor'],
      \ 'm' : [',xm'              , 'Show specialized methods for the class under the cursor'],
      \ 'd' : [',xd'              , 'Show the definition for the name under the cursor'],
      \ 'i' : [',xi'              , 'Interactively prompt for the symbol to search'],
      \ }
let g:km_vlime['d'] = {
      \ 'name' : 'Vlime: Describing Things',
      \ 'o' : [',do'              , 'Describe the "operator" of the s-expression under the cursor'],
      \ 'a' : [',da'              , 'Describe the atom under the cursor'],
      \ 'i' : [',di'              , 'Prompt for the symbol to describe'],
      \ 's' : [',ds'              , 'Apropos search'],
      \ 'd' : {
      \         'name' : 'Show the documentation',
      \         'o' : [',ddo'     , 'Show the documentation for the "operator" of the s-expression under the cursor'],
      \         'a' : [',dda'     , 'Show the documentation for the atom under the cursor'],
      \         'i' : [',ddi'     , 'Show the documentation for the symbol entered in an input buffer'],
      \       },
      \ 'r' : [',dr'              , 'Show the arglist for the s-expression under the cursor'],
      \ }
let g:km_vlime['u'] = {
      \ 'name' : 'Vlime: Undefining Things',
      \ 'f' : [',uf'              , 'Undefine the function under the cursor'],
      \ 's' : [',us'              , 'Unintern the symbol under the cursor'],
      \ 'i' : [',ui'              , 'Interactively prompt for the function/symbol to undefine/unintern'],
      \ }
let g:km_vlime['I'] = {
      \ 'name' : 'Vlime: Inspection',
      \ 'I' : [',II'              , 'Evaluate an s-expression or an atom under the cursor'],
      \ 'i' : [',Ii'              , 'Same as \II'],
      \ 'E' : [',IE'              , 'Evaluate and inspect the s-expression under the cursor'],
      \ 'e' : [',Ie'              , 'Same as \IE'],
      \ 'T' : [',IT'              , 'Evaluate and inspect the top-level s-expression under the cursor'],
      \ 't' : [',It'              , 'Same as \IT'],
      \ 'A' : [',IA'              , 'Evaluate and inspect the atom under the cursor'],
      \ 'a' : [',Ia'              , 'Same as \Ia'],
      \ 'N' : [',IN'              , 'Prompt for the expression to inspect'],
      \ 'n' : [',In'              , 'Same as \IN'],
      \ }
let g:km_vlime['T'] = {
      \ 'name' : 'Vlime: Invoking The Trace Dialog',
      \ 'D' : [',TD'              , 'Show the trace dialog'],
      \ 'd' : [',Td'              , 'Same as \TD'],
      \ 'T' : [',TT'              , 'Toggle the traced state of the function name under the cursor'],
      \ 't' : [',Tt'              , 'Same as \TT'],
      \ 'I' : [',TI'              , 'Show an input buffer, and prompt for the name of the function to be traced'],
      \ 'i' : [',Ti'              , 'Same as \TI'],
      \ }
let g:km_vlime['w'] = {
      \ 'name': 'Vlime: Closing Windows',
      \ 'p' : [',wp'              , 'Close all visible preview windows'],
      \ 'r' : [',wr'              , 'Close all visible arglist windows'],
      \ 'n' : [',wn'              , 'Close all visible compiler notes windows'],
      \ 'R' : [',wR'              , 'Close all visible REPL windows'],
      \ 'A' : [',wA'              , 'Close all Vlime windows'],
      \ 'l' : [',wl'              , 'Show a list of visible Vlime windows, and choose which to close'],
      \ }


autocmd FileType lisp call which_key#register(',', 'g:km_vlime')
