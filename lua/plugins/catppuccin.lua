return {

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true,
        custom_highlights = function(colors)
          return {
            LineNr = { fg = "#9E9E9E" }, -- White for line numbers
            CursorLineNr = { fg = "#DBDBDB", bold = true }, -- White + bold for current line number
          }
        end,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
