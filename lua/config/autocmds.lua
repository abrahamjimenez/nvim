-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- LazyVim re-enables `wrap` for text/markdown/etc via its `wrap_spell` autocmd.
-- Override it so wrap stays off everywhere (spell-checking is left untouched).
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("user_no_wrap", { clear = true }),
  pattern = { "text", "plaintex", "typst", "gitcommit", "markdown" },
  callback = function()
    vim.opt_local.wrap = false
  end,
})
