-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

local Util = require("lazyvim.util")

vim.keymap.set({ "n", "v" }, "gf", function()
  Util.format({ force = true })
end, { desc = "Format" })

map("n", "<S-j>", "5j")
map("n", "<S-k>", "5k")
map("n", "<S-h>", "^")
map("n", "<S-l>", "g_")
