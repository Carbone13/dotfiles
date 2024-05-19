return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
      {
        "stevearc/conform.nvim",
        opts = {
          notify_on_error = false,
          formatters_by_ft = {
            lua = { "stylua" },
            c = { "clang-format" },
            cpp = { "clang-format" },
            ocaml = { "ocamlformat" },
          },
        }
      }
    },
    config = function()
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(event)
          --require("mappings").lsp_keymaps(event.buf)
          local map = function(keys, func, desc)
            vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP " .. desc })
          end

          map("gd", require("telescope.builtin").lsp_definitions, "Goto Definition")
          map("gr", require("telescope.builtin").lsp_references, "Goto References")
          map("gI", require("telescope.builtin").lsp_implementations, "Goto Implementation")
          map("<leader>D", require("telescope.builtin").lsp_type_definitions, "Type Definition")
          map("<leader>ds", require("telescope.builtin").lsp_document_symbols, "Document Symbols")

          -- Fuzzy find all the symbols in your current workspace.
          --  Similar to document symbols, except searches over your entire project.
          --map("<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, "[W]orkspace [S]ymbols")


          map("<leader>rn", vim.lsp.buf.rename, "Rename")
          map("<leader>ca", vim.lsp.buf.code_action, "Code Action")
          --map("K", vim.lsp.buf.hover, "Hover Documentation")
          map("gD", vim.lsp.buf.declaration, "Goto Declaration")
        end,
      })

      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

      local servers = require("const").lsp_servers

      local ensure_installed = vim.tbl_keys(servers or {})
      vim.list_extend(ensure_installed, require("const").mason)

      local signs = {
        ERROR = '',
        WARN = '',
        HINT = '',
        INFO = '',
      }

      vim.diagnostic.config({
        underline = true,
        virtual_text = {
          prefix = function(diagnostic)
            return signs[vim.diagnostic.severity[diagnostic.severity]]
          end,
        },
        signs = false,
        float = {
          border = "single",
        },
        severity_sort = true
      })
      vim.lsp.inlay_hint.enable(true)


      require("mason").setup()
      require("mason-tool-installer").setup { ensure_installed = ensure_installed }
      require("mason-lspconfig").setup {
        handlers = {
          function(server_name)
            local server = servers[server_name] or {}
            server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
            require("lspconfig")[server_name].setup(server)
          end,
        },
      }
    end,
  },
  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lint = require "lint"
      lint.linters_by_ft = {
        markdown = { "markdownlint" },
        c = { "clangtidy" },
        cpp = { "clangtidy" },
      }

      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
        group = lint_augroup,
        callback = function()
          require("lint").try_lint()
        end,
      })
    end
  },
}
