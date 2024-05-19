vim.g.mapleader = " "
vim.g.maplocalleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
  {
    { import = "plugins.themes" },          -- One Dark Pro <3

    { import = "plugins.lang.lsp" },        -- Lsp, Snippets, Linters, Formatters
    { import = "plugins.lang.cmp" },        -- Completion UI
    { import = "plugins.lang.treesitter" }, -- Syntax highlighting
    { import = "plugins.lang.cmake" },      -- CMake

    { import = "plugins.tools.telescope" }, -- Fuzzy searching
    { import = "plugins.tools.hop" },       -- Fast navigation
    { import = "plugins.tools.oil" },

    { import = "plugins.ui.alpha" },    -- Dashboard
    { import = "plugins.ui.dressing" }, -- Better prompts
    { import = "plugins.ui.noice" },
    --{ import = "plugins.ui.lualine" },

    { import = "plugins.misc.which-key" }, -- Keymaps
    --{ import = "plugins.misc.presence" }    -- Discord RPC
  },
  {
    --defaults = { lazy = true },
    install = { colorscheme = { "onedark" } },
    ui = {
      border = "rounded",
      backdrop = 100
    },
    performance = {
      rtp = {
        disabled_plugins = {
          "2html_plugin",
          "tohtml",
          "getscript",
          "getscriptPlugin",
          "gzip",
          "logipat",
          "netrw",
          "netrwPlugin",
          "netrwSettings",
          "netrwFileHandlers",
          "matchit",
          "tar",
          "tarPlugin",
          "rrhelper",
          "spellfile_plugin",
          "vimball",
          "vimballPlugin",
          "zip",
          "zipPlugin",
          "tutor",
          "rplugin",
          "syntax",
          "synmenu",
          "optwin",
          "compiler",
          "bugreport",
          "ftplugin",
        },
      },
    },
  }
)

require("options")
require("mappings")
