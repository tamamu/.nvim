let g:asciidoctor_executable = 'asciidoctor-latex -b html'
let g:asciidoctor_pdf_executable = 'asciidoctor-pdf'
let g:asciidoctor_fenced_languages = ['python', 'cpp', 'javascript', 'typescript', 'rust']

autocmd FileType asciidoctor :call SetPaperColor()
function! SetPaperColor()
  let g:lightline['colorscheme']='PaperColor'
  set background=light
  Tcolorscheme PaperColor
  set wrap
endfunction
