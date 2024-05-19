return {
  "olimorris/onedarkpro.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    colors = {
      onedark = {
        bg = "#23272E",
        float_bg = "#23272E"
      }
    }
  },
  config = function(_, opts)
    require("onedarkpro").setup(opts)
    vim.cmd("colorscheme onedark")
  end
}
