return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "c",
      "cpp",
      "ocaml",

      "make",
      "cmake",

      "bash",
      "vim",
      "vimdoc",
      "lua",
      "html",
      "markdown"
    },
    auto_install = false,
    highlight = {
      enable = true,
      use_languagetree = true,
      additional_vim_regex_highlighting = false
    },
    indent = { enable = true },
    rainbow = {
      enable = true
    }
  }
}
