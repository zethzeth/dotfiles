-- Install packer
local ensure_packer = function ()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

-- Initialize packer
require('packer').init({
  compile_path = vim.fn.stdpath('data')..'/site/plugin/packer_compiled.lua',
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'solid' })
    end,
  },
})



local use = require('packer').use

-- Packer can manage itself
use('wbthomason/packer.nvim')

-- Colorscheme
use({
  'jessarcher/onedark.nvim',
  config = function()
    vim.cmd('colorscheme onedark')

    -- Hide the characters in FloatBorder
    vim.api.nvim_set_hl(0, 'FloatBorder', {
      fg = vim.api.nvim_get_hl_by_name('NormalFloat', true).background,
      bg = vim.api.nvim_get_hl_by_name('NormalFloat', true).background,
    })

    -- Make the StatusLineNonText background the same as StatusLine
    vim.api.nvim_set_hl(0, 'StatusLineNonText', {
      fg = vim.api.nvim_get_hl_by_name('NonText', true).foreground,
      bg = vim.api.nvim_get_hl_by_name('StatusLine', true).background,
    })

    -- Hide the characters in CursorLineBg
    vim.api.nvim_set_hl(0, 'CursorLineBg', {
      fg = vim.api.nvim_get_hl_by_name('CursorLine', true).background,
      bg = vim.api.nvim_get_hl_by_name('CursorLine', true).background,
    })

    vim.api.nvim_set_hl(0, 'NvimTreeIndentMarker', { fg = '#30323E' })
    vim.api.nvim_set_hl(0, 'IndentBlanklineChar', { fg = '#2F313C' })
  end,
})

-- Opens in the root of the project (looking for .git or composer.json)
use({
  'airblade/vim-rooter',
  setup = function()
    vim.g.rooter_manual_only = 1
  end,
  config = function()
    vim.cmd('Rooter')
  end,
})

-- Navigate between tmux splits and vim splits 
-- use('christoomey/vim-tmux-navigator')
--
use('farmergreg/vim-lastplace')
use('tpope/vim-commentary')
use('tpope/vim-repeat')
use('tpope/vim-surround')
use('tpope/vim-eunuch') -- Adds :Rename, :SudoWrite
use('tpope/vim-sleuth') -- Indent autodetection with editorconfig support
use('nelstrom/vim-visual-star-search')
use('jessarcher/vim-heritage') -- Automatically create parent dirs when saving

-- Pairs ending bracket with opening one (and auto-close it)
use({
  'windwp/nvim-autopairs',
  config = function()
    require('nvim-autopairs').setup()
  end,
})

-- Soft scrolling (add animation)
use({
  'karb94/neoscroll.nvim',
  config = function()
    require('user.plugins.neoscroll') 
  end,
})


-- Splits arrays to their own line
-- g + S   = to split
-- g + J   = to join back up
use({
  'AndrewRadev/splitjoin.vim',
  config = function()
    require('user.plugins.splitjoin')
  end,
})

-- Fix indentation when pasting
use({
  'sickill/vim-pasta',
  config = function()
    require('user.plugins.pasta')
  end,
})

use({
  'nvim-telescope/telescope.nvim',
  requires = {
    { 'nvim-lua/plenary.nvim' },
    { 'kyazdani42/nvim-web-devicons' },
    { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
    { 'nvim-telescope/telescope-live-grep-args.nvim' },
  },
  config = function()
    require('user.plugins.telescope')
  end,
})

-- Nvim-tree
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly', -- optional, updated every week. (see issue #1193)
  config = function()
    require('user/plugins/nvimtree')
  end,
}

-- A Status line
use({
  'nvim-lualine/lualine.nvim',
  requires = 'kyazdani42/nvim-web-devicons',
  config = function()
    require('user/plugins/lualine')
  end,
})

-- Tabs / Open buffers
use({
  'akinsho/bufferline.nvim',
  requires = 'kyazdani42/nvim-web-devicons',
  after = 'onedark.nvim',
  config = function()
    require('user/plugins/bufferline')
  end,
})

-- Indent blank line
use({
  'lukas-reineke/indent-blankline.nvim',
  config = function()
    require('user/plugins/indent-blankline')
  end,
})

-- Neovim Dashboard
use {
  'glepnir/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
    }
  end,
  requires = {'nvim-tree/nvim-web-devicons'}
}

-- Git signs
-- Git help
use({
  'lewis6991/gitsigns.nvim',
  requires = 'nvim-lua/plenary.nvim',
  config = function()
    require('gitsigns').setup({
      current_line_blame = true,
      sign_priority = 20,
      on_attach = function(bufnr)
        vim.keymap.set('n', ']h', "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", { expr = true, buffer = bufnr })
        vim.keymap.set('n', '[h', "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", { expr = true, buffer = bufnr })
      end,
    })
  end,
})

use({
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',
  requires = {
    'nvim-treesitter/playground',
    'nvim-treesitter/nvim-treesitter-textobjects',
    'JoosepAlviste/nvim-ts-context-commentstring',
  },
  config = function()
    require('user/plugins/treesitter')
  end,
})

use({
  'tpope/vim-fugitive',
  requires = 'tpope/vim-rhubarb',
  cmd = 'G',
})

use({
  'voldikss/vim-floaterm',
  config = function()
    require('user/plugins/floaterm')
  end,
})

use({
  'neovim/nvim-lspconfig',
  requires = {
    'b0o/schemastore.nvim',
    'folke/lsp-colors.nvim',
  },
  config = function()
    require('user/plugins/lspconfig')
  end,
})

use({
  'L3MON4D3/LuaSnip',
  config = function()
    require('user/plugins/luasnip')
  end,
})

use({
  'hrsh7th/nvim-cmp',
  requires = {
    'L3MON4D3/LuaSnip',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lsp-signature-help',
    'hrsh7th/cmp-nvim-lua',
    'jessarcher/cmp-path',
    'onsails/lspkind-nvim',
    'saadparwaiz1/cmp_luasnip',
  },
  config = function()
    require('user/plugins/cmp')
  end,
})

use({
  'jose-elias-alvarez/null-ls.nvim',
  config = function()
    require('user/plugins/null-ls')
  end,
})


-- Check these out!
-- use('tpope/vim-unimpaired') -- Adds [b and other handy mappings
-- ... Go through this file: https://github.com/jessarcher/dotfiles/blob/master/nvim/lua/user/plugins.lua

-- Automatically set up your configuration after cloning packer.nvim
-- Put this at the end after all plugins
if packer_bootstrap then
    require('packer').sync()
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> 
  augroup end
]])
