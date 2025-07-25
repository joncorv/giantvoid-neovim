-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
-- Suppress "No information available" for Vue files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "vue",
  callback = function()
    local original_handler = vim.lsp.handlers["textDocument/hover"]
    vim.lsp.handlers["textDocument/hover"] = function(err, result, ctx, config)
      if not result or not result.contents then
        return -- Silently do nothing instead of showing notification
      end
      return original_handler(err, result, ctx, config)
    end
  end,
})
