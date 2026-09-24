-- Renders markdown in the buffer; the cursor line shows raw text for editing.
-- Toggle with `:RenderMarkdown toggle`.
vim.pack.add { 'https://github.com/MeanderingProgrammer/render-markdown.nvim' }

require('render-markdown').setup {}
