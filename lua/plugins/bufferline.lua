return {
  {
    "akinsho/bufferline.nvim",
    dependencies = { "catppuccin/nvim" },
    opts = {
      highlights = require("catppuccin.special.bufferline").get_theme(),
    },
  },
}
