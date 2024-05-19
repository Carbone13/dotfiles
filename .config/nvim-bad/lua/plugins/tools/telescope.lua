return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  dependencies = {
    "nvim-telescope/telescope-ui-select.nvim",
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make"
    },
    {
      "coffebar/neovim-project",
      cmd = "Telescope",
      dependencies = {
        { "Shatur/neovim-session-manager" },
      },
      priority = 100,
      opts = {
        projects = {
          "~/dev/*",
          "~/MP2I/info/TP/*",
        },
        last_session_on_startup = false,
        dashboard_mode = true
      },
      init = function()
        vim.opt.sessionoptions:append("globals")
      end
    }
  },
  opts = {
    defaults = {
      prompt_prefix = " 󰍉 ",
      -- selection_caret = "> ",
      -- entry_prefix = "  ",
      -- sorting_strategy = "ascending",
      -- layout_strategy = "horizontal",
      -- path_display = { "truncate" },
      -- layout_config = {
      --   horizontal = {
      --     prompt_position = "top",
      --     preview_width = 0.55,
      --     results_width = 0.8,
      --   },
      --   vertical = {
      --     mirror = false,
      --   },
      --   width = 0.87,
      --   height = 0.80,
      --   preview_cutoff = 120,
      -- },
      file_ignore_patterns = {
        ".build/*",
        "lib/*/",
      },
      mappings = {
        i = {
          ["<esc>"] = "close"
        }
      },
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        },
      }
    }
  },
  config = function(_, opts)
    opts.extensions = {
      ["ui-select"] = {
        require("telescope.themes").get_dropdown(),
      },
    }

    require("telescope").setup(opts)
    pcall(require("telescope").load_extension, "fzf")
    pcall(require("telescope").load_extension, "ui-select")
  end
}
