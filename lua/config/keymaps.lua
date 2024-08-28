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
map("v", "<C-v>", '"+p', opts)
map("n", "<C-v>", '"+p', opts)
map("i", "<C-v>", '<ESC>"+p', opts)

-- 设置行首行尾
map("n", "H", "^", opts)
map("n", "L", "$", opts)

-- 设置alt+h l 切换buffer
map("n", "<A-h>", ":bprevious<CR>", opts)
map("n", "<A-l>", ":bnext<CR>", opts)

-- 在 keymaps.lua 或 init.lua 中添加以下内容：

-- 语法高亮快捷键（以防需要）
vim.api.nvim_set_keymap("n", "<space>th", ":TSBufToggle highlight<CR>", { noremap = true, silent = true })

-- 折叠快捷键
vim.api.nvim_set_keymap("n", "<space>za", "za", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<space>zc", "zc", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<space>zo", "zo", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<space>zm", "zM", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<space>zr", "zR", { noremap = true, silent = true })

-- 增量选择快捷键
vim.api.nvim_set_keymap("n", "gnn", ":TSNodeSelect<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gnr", ":TSNodeIncremental<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gnc", ":TSNodeScopeIncremental<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gnm", ":TSNodeDecremental<CR>", { noremap = true, silent = true })
