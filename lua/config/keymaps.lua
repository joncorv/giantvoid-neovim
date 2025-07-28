-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- First create the keymap
vim.keymap.set("n", "<leader>D", function()
  Snacks.dashboard()
end, {
  desc = "Dashboard",
})

-- Then add the which-key spec with icon
require("which-key").add({
  { "<leader>D", desc = "Dashboard", icon = "󰕮" },
})
