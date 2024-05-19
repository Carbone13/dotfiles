local map = vim.keymap.set

-- save
map("n", "<D-s>", "<cmd>w<CR>", { desc = "File Save" })
map("n", "<leader>w", "<cmd>w<CR>", { desc = "File Save" })
-- quit
map("n", "<leader>a", "<CMD>qa!<cr>", { desc = "Quit all" })
map("n", "<leader>q", "<CMD>wqall<cr>", { desc = "Save & Quit All" })
-- run
map("n", "<F4>", "<cmd>CMakeRun<cr>", { desc = "CMake Run" })
map("n", "<F5>", "<cmd>make<cr>", { desc = "Make" })
map("n", "<F6>", "<cmd>make<cr>", { desc = "Make" }) -- do smth for ocaml

-- indent
map("v", "<", "<gv", { desc = "Indent left" })
map("v", ">", ">gv", { desc = "Indent right" })

-- move buffer
map("i", "<C-b>", "<ESC>^i", { desc = "Move Beginning of line" })
map("i", "<C-e>", "<End>", { desc = "Move End of line" })
map("i", "<C-h>", "<Left>", { desc = "Move Left" })
map("i", "<C-l>", "<Right>", { desc = "Move Right" })
map("i", "<C-j>", "<Down>", { desc = "Move Down" })
map("i", "<C-k>", "<Up>", { desc = "Move Up" })
-- move windows
map("n", "<C-h>", "<C-w>h", { desc = "Switch Window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch Window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch Window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch Window up" })

-- Lazy
require("lazy.view.config").keys.close = "<Esc>"
map("n", "<leader>p", "<CMD>Lazy<CR>", { desc = "Open Lazy" })
-- oil
map("n", "-", "<CMD>Oil<CR>", { desc = "Oil" })
-- telescope
map("n", "<leader><leader>", "<cmd>Telescope oldfiles <cr>", { desc = "Find Old File" })
map("n", "<leader>ff", "<cmd>Telescope find_files <cr>", { desc = "Find File" })
map("n", "<leader>fp", "<cmd>Telescope neovim-project discover <cr>", { desc = "Find Project" })
map("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols <cr>", { desc = "Find Symbol" })
-- todo fg for grep
--hop
map("n", "f", "<cmd>HopWord<cr>", { desc = "Hop" })
-- lsp
map("n", "<leader>li", "<cmd>Lsp Info<cr>", { desc = "LSP Info" })

-- cmake
map("n", "<leader>st", "<cmd>lua require 'telescope'.extensions.cmake4vim.select_target {} <cr>",
  { desc = "Select CMake Target" })
map("n", "<leader>sk", "<cmd>lua require 'telescope'.extensions.cmake4vim.select_kit {} <cr>",
  { desc = "Select CMake Kit" })
map("n", "<leader>sb", "<cmd>lua require 'telescope'.extensions.cmake4vim.select_build_type {} <cr>",
  { desc = "Select CMake Build Type" })

-- format
map("n", "<leader>fm", function() require("conform").format { lsp_fallback = true } end, { desc = "Format" })


-- -- Tabs
-- map("n", "<tab>", ":bnext<CR>", { desc = "Buffer Goto next" })
-- map("n", "<S-tab>", ":bnext<CR>", { desc = "Buffer Goto prev" })
-- map("n", "<leader>x", "<cmd>w<CR><cmd>BufferClose<CR>", { desc = "Buffer Close" })
-- -- Comment
-- map("n", "<leader>/", function() require("Comment.api").toggle.linewise.current() end, { desc = "Comment Toggle" })
-- map("v", "<leader>/", "<ESC><cmd>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>",
--   { desc = "Comment Toggle" })
-- -- Lsp
-- map("n", "<leader>lf", vim.diagnostic.open_float, { desc = "[L]sp [F]loating diagnostics" })
-- map("n", "[d", vim.diagnostic.goto_prev, { desc = "Lsp prev diagnostic" })
-- map("n", "]d", vim.diagnostic.goto_next, { desc = "Lsp next diagnostic" })

-- -- Toggleterm
-- map("n", "<leader>t", "<cmd>ToggleTerm <CR>", { desc = "[T]oggle terminal" })
-- --["<leader>x"] = { "<cmd>w<CR><cmd>BufferClose<CR>", "Close tab" },
-- --["<leader>a"] = { ":Ouroboros <CR>", "Switch header/source" },
