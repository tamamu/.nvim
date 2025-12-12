
vim.opt.number = true
vim.opt.relativenumber = true
-- clipboard
vim.api.nvim_set_option('clipboard', 'unnamedplus')
-- mouse
vim.opt.mouse = 'a'
vim.opt.title = true
vim.opt.titleold = 'irispad'
vim.opt.showmatch = true
vim.opt.expandtab = true
vim.opt.updatetime = 300
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.virtualedit = 'all'
vim.opt.laststatus = 3
vim.wo.wrap = false


-- leader
vim.g.mapleader = ' '

-- Enable true color
if vim.fn.exists('+termguicolors') == 1 then
	vim.opt.termguicolors = true
end

-- IMOKURI/line-number-interval.nvim
vim.g.line_number_interval_enable_at_startup = 1
-- vim.cmd [[highlight HighlightedLineNr guifg=White ctermfg=7]]
-- vim.cmd [[highlight DimLineNr guifg=Gray ctermfg=5]]

vim.cmd [[autocmd BufWritePost plugins.lua PackerCompile]]
vim.cmd [[autocmd TermOpen * setlocal nonumber norelativenumber]]
vim.cmd [[autocmd BufLeave * setlocal nonumber norelativenumber]]
---- below settings blocks shade.nvim
-- vim.cmd [[autocmd WinEnter * if &buftype == 'terminal' | setlocal nonumber norelativenumber]]
-- vim.cmd [[autocmd WinLeave * if &buftype == 'terminal' | setlocal nonumber norelativenumber]]
-- vim.cmd [[autocmd WinEnter * if &filetype == 'neo-tree' | setlocal nonumber norelativenumber]]
-- vim.cmd [[autocmd WinLeave * if &filetype == 'neo-tree' | setlocal nonumber norelativenumber]]

require 'impatient'

require 'plugins'

-- vim.cmd[[colorscheme nordfox]]
vim.cmd.colorscheme "catppuccin"

-- vim.g.accent_colour = 'magenta'
-- vim.cmd.colorscheme "accent"

require('toggleterm').setup()


require'mapx'.setup{
  global = true,
  whichkey = true
}

-- cursor moving for dvorak
noremap('h', 'h')
noremap('t', 'j')
noremap('n', 'k')
vim.api.nvim_set_keymap('n', 't', '<Plug>(accelerated_jk_gj)', {})
vim.api.nvim_set_keymap('n', 'n', '<Plug>(accelerated_jk_gk)', {})
noremap('s', 'l')
noremap('H', '^')
-- scroll a screen when cursor on the edge
noremap('T', [[getcurpos()[1]-line("w0")+1==winheight(winnr()) ? "<C-f>" : "L"]], 'expr')
noremap('N', [[getcurpos()[1]==line("w0") ? "<C-b>" : "H"]], 'expr')
noremap('S', '$')
noremap('l', ':HopChar1<CR>')


-- scroll
--nnoremap('<ScrollWheelUp>', '<C-y>')
--nnoremap('<ScrollWheelDown>', '<C-e>')
nnoremap('<ScrollWheelLeft>', 'zl')
nnoremap('<ScrollWheelRight>', 'zh')

neoscroll = require('neoscroll')
local t = {}
t['<ScrollWheelUp>'] = function() neoscroll.scroll(-0.5, { move_cursor=false, duration=100 }) end;
t['<ScrollWheelDown>'] = function() neoscroll.scroll(0.5, { move_cursor=false, duration=100 }) end;
local modes = { 'n', 'v', 'x' }
for key, func in pairs(t) do
  vim.keymap.set(modes, key, func)
end

-- vim-visual-multi
nnoremap('<C-d>', ':VMSearch!<cr>')

-- cmdline
nnoremap(';', '<cmd>FineCmdline<cr>')
-- searchbox
nnoremap('/', '<cmd>SearchBoxIncSearch<cr>')

-- reload settings
map('<leader>r', ':source ~/.config/nvim/init.lua<CR> :lua require("notify")("Reloaded neovim settings file now")<CR>')

-- escape
inoremap('<C-h>', '<esc>')
vnoremap('<C-h>', '<esc>')

-- find files under the current directory
nnoremap({"<C-f><C-f>", "<C-f>f"}, ":lua require('telescope.builtin').find_files()<Cr>", "silent")

-- find buffers
nnoremap({'<C-f><C-t>', '<C-f>t'}, ':Telescope buffers<cr>')

-- grep
nnoremap({'<C-f><C-g>', '<C-f>g'}, ':Telescope live_grep<cr>')

-- note
nnoremap({'<C-f><C-n>', '<C-f>n'}, ':Telekasten find_notes<cr>')
nnoremap({'<C-f><C-s>', '<C-f>s'}, ':Telekasten search_notes<cr>')
nnoremap('<F8>', ':Telekasten new_note<cr>')


-- cursor moving in input mode
inoremap('<s-left>', '<esc>^i')
inoremap('<s-right>', '<esc>$a')

-- move between candidates
nnoremap('m', 'n')
nnoremap('M', 'N')

-- mark
nnoremap('..', '<Plug>(Marks-toggle)')

-- turn off highlight
nnoremap('<esc><esc>', ':noh<CR>')

-- disable cursor moving by arrow keys
nnoremap('<left>', '<Nop>')
nnoremap('<up>', '<Nop>')
nnoremap('<down>', '<Nop>')
nnoremap('<right>', '<Nop>')

-- disable Ex mode
nnoremap('Q', '<Nop>')

-- pane
nnoremap('<leader>|', ':<C-u>vs<CR>')
nnoremap('<leader>-', ':<C-u>sp<CR>')
nnoremap('<leader>q', ':Bdelete<CR>')
nnoremap('<C-h>', '<C-w>h')
nnoremap('<C-t>', '<C-w>j')
nnoremap('<C-n>', '<C-w>k')
nnoremap('<C-s>', '<C-w>l')

-- tab
nnoremap('<leader>t', ':<C-u>tabnew<CR>')
nnoremap('<M-h>', ':BufferPrevious<CR>', 'silent')
nnoremap('<M-s>', ':BufferNext<CR>', 'silent')
nnoremap('<C-p>', ':BufferPin<CR>', 'silent')

-- ファイルツリー
noremap('<F10>', ':Neotree filesystem reveal left<CR>')
noremap('<F9>', ':Neotree filesystem reveal left toggle<CR>')
-- close vim if only window left is nerdtree
--vim.cmd [[autocmd bufenter * if (winnr("$") == 1 && exists("b:neo_tree") && b:NERDTree.isTabTree()) | q | endif]]

-- do not save a removed character in register
nnoremap('x', '"_x')

-- select all
nnoremap('<C-a>', 'ggVG')

-- paste
nnoremap('<expr><silent> p', "getregtype() ==# 'V' ? 'p' : 'P'")
nnoremap('<expr><silent> P', "getregtype() ==# 'V' ? 'P' : 'p'")

-- Newline
nnoremap('O', ":<C-u>call append(expand('.'), '')<Cr>j")
inoremap('<C-o>', '<C-g>j')

-- open terminal
nnoremap('~', ':ToggleTerm<CR>')

-- terminal
tnoremap('<C-h>', [[<C-\><C-n>]])
-- tnoremap('<C-j>', [[<C-\><C-n>]])
-- tnoremap('<C-h>', [[<C-\><C-n><C-w>h]])
-- tnoremap('<C-t>', [[<C-\><C-n><C-w>j]])
-- tnoremap('<C-n>', [[<C-\><C-n><C-w>k]])
-- tnoremap('<C-s>', [[<C-\><C-n><C-w>l]])
-- tnoremap(",,", [[<C-\><C-n>]], 'silent')

-- twilight
nnoremap('--', ':Twilight<cr>')

-- fine-cmdline
nnoremap(':', '<cmd>FineCmdline<cr>')

-- comment
nnoremap('<leader>c<leader>', '<Plug>(comment_toggle_linewise_current)')
vnoremap('<leader>c<leader>', '<Plug>(comment_toggle_linewise_visual)')

-- emoji selector
inoremap('<C-e>', '<CMD>lua require"telescope.builtin".symbols{ sources = {"emoji"} }<CR>')


-- vlime
vim.g.maplocalleader = ','
nnoremap('<LocalLeader>rr', ':call VlimeStart()<cr>')
vim.cmd([[
  let g:vlime_cl_impl = "mondo"
  let g:vlime_cl_use_terminal = v:true
  function! VlimeBuildServerCommandFor_mondo(vlime_loader, vlime_eval)
      return ["mondo", "--server", "vlime"]
  endfunction

  function! VlimeStart()
      call vlime#server#New(v:true, get(g:, "vlime_cl_use_terminal", v:false))
  endfunction
]])
local Terminal = require('toggleterm.terminal').Terminal
local mondo_term = Terminal:new({
  cmd = "mondo --server vlime",
  direction = "float",
  float_opts = {}
})
-- vim.cmd([[autocmd WinEnter * if &filetype == 'vlime_arglist' | call nvim_win_set_config(win_getid(), {'relative': 'cursor', 'width': 30, 'height': 4, 'row': 1, 'col': 1})]])


require('lualine').setup {
  options = {
    globalstatus = true,
  },
  -- sections = {lualine_c = {require('auto-session-library').current_session_name}}
}

local home = vim.fn.expand("~/Internxt/zettelkasten")
require('telekasten').setup{
  home = home,
  image_subdir = 'img',
  extension = '.md',
  dailies = home .. '/' .. 'daily',
  weeklies = home .. '/' .. 'weekly',
  templates = home .. '/' .. 'templates',
  command_palette_theme = 'dropdown',
}
