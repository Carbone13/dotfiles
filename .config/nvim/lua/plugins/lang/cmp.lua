return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    {
      "L3MON4D3/LuaSnip",
      build = "make install_jsregexp",
      dependencies = {
        {
          "rafamadriz/friendly-snippets",
          config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
          end,
        },
      },
    },
    {
      "windwp/nvim-autopairs",
      event = "InsertEnter",
      config = true
    },
    "saadparwaiz1/cmp_luasnip",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-path"
  },
  config = function()
    local cmp = require "cmp"
    local luasnip = require "luasnip"

    luasnip.config.setup {}

    cmp.setup {
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      view = {
        entries = { name = "custom", selection_order = "near_cursor" }
      },
      completion = { completeopt = "menu,menuone,noinsert" },

      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = function(fallback)
          if cmp.visible() then
            cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
          elseif luasnip.expand_or_locally_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end,
        ["<S-Tab>"] = function(fallback)
          if cmp.visible() then
            cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end,
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),

      sources = {
        { name = "nvim_lsp", keyword_length = 2, max_item_count = 10 },
        { name = "luasnip",  keyword_length = 3, max_item_count = 5 },
        { name = "path" },
        { name = "buffer",   keyword_length = 2, max_item_count = 10 }
      },

      formatting = {
        fields = { "kind", "abbr" },
        format = function(_, item)
          local icons = require "const".lsp_kind
          local icon = icons[item.kind] or ""

          icon = " " .. icon .. " "
          item.menu = ""
          item.kind = icon
          item.abbr = string.sub(item.abbr, 1, 50)

          return item
        end,
      },
      window = {
        completion = {
          border = "rounded",
          scrollbar = false
        },
        documentation = {
          border = "rounded",
          winhighlight = "Normal:CmpDoc",
          scrollbar = false
        },
      },
      sorting = {
        comparators = {
          cmp.config.compare.locality,
          cmp.config.compare.recently_used,
          cmp.config.compare.score,
          cmp.config.compare.exact,
          cmp.config.compare.offset,
          cmp.config.compare.order,

          -- copied from cmp-under, but I don't think I need the plugin for this.
          -- I might add some more of my own.
          function(entry1, entry2)
            local _, entry1_under = entry1.completion_item.label:find "^_+"
            local _, entry2_under = entry2.completion_item.label:find "^_+"
            entry1_under = entry1_under or 0
            entry2_under = entry2_under or 0
            if entry1_under > entry2_under then
              return false
            elseif entry1_under < entry2_under then
              return true
            end
          end,
        },
      },
    }

    local cmp_autopairs = require "nvim-autopairs.completion.cmp"
    cmp.event:on(
      "confirm_done",
      cmp_autopairs.on_confirm_done()
    )
  end
}
