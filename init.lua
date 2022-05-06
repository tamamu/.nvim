
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

vim.cmd [[autocmd BufWritePost plugins.lua PackerCompile]]
vim.cmd [[autocmd TermOpen * setlocal nonumber norelativenumber]]
vim.cmd [[autocmd WinEnter * if &buftype == 'terminal' | setlocal nonumber norelativenumber]]
vim.cmd [[autocmd WinLeave * if &buftype == 'terminal' | setlocal nonumber norelativenumber]]
vim.cmd [[autocmd WinEnter * if &filetype == 'neo-tree' | setlocal nonumber norelativenumber]]
vim.cmd [[autocmd WinLeave * if &filetype == 'neo-tree' | setlocal nonumber norelativenumber]]

require 'plugins'

require('toggleterm').setup()


require'mapx'.setup{
  global = true,
  whichkey = true
}

-- cursor moving for dvorak
noremap('h', 'h')
noremap('t', 'j')
noremap('n', 'k')
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

-- vim-visual-multi
nnoremap('<C-d>', ':VMSearch!<cr>')

-- cmdline
nnoremap(';', '<cmd>FineCmdline<cr>')
-- searchbox
nnoremap('/', '<cmd>SearchBoxIncSearch<cr>')

-- reload settings
map('<leader>r', ':source ~/.config/nvim/init.lua<CR>')

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
nnoremap('<C-H>', ':BufferPrevious<CR>', 'silent')
nnoremap('<C-S>', ':BufferNext<CR>', 'silent')
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
--nnoremap('<sp>cc', '<Plug>(comment_toggle_current_linewise)')
nnoremap('<leader>c<leader>', '<CMD>lua require("Comment.api").toggle_current_linewise()<CR>')
vnoremap('<leader>c<leader>', '<CMD>lua require("Comment.api").call("toggle_linewise_op")<CR>g@')

-- emoji selector
inoremap('<C-e>', '<CMD>lua require"telescope.builtin".symbols{ sources = {"emoji"} }<CR>')


-- vlime
nnoremap('<LocalLeader>rr', ':call VlimeStart()<cr>')
vim.cmd([[
  let g:vlime_cl_impl = "mondo"
  let g:vlime_cl_use_terminal = v:false
  function! VlimeBuildServerCommandFor_mondo(vlime_loader, vlime_eval)
      return ["mondo", "--server", "vlime"]
  endfunction

  function! VlimeStart()
      call vlime#server#New(v:true, get(g:, "vlime_cl_use_terminal", v:false))
  endfunction
]])


require('lualine').setup {
  options = {
    globalstatus = true,
  },
  sections = {lualine_c = {require('auto-session-library').current_session_name}}
}

-- require('bufferline').setup {
--   options = {
--     mode = "buffers", -- set to "tabs" to only show tabpages instead
--     close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
--     right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
--     left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
--     middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
--     -- NOTE: this plugin is designed with this icon in mind,
--     -- and so changing this is NOT recommended, this is intended
--     -- as an escape hatch for people who cannot bear it for whatever reason
--     indicator_icon = '▎',
--     buffer_close_icon = '',
--     modified_icon = '●',
--     close_icon = '',
--     left_trunc_marker = '',
--     right_trunc_marker = '',
--     --- name_formatter can be used to change the buffer's label in the bufferline.
--     --- Please note some names can/will break the
--     --- bufferline so use this at your discretion knowing that it has
--     --- some limitations that will *NOT* be fixed.
--     name_formatter = function(buf)  -- buf contains a "name", "path" and "bufnr"
--       -- remove extension from markdown files for example
--       if buf.name:match('%.md') then
--         return vim.fn.fnamemodify(buf.name, ':t:r')
--       end
--     end,
--     max_name_length = 18,
--     max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
--     tab_size = 18,
--     diagnostics = false,
--     diagnostics_update_in_insert = false,
--     diagnostics_indicator = function(count, level, diagnostics_dict, context)
--       return "("..count..")"
--     end,
--     -- NOTE: this will be called a lot so don't do any heavy processing here
--     custom_filter = function(buf_number, buf_numbers)
--       -- filter out filetypes you don't want to see
--       if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
--         return true
--       end
--       -- filter out by buffer name
--       if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
--         return true
--       end
--       -- filter out based on arbitrary rules
--       -- e.g. filter out vim wiki buffer from tabline in your work repo
--       if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
--         return true
--       end
--       -- filter out by it's index number in list (don't show first buffer)
--       if buf_numbers[1] ~= buf_number then
--         return true
--       end
--     end,
--     color_icons = true, -- whether or not to add the filetype icon highlights
--     show_buffer_icons = true, -- disable filetype icons for buffers
--     show_buffer_close_icons = true,
--     show_buffer_default_icon = false, -- whether or not an unrecognised filetype should show a default icon
--     show_close_icon = true,
--     show_tab_indicators = true,
--     persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
--     -- can also be a table containing 2 custom separators
--     -- [focused and unfocused]. eg: { '|', '|' }
--     enforce_regular_tabs = false,
--     always_show_bufferline = true,
--     sort_by = 'insert_at_end',
--   }
-- }

vim.g.bufferline = {
  -- Enable/disable animations
  animation = true,

  -- Enable/disable auto-hiding the tab bar when there is a single buffer
  auto_hide = false,

  -- Enable/disable current/total tabpages indicator (top right corner)
  tabpages = true,

  -- Enable/disable close button
  closable = true,

  -- Enables/disable clickable tabs
  --  - left-click: go to buffer
  --  - middle-click: delete buffer
  clickable = true,

  -- Excludes buffers from the tabline
  exclude_ft = {'javascript'},
  exclude_name = {'package.json'},

  -- Enable/disable icons
  -- if set to 'numbers', will show buffer index in the tabline
  -- if set to 'both', will show buffer index and icons in the tabline
  icons = true,

  -- If set, the icon color will follow its corresponding buffer
  -- highlight group. By default, the Buffer*Icon group is linked to the
  -- Buffer* group (see Highlighting below). Otherwise, it will take its
  -- default value as defined by devicons.
  icon_custom_colors = false,

  -- Configure icons on the bufferline.
  icon_separator_active = '▎',
  icon_separator_inactive = '▎',
  icon_close_tab = '',
  icon_close_tab_modified = '●',
  icon_pinned = '車',

  -- If true, new buffers will be inserted at the start/end of the list.
  -- Default is to insert after current buffer.
  insert_at_end = false,
  insert_at_start = false,

  -- Sets the maximum padding width with which to surround each tab
  maximum_padding = 1,

  -- Sets the maximum buffer name length.
  maximum_length = 30,

  -- If set, the letters for each buffer in buffer-pick mode will be
  -- assigned based on their name. Otherwise or in case all letters are
  -- already assigned, the behavior is to assign letters in order of
  -- usability (see order below)
  semantic_letters = true,

  -- New buffer letters are assigned in this order. This order is
  -- optimal for the qwerty keyboard layout but might need adjustement
  -- for other layouts.
  letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',

  -- Sets the name of unnamed buffers. By default format is "[Buffer X]"
  -- where X is the buffer number. But only a static string is accepted here.
  no_name_title = nil,
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
