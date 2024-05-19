local map = vim.keymap.set

-- save
map('n', '<C-s>', '<cmd>w<CR>', { desc = 'File Save' })

-- indent
map('v', '<', '<gv', { desc = 'Indent left' })
map('v', '>', '>gv', { desc = 'Indent right' })

-- move buffer
map('i', '<C-b>', '<ESC>^i', { desc = 'Move Beginning of line' })
map('i', '<C-e>', '<End>', { desc = 'Move End of line' })
map('i', '<C-h>', '<Left>', { desc = 'Move Left' })
map('i', '<C-l>', '<Right>', { desc = 'Move Right' })
map('i', '<C-j>', '<Down>', { desc = 'Move Down' })
map('i', '<C-k>', '<Up>', { desc = 'Move Up' })
-- move windows
map('n', '<C-h>', '<C-w>h', { desc = 'Switch Window left' })
map('n', '<C-l>', '<C-w>l', { desc = 'Switch Window right' })
map('n', '<C-j>', '<C-w>j', { desc = 'Switch Window down' })
map('n', '<C-k>', '<C-w>k', { desc = 'Switch Window up' })

-- lazy ESC to close
require("lazy.view.config").keys.close = "<Esc>"
