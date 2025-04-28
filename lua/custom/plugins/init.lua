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
}
