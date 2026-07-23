-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- tmux nav
  {
    'christoomey/vim-tmux-navigator',
    lazy = false,
  },

  {
    'xiyaowong/transparent.nvim',
    lazy = false,
    priority = 1000,
  },

  {
    -- Copilot
    -- 'github/copilot.vim',
    'zbirenbaum/copilot.lua',
    config = function()
      require('copilot').setup {
        suggestion = { enabled = false },
        panel = { enabled = false },
      }
    end,
  },

  {
    'giuxtaposition/blink-cmp-copilot',
  },

  {
    -- Octo
    'pwntester/octo.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('octo').setup()
    end,
  },

  {
    -- Git Blame
    'f-person/git-blame.nvim',
    config = function()
      require('gitblame').setup()
    end,
  },

  {
    -- Avante (Cursor-like AI assistant)
    'yetone/avante.nvim',
    event = 'VeryLazy',
    build = 'make',
    opts = {
      provider = 'claude', -- default provider
      providers = {
        claude = {
          model = 'claude-sonnet-4-20250514',
        },
        copilot = {
          model = 'claude-3.5-sonnet', -- or 'gpt-4o'
        },
      },
    },
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'stevearc/dressing.nvim',
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
      'nvim-tree/nvim-web-devicons',
      'zbirenbaum/copilot.lua',
      {
        'MeanderingProgrammer/render-markdown.nvim',
        opts = { file_types = { 'markdown', 'Avante' } },
        ft = { 'markdown', 'Avante' },
      },
    },
  },

  {
    -- MCPHub (MCP server management)
    'ravitemer/mcphub.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    build = 'npm install -g mcp-hub@latest',
    config = function()
      require('mcphub').setup()
    end,
  },

  {
    -- Noice (UI for messages, cmdline, popupmenu)
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {},
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
  },
}
