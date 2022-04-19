set guifont=Fira\ Code:h12

for f in split(glob('~/.config/nvim/config/*.vim'), '\n')
  exe 'source' f
endfor

for f in split(glob('~/.config/nvim/user/*.vim'), '\n')
  exe 'source' f
endfor

for f in split(glob('~/.config/nvim/user/*.nvim'), '\n')
  exe 'source' f
endfor
