-- GitHub Copilot, surfaced through blink.cmp rather than as ghost text.
--
-- The matching `copilot` source is registered in `init.lua` under
-- SECTION 8 (blink.cmp `sources.providers`).
--
-- Run `:Copilot auth` once to sign in.
vim.pack.add {
  'https://github.com/zbirenbaum/copilot.lua',
  'https://github.com/giuxtaposition/blink-cmp-copilot',
}

require('copilot').setup {
  -- Both are disabled because completions are served by blink.cmp instead.
  suggestion = { enabled = false },
  panel = { enabled = false },
}
