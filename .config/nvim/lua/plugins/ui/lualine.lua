return {
  'nvim-lualine/lualine.nvim',
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "SantinoKeupp/lualine-cmake4vim.nvim"
  },
  opts = {
    options = {
      theme = 'onedark',
      component_separators = { left = '|', right = '|' },
      section_separators = { left = '', right = '' },
      disabled_filetypes = {
        statusline = {
          'alpha',
          'NvimTree',
          'toggleterm',
          'Lazy'
        }
      }
    },
    sections = {
      lualine_a = { { 'mode', fmt = function(str) return str:sub(1, 1) end } },
      lualine_b = {},
      lualine_c = {
        { "filename" },
      },
      lualine_x = { {
        "cmake4vim",
        prefix = "CMake ",          -- Text to show befor the actual configuration
        cmake4vim_separator = ", ", -- Seperator used between the configuration items
        colored = true,             -- Displays filetype icon in color if set to true
      } },
      lualine_y = {},
      lualine_z = {},
    },
    --extensions = { 'nvim-tree', 'toggleterm', 'fzf', 'mason' },
  }
}
