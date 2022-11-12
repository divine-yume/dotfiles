return function(use)
  use { "catppuccin/nvim", as = "catppuccin",
    config = function()
      vim.cmd [[colorscheme catppuccin]]
    end
  }

  require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
      light = "latte",
      dark = "mocha",
    },
    term_colors = true,
    transparent_background = false,
    compile_path = vim.fn.stdpath "cache" .. "/catppuccin",
    styles = {
      comments = {},
      conditionals = {},
      loops = {},
      functions = {},
      keywords = {},
      strings = {},
      variables = {},
      numbers = {},
      booleans = {},
      properties = {},
      types = {},
    },
    color_overrides = {
      latte = {
        base = "#E1EEF5",
      },
      mocha = {
        base = "#000000",
      },
    },
    highlight_overrides = {
      latte = function(latte)
        return {
          NvimTreeNormal = { bg = "#D1E5F0" },
        }
      end,
      mocha = function(mocha)
        return {
          NvimTreeNormal = { bg = mocha.none },
          CmpBorder = { fg = mocha.surface2 },
        }
      end,
    },
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      telescope = true,
      treesitter = false,
      -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
  })
end
