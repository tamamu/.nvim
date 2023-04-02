vim.cmd [[packadd packer.nvim]]

return require('packer').startup({function()
  -- package manager: https://github.com/wbthomason/packer.nvim
  use 'wbthomason/packer.nvim'

  -- startup time optimization: https://github.com/lewis6991/impatient.nvim
  use 'lewis6991/impatient.nvim'

  -- which key: https://github.com/folke/which-key.nvim
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        plugins = {
          presets = {
            z = false,
          }
        }
      }
    end
  }

  -- key mapping manager: https://github.com/b0o/mapx.nvim
  use {
    'b0o/mapx.nvim',
    config = function()
    end
  }

  -- highlight trailing whitespace: https://github.com/bronson/vim-trailing-whitespace
  use 'bronson/vim-trailing-whitespace'

  -- show git mark on lines: https://github.com/lewis6991/gitsigns.nvim
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

  use {
    'chentoast/marks.nvim',
    config = function()
      require'marks'.setup{
        default_mappings = false,
      }
    end
  }

  -- scroll: https://github.com/karb94/neoscroll.nvim
  use {
    'karb94/neoscroll.nvim',
    config = function()
      local t = {}
      t['<ScrollWheelUp>'] = {'scroll', {'-0.5', 'false', '100'}}
      t['<ScrollWheelDown'] = {'scroll', {'0.5', 'false', '100'}}
      require('neoscroll.config').set_mappings(t)
      require('neoscroll').setup{
        mappings = {},
        cursor_scrolls_alone = false,
      }
    end
  }

  -- multiple cursors: https://github.com/mg979/vim-visual-multi
  use {
    'mg979/vim-visual-multi',
    branch = 'master',
    setup = function()
      vim.cmd([[
        let g:VM_maps = {}
        let g:VM_maps['Find Under'] = '<C-d>'
      ]])
    end
  }

  -- dims inactive portions: https://github.com/folke/twilight.nvim
  use {
    "folke/twilight.nvim",
    config = function()
      require("twilight").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- dims inactive windows: https://github.com/sunjon/Shade.nvim
  -- use {
  --   'sunjon/shade.nvim',
  --   config = function()
  --     require'shade'.setup{
  --       overlay_opacity = 30,
  --       toggle = '<leader>s'
  --     }
  --   end
  -- }

  -- fcitx integration: https://github.com/lilydjwg/fcitx.vim
  use {
    'lilydjwg/fcitx.vim'
  }

  -- Cmdline popup: https://github.com/VonHeikemen/fine-cmdline.nvim
  use {
    'VonHeikemen/fine-cmdline.nvim',
    requires = 'MunifTanjim/nui.nvim'
  }

  -- Searchbox: https://github.com/VonHeikemen/searchbox.nvim
  use {
    'VonHeikemen/searchbox.nvim',
    requires = {
      {'MunifTanjim/nui.nvim'}
    }
  }

  -- Find and Replace: https://github.com/brooth/far.vim
  use 'brooth/far.vim'

  -- devicons: https://github.com/nvim-tree/nvim-web-devicons
  use 'nvim-tree/nvim-web-devicons'

  -- status line: https://github.com/nvim-lualine/lualine.nvim
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- fancy notification: https://github.com/rcarriga/nvim-notify
  use {
    'rcarriga/nvim-notify',
    config = function()
      require('notify').setup{
        stages = 'slide'
      }
    end
  }

  -- command palette: https://github.com/mrjones2014/legendary.nvim
  use {
    'mrjones2014/legendary.nvim',
    tag = 'v2.1.0',
    config = function()
      require('legendary').setup()
    end
  }

  -- telescope image previewer for only linux: https://github.com/nvim-telescope/telescope-media-files.nvim
  use 'nvim-telescope/telescope-media-files.nvim'

  -- telescope emoji picker: https://github.com/nvim-telescope/telescope-symbols.nvim
  use 'nvim-telescope/telescope-symbols.nvim'


  -- calendar for telekasten: https://github.com/renerocksai/calendar-vim
  use 'renerocksai/calendar-vim'

  -- note taking: https://github.com/renerocksai/telekasten.nvim
  use {
    'renerocksai/telekasten.nvim'
  }

  -- -- tabline: https://github.com/akinsho/bufferline.nvim
  -- use {
  --   'akinsho/bufferline.nvim',
  --   tag = "*",
  --   requires = 'nvim-tree/nvim-web-devicons'
  -- }
  -- tabline: https://github.com/romgrk/barbar.nvim
  use {
    'romgrk/barbar.nvim',
    requires = {'nvim-web-devicons'},
    config = function()
      require'barbar'.setup {
        -- Enable/disable animations
        animation = true,

        -- Enable/disable auto-hiding the tab bar when there is a single buffer
        auto_hide = false,

        -- Enable/disable current/total tabpages indicator (top right corner)
        tabpages = true,

        -- Enables/disable clickable tabs
        --  - left-click: go to buffer
        --  - middle-click: delete buffer
        clickable = true,

        -- Excludes buffers from the tabline
        exclude_ft = {'javascript'},
        exclude_name = {'package.json'},

        -- A buffer to this direction will be focused (if it exists) when closing the current buffer.
        -- Valid options are 'left' (the default) and 'right'
        focus_on_close = 'left',

        -- Hide inactive buffers and file extensions. Other options are `alternate`, `current`, and `visible`.
        -- hide = {extensions = false, inactive = false},

        -- Disable highlighting alternate buffers
        highlight_alternate = false,

        -- Disable highlighting file icons in inactive buffers
        highlight_inactive_file_icons = false,

        -- Enable highlighting visible buffers
        highlight_visible = true,

        icons = {
          -- Configure the base icons on the bufferline.
          buffer_index = false,
          buffer_number = false,
          button = '',
          -- Enables / disables diagnostic symbols
          diagnostics = {
            [vim.diagnostic.severity.ERROR] = {enabled = true, icon = 'ﬀ'},
            [vim.diagnostic.severity.WARN] = {enabled = false},
            [vim.diagnostic.severity.INFO] = {enabled = false},
            [vim.diagnostic.severity.HINT] = {enabled = true},
          },
          filetype = {
            -- Sets the icon's highlight group.
            -- If false, will use nvim-web-devicons colors
            custom_colors = false,

            -- Requires `nvim-web-devicons` if `true`
            enabled = true,
          },
          separator = {left = '▎', right = ''},

          -- Configure the icons on the bufferline when modified or pinned.
          -- Supports all the base icon options.
          modified = {button = '●'},
          pinned = {button = '車'},

          -- Configure the icons on the bufferline based on the visibility of a buffer.
          -- Supports all the base icon options, plus `modified` and `pinned`.
          alternate = {filetype = {enabled = false}},
          current = {buffer_index = true},
          inactive = {button = '×'},
          visible = {modified = {buffer_number = false}},
        },

        -- If true, new buffers will be inserted at the start/end of the list.
        -- Default is to insert after current buffer.
        insert_at_end = false,
        insert_at_start = false,

        -- Sets the maximum padding width with which to surround each tab
        maximum_padding = 1,

        -- Sets the minimum padding width with which to surround each tab
        minimum_padding = 1,

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
    end
  }

  -- colorscheme: https://github.com/EdenEast/nightfox.nvim
  use {
    "EdenEast/nightfox.nvim",
    tag = "v1.0.0",
  }
  -- colorscheme: https://github.com/shaunsingh/moonlight.nvim
  use 'shaunsingh/moonlight.nvim'
  -- colorscheme: https://github.com/katawful/kat.nvim
  use 'katawful/kat.nvim'
  -- colorscheme: https://github.com/catppuccin/nvim
  use { "catppuccin/nvim", as = "catppuccin" }

  -- wakatime: https://github.com/wakatime/vim-wakatime
  use 'wakatime/vim-wakatime'

  -- auto session: https://github.com/rmagatti/auto-session
  use {
    'rmagatti/auto-session',
    config = function()
      vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"
      require('auto-session').setup {
        log_level = 'info',
        auto_session_suppress_dirs = {'~/'},
	auto_session_allowed_dirs = {'~/Projects/'},
	auto_session_use_git_branch = true,
      }
    end
  }

  -- terminal utility: https://github.com/akinsho/toggleterm.nvim
  use {
    'akinsho/toggleterm.nvim',
    config = function()
      require('toggleterm').setup{
        hide_numbers = true,
        start_in_insert = true,
        close_on_exit = true,
      }
    end
  }

  -- Neovim Lua utility: https://github.com/nvim-lua/plenary.nvim
  use 'nvim-lua/plenary.nvim'

  -- Popup API: https://github.com/nvim-lua/popup.nvim
  use 'nvim-lua/popup.nvim'

  -- UI Component: https://github.com/MunifTanjim/nui.nvim
  use 'MunifTanjim/nui.nvim'

  -- file manager: https://github.com/nvim-neo-tree/neo-tree.nvim
  use {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    config = function()
      vim.cmd([[
        let g:neo_tree_remove_legacy_commands = 1
      ]])
      require('neo-tree').setup {
        use_default_mappings = true,
        close_if_last_window = true,
        enable_git_status = true,
        mapping_options = {
          noremap = true,
          nowait = true,
        },
        filesystem = {
          window = {
            position = 'left',
            mappings = {
              ['<space>'] = {
                'toggle_node',
                nowait = false,
              },
              ['<2-LeftMouse>'] = 'open_tabnew',
              ['<cr>'] = 'open',
              ['a'] = 'add',
              ['A'] = 'add_directory',
              ['d'] = 'delete',
              ['r'] = 'rename',
              ['c'] = 'copy',
              ['m'] = 'move',
              ['R'] = 'refresh',
              ['S'] = 'open_split',
              ['s'] = 'open_vsplit',
              ['t'] = 'noop',
              -- disable 't' by modifying ~/.local/share/nvim/site/pack/packer/start/neo-tree.nvim/lua/neo-tree/defaults.lua
            }
          }
        }
      }
    end
  }

  -- highlight under the cursor: https://github.com/RRethy/vim-illuminate
  use {
    'RRethy/vim-illuminate',
    config = function()
      vim.cmd([[
        let g:Illuminate_delay = 100
      ]])
    end
  }
  -- manual word highlighter: https://github.com/t9md/vim-quickhl
  use 't9md/vim-quickhl'

  -- fuzzy finder: https://github.com/nvim-telescope/telescope.nvim
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-telescope/telescope-media-files.nvim' },
    config = function()
      require('telescope').load_extension('media_files')
      require('telescope').setup{
        defaults = {
          previewer = true,
          file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
          grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
          layout_strategy = 'flex',
        }
      }
    end
  }

  -- vim.ui.select, vim.ui.input: https://github.com/stevearc/dressing.nvim
  use {
    'stevearc/dressing.nvim',
    config = function()
      require('dressing').setup({
      })
    end
  }

  -- pretty diagnostics, quickfix, etc: https://github.com/folke/trouble.nvim
  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- highlight todo comments: https://github.com/folke/todo-comments.nvim
  use {
    'folke/todo-comments.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- line highlight based on current mode: https://github.com/mvllow/modes.nvim
  use({
    'mvllow/modes.nvim',
    config = function()
      vim.opt.cursorline = true
      require('modes').setup()
    end
  })

  -- absolute number in insert mode: https://github.com/myusuf3/numbers.vim
  use 'myusuf3/numbers.vim'

  -- stylish UI components: https://github.com/sunjon/stylish.nvim
  use 'sunjon/stylish.nvim'

  -- sidebar: https://github.com/sidebar-nvim/sidebar.nvim
  use {
    'sidebar-nvim/sidebar.nvim',
    config = function()
      require('sidebar-nvim').setup {
        open = false,
      }
    end
  }

  -- customizable finder: https://github.com/kevinhwang91/nvim-hlslens
  use {
    'kevinhwang91/nvim-hlslens',
    config = function()
      require('hlslens').setup()
    end
  }

  -- scrollbar: https://github.com/dstein64/nvim-scrollview
  use {
    'dstein64/nvim-scrollview',
    config = function()
      require('scrollview').setup{
        excluded_filetypes = {'neo_tree'},
        current_only = false,
        winblend = 25
      }
    end
  }

  -- highlight line number: https://github.com/IMOKURI/line-number-interval.nvim
  -- use {
  --   'IMOKURI/line-number-interval.nvim'
  -- }

  -- dot repeat: https://github.com/tpope/vim-repeat
  use 'tpope/vim-repeat'

  -- w b motion on the line only: https://github.com/yutkat/wb-only-current-line.vim
  use 'yutkat/wb-only-current-line.vim'

  -- easy motion (customizable f-move): use 'ggandor/lightspeed.nvim'
  use 'ggandor/lightspeed.nvim'

  -- accelerated-jk: https://github.com/rainbowhxch/accelerated-jk.nvim
  use { 'rainbowhxch/accelerated-jk.nvim' }

  -- easymotion
  use {
    'phaazon/hop.nvim',
    branch = 'v1', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }

  -- highlight jumpable character in the line: https://github.com/unblevable/quick-scope
  use 'unblevable/quick-scope'


  -- clipboard manager: https://github.com/AckslD/nvim-neoclip.lua
  use {
    "AckslD/nvim-neoclip.lua",
    requires = 'nvim-telescope/telescope.nvim',
    config = function()
      require('neoclip').setup()
    end,
  }

  -- improved * motions: https://github.com/haya14busa/vim-asterisk
  use 'haya14busa/vim-asterisk'

  -- locking a buffer to a window: https://github.com/stevearc/stickybuf.nvim
  use {
    'stevearc/stickybuf.nvim',
    config = function()
        require('stickybuf').setup()
        vim.g.no_stickybuf_init = true
    end
  }

  -- -- delete buffer without fix window layout: https://github.com/famiu/bufdelete.nvim
  -- use 'famiu/bufdelete.nvim'

  -- close buffer: https://github.com/moll/vim-bbye
  use 'moll/vim-bbye'

  -- keep buffer proportion when resized window: https://github.com/kwkarlwang/bufresize.nvim
  use {
    "kwkarlwang/bufresize.nvim",
    config = function()
        require("bufresize").setup()
    end
  }

  -- better quickfix: https://github.com/kevinhwang91/nvim-bqf
  use {'kevinhwang91/nvim-bqf', ft = 'qf'}

  use {
    'p00f/nvim-ts-rainbow',
    requires = 'nvim-treesitter/nvim-treesitter',
    config = function()
      require('nvim-treesitter.configs').setup {
        rainbow = {
          enable = true,
          max_file_lines = 512,
        }
      }
    end
  }

  -- incremental parsing: https://github.com/nvim-treesitter/nvim-treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- cool header comment: https://github.com/LudoPinelli/comment-box.nvim
  use 'LudoPinelli/comment-box.nvim'

  -- smart comment: https://github.com/numToStr/Comment.nvim
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  -- highlight indent: https://github.com/lukas-reineke/indent-blankline.nvim
  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
        require("indent_blankline").setup {
          -- for example, context is off by default, use this to turn it on
          show_current_context = true,
          show_current_context_start = true,
        }
    end
  }

  -- sticky memo: https://github.com/kristijanhusak/line-notes.nvim
  use {
    'kristijanhusak/line-notes.nvim',
    config = function()
        require('line-notes').setup()
    end
  }

  -- Common Lisp REPL integration: https://github.com/vlime/vlime
  use 'vlime/vlime'

  use 'gpanders/nvim-parinfer'

end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}})
