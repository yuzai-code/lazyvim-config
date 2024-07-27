-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 设置选项
local opts = { noremap = true, silent = true }
local map = vim.keymap.set

-- 检查并取消现有映射
vim.api.nvim_set_keymap("n", "J", "<NOP>", opts)

-- 设置新的映射
map("i", "jj", "<Esc>", opts)
map("i", "jk", "<Esc>", opts)
map("n", "K", "5k", opts)
map("n", "J", "5j", opts)
