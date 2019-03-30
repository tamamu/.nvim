let g:asciidoctor_executable = 'asciidoctor-latex -b html'
let g:asciidoctor_pdf_executable = 'asciidoctor-pdf'
let g:asciidoctor_fenced_languages = ['python', 'cpp', 'javascript', 'typescript', 'rust']

autocmd FileType asciidoc :call SetPaperColor()
function! SetPaperColor()
  set background=light
  colorscheme PaperColor
  let g:lightline['colorscheme'] = 'PaperColor'
  set wrap
endfunction
