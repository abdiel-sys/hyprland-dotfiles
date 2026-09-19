-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map(
  "n",
  "<leader>zn",
  "<cmd>ZkNew {dir = vim.fn.input('Dir: '), title = vim.fn.input('Title: ')}<cr>",
  { desc = "New note" }
)
map("n", "<leader>zb", "<cmd>ZkBacklinks<cr>", { desc = "Check backlinks" })
map("n", "<leader>zs", "<cmd>ZkNotes { excludeHrefs = { 'extra'} }<cr>", { desc = "Search Notes" })
