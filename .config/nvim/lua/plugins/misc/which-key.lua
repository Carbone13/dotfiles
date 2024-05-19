return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {

  },
  config = function(_, opts)
    local wk = require("which-key")

    wk.setup()
    -- wk.register(
    --   {
    --     ["<leader>"] = {
    --       k = { "<cmd>bdelete <cr>", "Kill current buffer" },
    --       p = { "<cmd>Lazy <cr>", "Open Lazy" },

    --       q = { "<cmd>wqall! <cr>", "Quit" },
    --       w = { "<cmd>w <cr>", "Save" },

    --       ["f"] = {
    --         name = "Search",
    --         f = { "<cmd>Telescope find_files <cr>", "Find File" },
    --         r = { "<cmd>Telescope oldfiles <cr>", "Find Recent File" },
    --         p = { "<cmd>Telescope neovim-project discover <cr>", "Find Project" },
    --         k = { "<cmd>Telescope keymaps <cr>", "Find Keymaps" },
    --         s = { "<cmd>Telescope lsp_document_symbols<cr>", "Find symbol" },
    --       },

    --       ["l"] = {
    --         name = "LSP",
    --         a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
    --         i = { "<cmd>LspInfo<cr>", "Info" },
    --         l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
    --       },

    --     },
    --     ["r"] = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
    --     ["f"] = { "<cmd>HopWord <cr>", "Hop" },
    --   },
    --   {
    --     mode = "n",
    --     prefix = nil,
    --     buffer = nil,
    --     silent = true,
    --     noremap = false,
    --     nowait = true
    --   }
    -- )
  end
}
