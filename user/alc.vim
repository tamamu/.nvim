"
" Required:
" $ pip3 install bs4
"

function! s:alc()
python3 << EOF

import os
import tempfile
import urllib.request
import urllib.parse
import bs4
import vim

def parseli(li):
    children = list(filter(lambda e: not isinstance(e, str), li.children))
    midashi = li.select('.midashi')
    if not midashi:
        midashi = li.select('.midashi_je')
        if not midashi:
            return None
    midashi = midashi[0].text
    yaku = children[1].text
    return midashi+':\n'+(''.join(map(lambda s: '\t\t'+s, yaku.split('\n'))))

def main():
    url = "https://eow.alc.co.jp/search?q="
    q = str(vim.eval('input("E<=>J: ")'))
    req = urllib.request.Request(url+'+'.join(map(urllib.parse.quote, q.split())))
    with urllib.request.urlopen(req) as res:
        body = res.read()
    soup = bs4.BeautifulSoup(body, 'html.parser')
    li = soup.select('#resultsList ul li')
    if not li:
        print('Not found')
        return
    if len(li) > 2:
        li.pop(1)
    text = '\n\n'.join(filter(None, map(parseli, li)))
    fd, path = tempfile.mkstemp(prefix='alc.vim.', text=True)
    with open(fd, 'w') as f:
        f.write(text)
    vim.command('split '+path)
    return

main()
EOF
endfunction

command! Alc :call s:alc()
