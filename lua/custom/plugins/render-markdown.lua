-- Renders markdown in place: styled headings, bullets, checkboxes, code blocks
-- and tables in normal mode, raw syntax while in insert mode.
-- https://github.com/MeanderingProgrammer/render-markdown.nvim
-- See `:help render-markdown`

vim.pack.add { 'https://github.com/MeanderingProgrammer/render-markdown.nvim' }

require('render-markdown').setup {
  -- Modes in which the buffer is shown rendered. Insert mode is left out,
  -- so entering it reveals the raw markdown.
  render_modes = { 'n', 'c', 't' },

  -- When enabled, the line under the cursor shows raw syntax even in normal mode.
  -- Disabled so everything stays rendered until you start editing.
  anti_conceal = { enabled = false },
}

-- Toggle rendering for the current buffer
vim.keymap.set('n', '<leader>tm', '<Cmd>RenderMarkdown buf_toggle<CR>', { desc = '[T]oggle [M]arkdown rendering' })
