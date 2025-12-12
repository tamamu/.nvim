-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/cddadr/.cache/nvim/packer_hererocks/2.1.1764593432/share/lua/5.1/?.lua;/home/cddadr/.cache/nvim/packer_hererocks/2.1.1764593432/share/lua/5.1/?/init.lua;/home/cddadr/.cache/nvim/packer_hererocks/2.1.1764593432/lib/luarocks/rocks-5.1/?.lua;/home/cddadr/.cache/nvim/packer_hererocks/2.1.1764593432/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/cddadr/.cache/nvim/packer_hererocks/2.1.1764593432/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["accelerated-jk.nvim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/accelerated-jk.nvim",
    url = "https://github.com/rainbowhxch/accelerated-jk.nvim"
  },
  ["accent.vim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/accent.vim",
    url = "https://github.com/Alligator/accent.vim"
  },
  ["barbar.nvim"] = {
    config = { "\27LJ\2\n‚\t\0\0\a\0(\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0004\4\0\0166\5\t\0009\5\n\0059\5\v\0059\5\f\0055\6\r\0<\6\5\0046\5\t\0009\5\n\0059\5\v\0059\5\14\0055\6\15\0<\6\5\0046\5\t\0009\5\n\0059\5\v\0059\5\16\0055\6\17\0<\6\5\0046\5\t\0009\5\n\0059\5\v\0059\5\18\0055\6\19\0<\6\5\4=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\0035\4\30\0005\5\29\0=\5\22\4=\4\31\0035\4 \0=\4!\0035\4\"\0=\4#\0035\4%\0005\5$\0=\5\26\4=\4&\3=\3'\2B\0\2\1K\0\1\0\nicons\fvisible\1\0\1\rmodified\0\1\0\1\18buffer_number\1\rinactive\1\0\1\vbutton\aÃ—\fcurrent\1\0\1\17buffer_index\2\14alternate\1\0\1\rfiletype\0\1\0\1\fenabled\1\vpinned\1\0\1\vbutton\bï¤‚\rmodified\1\0\1\vbutton\bâ—\14separator\1\0\2\nright\5\tleft\bâ–Ž\rfiletype\1\0\2\18custom_colors\1\fenabled\2\16diagnostics\1\0\1\fenabled\2\tHINT\1\0\1\fenabled\1\tINFO\1\0\1\fenabled\1\tWARN\1\0\2\fenabled\2\ticon\bï¬€\nERROR\rseverity\15diagnostic\bvim\1\0\f\17buffer_index\1\vbutton\bï™•\14alternate\0\rinactive\0\fvisible\0\16diagnostics\0\fcurrent\0\rfiletype\0\18buffer_number\1\vpinned\0\rmodified\0\14separator\0\17exclude_name\1\2\0\0\17package.json\15exclude_ft\1\2\0\0\15javascript\1\0\19\17exclude_name\0\19focus_on_close\tleft\21semantic_letters\2\fletters:asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP\18no_name_title\0\nicons\0\22highlight_visible\2\"highlight_inactive_file_icons\1\24highlight_alternate\1\19maximum_length\3\30\20minimum_padding\3\1\20maximum_padding\3\1\20insert_at_start\1\18insert_at_end\1\15exclude_ft\0\14clickable\2\rtabpages\2\14auto_hide\1\14animation\2\nsetup\vbarbar\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["bufresize.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14bufresize\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/bufresize.nvim",
    url = "https://github.com/kwkarlwang/bufresize.nvim"
  },
  ["calendar-vim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/calendar-vim",
    url = "https://github.com/renerocksai/calendar-vim"
  },
  catppuccin = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["comment-box.nvim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/comment-box.nvim",
    url = "https://github.com/LudoPinelli/comment-box.nvim"
  },
  ["dressing.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rdressing\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["far.vim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/far.vim",
    url = "https://github.com/brooth/far.vim"
  },
  ["fcitx.vim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/fcitx.vim",
    url = "https://github.com/lilydjwg/fcitx.vim"
  },
  ["fine-cmdline.nvim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim",
    url = "https://github.com/VonHeikemen/fine-cmdline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\bibl\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["kat.nvim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/kat.nvim",
    url = "https://github.com/katawful/kat.nvim"
  },
  ["legendary.nvim"] = {
    config = { "\27LJ\2\nš\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\15extensions\1\0\1\15extensions\0\14which_key\1\0\1\18auto_register\2\1\0\2\14which_key\0\14nvim_tree\2\nsetup\14legendary\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/legendary.nvim",
    url = "https://github.com/mrjones2014/legendary.nvim"
  },
  ["lightspeed.nvim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/lightspeed.nvim",
    url = "https://github.com/ggandor/lightspeed.nvim"
  },
  ["line-notes.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15line-notes\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/line-notes.nvim",
    url = "https://github.com/kristijanhusak/line-notes.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mapx.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/mapx.nvim",
    url = "https://github.com/b0o/mapx.nvim"
  },
  ["marks.nvim"] = {
    config = { "\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\21default_mappings\1\nsetup\nmarks\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/marks.nvim",
    url = "https://github.com/chentoast/marks.nvim"
  },
  ["modes.nvim"] = {
    config = { "\27LJ\2\nV\0\0\3\0\6\0\n6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\3\0'\2\4\0B\0\2\0029\0\5\0B\0\1\1K\0\1\0\nsetup\nmodes\frequire\15cursorline\bopt\bvim\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/modes.nvim",
    url = "https://github.com/mvllow/modes.nvim"
  },
  ["moonlight.nvim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/moonlight.nvim",
    url = "https://github.com/shaunsingh/moonlight.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n©\4\0\0\a\0\17\0\0216\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\6\0005\3\a\0=\3\b\0025\3\14\0005\4\t\0005\5\v\0005\6\n\0=\6\f\5=\5\r\4=\4\15\3=\3\16\2B\0\2\1K\0\1\0\15filesystem\vwindow\1\0\1\vwindow\0\rmappings\f<space>\1\0\r\f<space>\0\6r\vrename\6t\tnoop\6s\16open_vsplit\6S\15open_split\6m\tmove\6a\badd\6d\vdelete\6A\18add_directory\t<cr>\topen\6c\tcopy\18<2-LeftMouse>\16open_tabnew\6R\frefresh\1\2\1\0\16toggle_node\vnowait\1\1\0\2\rmappings\0\rposition\tleft\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\5\25use_default_mappings\2\15filesystem\0\20mapping_options\0\22enable_git_status\2\25close_if_last_window\2\nsetup\rneo-tree\frequire=        let g:neo_tree_remove_legacy_commands = 1\n      \bcmd\bvim\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\no\0\0\4\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\2B\0\2\1K\0\1\0\rmappings\1\0\2\25cursor_scrolls_alone\1\rmappings\0\nsetup\14neoscroll\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["numbers.vim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/numbers.vim",
    url = "https://github.com/myusuf3/numbers.vim"
  },
  ["nvim-bqf"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/opt/nvim-bqf",
    url = "https://github.com/kevinhwang91/nvim-bqf"
  },
  ["nvim-hlslens"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fhlslens\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/nvim-hlslens",
    url = "https://github.com/kevinhwang91/nvim-hlslens"
  },
  ["nvim-neoclip.lua"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fneoclip\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/nvim-neoclip.lua",
    url = "https://github.com/AckslD/nvim-neoclip.lua"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\vstages\nslide\nsetup\vnotify\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-parinfer"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/nvim-parinfer",
    url = "https://github.com/gpanders/nvim-parinfer"
  },
  ["nvim-scrollview"] = {
    config = { "\27LJ\2\n”\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\23excluded_filetypes\1\0\3\23excluded_filetypes\0\rwinblend\3\25\17current_only\1\1\2\0\0\rneo_tree\nsetup\15scrollview\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/nvim-scrollview",
    url = "https://github.com/dstein64/nvim-scrollview"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    config = { "\27LJ\2\n‚\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\frainbow\1\0\1\frainbow\0\1\0\2\19max_file_lines\3€\4\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/quick-scope",
    url = "https://github.com/unblevable/quick-scope"
  },
  ["searchbox.nvim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/searchbox.nvim",
    url = "https://github.com/VonHeikemen/searchbox.nvim"
  },
  ["sidebar.nvim"] = {
    config = { "\27LJ\2\nG\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\topen\1\nsetup\17sidebar-nvim\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/sidebar.nvim",
    url = "https://github.com/sidebar-nvim/sidebar.nvim"
  },
  ["stickybuf.nvim"] = {
    config = { "\27LJ\2\n_\0\0\3\0\6\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0+\1\2\0=\1\5\0K\0\1\0\22no_stickybuf_init\6g\bvim\nsetup\14stickybuf\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/stickybuf.nvim",
    url = "https://github.com/stevearc/stickybuf.nvim"
  },
  ["stylish.nvim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/stylish.nvim",
    url = "https://github.com/sunjon/stylish.nvim"
  },
  ["telekasten.nvim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/telekasten.nvim",
    url = "https://github.com/renerocksai/telekasten.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim",
    url = "https://github.com/nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope-symbols.nvim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim",
    url = "https://github.com/nvim-telescope/telescope-symbols.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nØ\2\0\0\a\0\14\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0005\2\f\0005\3\5\0006\4\0\0'\6\6\0B\4\2\0029\4\a\0049\4\b\4=\4\t\0036\4\0\0'\6\6\0B\4\2\0029\4\n\0049\4\b\4=\4\v\3=\3\r\2B\0\2\1K\0\1\0\rdefaults\1\0\1\rdefaults\0\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\1\0\4\19grep_previewer\0\20layout_strategy\tflex\19file_previewer\0\14previewer\2\nsetup\16media_files\19load_extension\14telescope\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\nm\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\17hide_numbers\2\18close_on_exit\2\20start_in_insert\2\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["twilight.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rtwilight\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/twilight.nvim",
    url = "https://github.com/folke/twilight.nvim"
  },
  ["vim-asterisk"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/vim-asterisk",
    url = "https://github.com/haya14busa/vim-asterisk"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/vim-bbye",
    url = "https://github.com/moll/vim-bbye"
  },
  ["vim-illuminate"] = {
    config = { "\27LJ\2\nO\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0000        let g:Illuminate_delay = 100\n      \bcmd\bvim\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-quickhl"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/vim-quickhl",
    url = "https://github.com/t9md/vim-quickhl"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-trailing-whitespace"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/vim-trailing-whitespace",
    url = "https://github.com/bronson/vim-trailing-whitespace"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/opt/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/vim-wakatime",
    url = "https://github.com/wakatime/vim-wakatime"
  },
  vlime = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/vlime",
    url = "https://github.com/vlime/vlime"
  },
  ["wb-only-current-line.vim"] = {
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/wb-only-current-line.vim",
    url = "https://github.com/yutkat/wb-only-current-line.vim"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\ny\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\fplugins\1\0\1\fplugins\0\fpresets\1\0\1\fpresets\0\1\0\1\6z\1\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/cddadr/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: vim-visual-multi
time([[Setup for vim-visual-multi]], true)
try_loadstring("\27LJ\2\ns\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0T        let g:VM_maps = {}\n        let g:VM_maps['Find Under'] = '<C-d>'\n      \bcmd\bvim\0", "setup", "vim-visual-multi")
time([[Setup for vim-visual-multi]], false)
time([[packadd for vim-visual-multi]], true)
vim.cmd [[packadd vim-visual-multi]]
time([[packadd for vim-visual-multi]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\nm\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\17hide_numbers\2\18close_on_exit\2\20start_in_insert\2\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: legendary.nvim
time([[Config for legendary.nvim]], true)
try_loadstring("\27LJ\2\nš\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\15extensions\1\0\1\15extensions\0\14which_key\1\0\1\18auto_register\2\1\0\2\14which_key\0\14nvim_tree\2\nsetup\14legendary\frequire\0", "config", "legendary.nvim")
time([[Config for legendary.nvim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\vstages\nslide\nsetup\vnotify\frequire\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: nvim-ts-rainbow
time([[Config for nvim-ts-rainbow]], true)
try_loadstring("\27LJ\2\n‚\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\frainbow\1\0\1\frainbow\0\1\0\2\19max_file_lines\3€\4\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-ts-rainbow")
time([[Config for nvim-ts-rainbow]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\no\0\0\4\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\2B\0\2\1K\0\1\0\rmappings\1\0\2\25cursor_scrolls_alone\1\rmappings\0\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: line-notes.nvim
time([[Config for line-notes.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15line-notes\frequire\0", "config", "line-notes.nvim")
time([[Config for line-notes.nvim]], false)
-- Config for: nvim-hlslens
time([[Config for nvim-hlslens]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fhlslens\frequire\0", "config", "nvim-hlslens")
time([[Config for nvim-hlslens]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n©\4\0\0\a\0\17\0\0216\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\6\0005\3\a\0=\3\b\0025\3\14\0005\4\t\0005\5\v\0005\6\n\0=\6\f\5=\5\r\4=\4\15\3=\3\16\2B\0\2\1K\0\1\0\15filesystem\vwindow\1\0\1\vwindow\0\rmappings\f<space>\1\0\r\f<space>\0\6r\vrename\6t\tnoop\6s\16open_vsplit\6S\15open_split\6m\tmove\6a\badd\6d\vdelete\6A\18add_directory\t<cr>\topen\6c\tcopy\18<2-LeftMouse>\16open_tabnew\6R\frefresh\1\2\1\0\16toggle_node\vnowait\1\1\0\2\rmappings\0\rposition\tleft\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\5\25use_default_mappings\2\15filesystem\0\20mapping_options\0\22enable_git_status\2\25close_if_last_window\2\nsetup\rneo-tree\frequire=        let g:neo_tree_remove_legacy_commands = 1\n      \bcmd\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: nvim-scrollview
time([[Config for nvim-scrollview]], true)
try_loadstring("\27LJ\2\n”\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\23excluded_filetypes\1\0\3\23excluded_filetypes\0\rwinblend\3\25\17current_only\1\1\2\0\0\rneo_tree\nsetup\15scrollview\frequire\0", "config", "nvim-scrollview")
time([[Config for nvim-scrollview]], false)
-- Config for: mapx.nvim
time([[Config for mapx.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "mapx.nvim")
time([[Config for mapx.nvim]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: nvim-neoclip.lua
time([[Config for nvim-neoclip.lua]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fneoclip\frequire\0", "config", "nvim-neoclip.lua")
time([[Config for nvim-neoclip.lua]], false)
-- Config for: vim-illuminate
time([[Config for vim-illuminate]], true)
try_loadstring("\27LJ\2\nO\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0000        let g:Illuminate_delay = 100\n      \bcmd\bvim\0", "config", "vim-illuminate")
time([[Config for vim-illuminate]], false)
-- Config for: modes.nvim
time([[Config for modes.nvim]], true)
try_loadstring("\27LJ\2\nV\0\0\3\0\6\0\n6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\3\0'\2\4\0B\0\2\0029\0\5\0B\0\1\1K\0\1\0\nsetup\nmodes\frequire\15cursorline\bopt\bvim\0", "config", "modes.nvim")
time([[Config for modes.nvim]], false)
-- Config for: stickybuf.nvim
time([[Config for stickybuf.nvim]], true)
try_loadstring("\27LJ\2\n_\0\0\3\0\6\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0+\1\2\0=\1\5\0K\0\1\0\22no_stickybuf_init\6g\bvim\nsetup\14stickybuf\frequire\0", "config", "stickybuf.nvim")
time([[Config for stickybuf.nvim]], false)
-- Config for: bufresize.nvim
time([[Config for bufresize.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14bufresize\frequire\0", "config", "bufresize.nvim")
time([[Config for bufresize.nvim]], false)
-- Config for: marks.nvim
time([[Config for marks.nvim]], true)
try_loadstring("\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\21default_mappings\1\nsetup\nmarks\frequire\0", "config", "marks.nvim")
time([[Config for marks.nvim]], false)
-- Config for: sidebar.nvim
time([[Config for sidebar.nvim]], true)
try_loadstring("\27LJ\2\nG\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\topen\1\nsetup\17sidebar-nvim\frequire\0", "config", "sidebar.nvim")
time([[Config for sidebar.nvim]], false)
-- Config for: barbar.nvim
time([[Config for barbar.nvim]], true)
try_loadstring("\27LJ\2\n‚\t\0\0\a\0(\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0004\4\0\0166\5\t\0009\5\n\0059\5\v\0059\5\f\0055\6\r\0<\6\5\0046\5\t\0009\5\n\0059\5\v\0059\5\14\0055\6\15\0<\6\5\0046\5\t\0009\5\n\0059\5\v\0059\5\16\0055\6\17\0<\6\5\0046\5\t\0009\5\n\0059\5\v\0059\5\18\0055\6\19\0<\6\5\4=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\0035\4\30\0005\5\29\0=\5\22\4=\4\31\0035\4 \0=\4!\0035\4\"\0=\4#\0035\4%\0005\5$\0=\5\26\4=\4&\3=\3'\2B\0\2\1K\0\1\0\nicons\fvisible\1\0\1\rmodified\0\1\0\1\18buffer_number\1\rinactive\1\0\1\vbutton\aÃ—\fcurrent\1\0\1\17buffer_index\2\14alternate\1\0\1\rfiletype\0\1\0\1\fenabled\1\vpinned\1\0\1\vbutton\bï¤‚\rmodified\1\0\1\vbutton\bâ—\14separator\1\0\2\nright\5\tleft\bâ–Ž\rfiletype\1\0\2\18custom_colors\1\fenabled\2\16diagnostics\1\0\1\fenabled\2\tHINT\1\0\1\fenabled\1\tINFO\1\0\1\fenabled\1\tWARN\1\0\2\fenabled\2\ticon\bï¬€\nERROR\rseverity\15diagnostic\bvim\1\0\f\17buffer_index\1\vbutton\bï™•\14alternate\0\rinactive\0\fvisible\0\16diagnostics\0\fcurrent\0\rfiletype\0\18buffer_number\1\vpinned\0\rmodified\0\14separator\0\17exclude_name\1\2\0\0\17package.json\15exclude_ft\1\2\0\0\15javascript\1\0\19\17exclude_name\0\19focus_on_close\tleft\21semantic_letters\2\fletters:asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP\18no_name_title\0\nicons\0\22highlight_visible\2\"highlight_inactive_file_icons\1\24highlight_alternate\1\19maximum_length\3\30\20minimum_padding\3\1\20maximum_padding\3\1\20insert_at_start\1\18insert_at_end\1\15exclude_ft\0\14clickable\2\rtabpages\2\14auto_hide\1\14animation\2\nsetup\vbarbar\frequire\0", "config", "barbar.nvim")
time([[Config for barbar.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nØ\2\0\0\a\0\14\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0005\2\f\0005\3\5\0006\4\0\0'\6\6\0B\4\2\0029\4\a\0049\4\b\4=\4\t\0036\4\0\0'\6\6\0B\4\2\0029\4\n\0049\4\b\4=\4\v\3=\3\r\2B\0\2\1K\0\1\0\rdefaults\1\0\1\rdefaults\0\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\1\0\4\19grep_previewer\0\20layout_strategy\tflex\19file_previewer\0\14previewer\2\nsetup\16media_files\19load_extension\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\ny\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\fplugins\1\0\1\fplugins\0\fpresets\1\0\1\fpresets\0\1\0\1\6z\1\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: twilight.nvim
time([[Config for twilight.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rtwilight\frequire\0", "config", "twilight.nvim")
time([[Config for twilight.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\bibl\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: dressing.nvim
time([[Config for dressing.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rdressing\frequire\0", "config", "dressing.nvim")
time([[Config for dressing.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType qf ++once lua require("packer.load")({'nvim-bqf'}, { ft = "qf" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
