-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 设置选项
local opts = { noremap = true, silent = true }
local map = vim.keymap.set
local unmap = vim.keymap.del

-- 检查并取消现有映射

-- ********设置新的映射*******
map("i", "jj", "<Esc>", opts)
map("i", "jk", "<Esc>", opts)
map("n", "K", "5k", opts)
map("n", "J", "5j", opts)

-- 设置ctrl+q强制退出
map("n", "<C-q>", ":qa!<CR>", opts)

-- 设置全选
map("n", "<C-a>", "ggVG", opts)
map("i", "<C-a>", "<ESC>ggVG<CR>a", opts)
map("v", "<C-a>", "ggVG", opts)

-- 设置复制
map("v", "<C-c>", '"+y', opts)
map("n", "<C-c>", '"+y', opts)
map("i", "<C-c>", '<ESC>"+y', opts)
map("n", "<C-v>", '"+p', opts)
map("i", "<C-v>", '<ESC>"+p', opts)
