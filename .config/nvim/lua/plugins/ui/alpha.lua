return {
  "goolord/alpha-nvim",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = require "const".hydra

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("f", "󰍉  > Find file", "<cmd>Telescope find_files<CR>"), -- nf-md-magnify
      dashboard.button("p", "󰷏  > Open project", "<cmd>Telescope neovim-project discover<CR>"), -- nf-md-folder_open_outline
      dashboard.button("q", "󰗼  > Quit NVIM", ":qall!<CR>"), -- nf-md-exit_to_app
    }

    local fortune = require("alpha.fortune")
    dashboard.section.footer.val = fortune({
      max_width = 54,
      fortune_list = require "const".fortune_list
    })

    dashboard.section.footer.opts.hl = "Type"
    dashboard.section.header.opts.hl = "Include"
    dashboard.section.buttons.opts.hl = "Keyword"
    dashboard.opts.opts.noautocmd = true

    alpha.setup(dashboard.opts)
    vim.cmd([[
      autocmd FileType alpha setlocal nofoldenable
      ]])
  end
}
