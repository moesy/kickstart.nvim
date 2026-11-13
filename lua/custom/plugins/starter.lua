-- Start screen shown when Neovim is opened without a file.
-- mini.starter ships with mini.nvim, which init.lua already installs.
-- See `:help mini.starter`

local starter = require 'mini.starter'

starter.setup {
  header = table.concat({
    '███╗   ██╗██╗   ██╗██╗███╗   ███╗',
    '████╗  ██║██║   ██║██║████╗ ████║',
    '██╔██╗ ██║██║   ██║██║██╔████╔██║',
    '██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║',
    '██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║',
    '╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝',
  }, '\n'),
  items = {
    { name = 'Find file', action = 'Telescope find_files', section = 'Actions' },
    { name = 'Grep text', action = 'Telescope live_grep', section = 'Actions' },
    { name = 'Recent files (picker)', action = 'Telescope oldfiles', section = 'Actions' },
    { name = 'Tree (file explorer)', action = 'Neotree reveal', section = 'Actions' },
    { name = 'New file', action = 'enew', section = 'Actions' },
    { name = 'Config', action = 'edit $MYVIMRC', section = 'Actions' },
    { name = 'Quit', action = 'qall', section = 'Actions' },
    starter.sections.recent_files(5, true),
    starter.sections.recent_files(5, false),
  },
  footer = 'Type to filter, <CR> to select. Press <Space> in any buffer for keymaps.',
}
