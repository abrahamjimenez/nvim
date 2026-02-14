return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "latte",
        transparent_background = false,
        integrations = {
          bufferline = true,
        },
        custom_highlights = function(colors)
          return {
            LineNr = { fg = "#9E9E9E" },
            CursorLineNr = { fg = "#DBDBDB", bold = true },
          }
        end,
      })

      vim.o.background = "light"
      vim.cmd.colorscheme("catppuccin")
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
