-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 设置选项
local opts = { noremap = true, silent = true }
local map = vim.keymap.set
local unmap = vim.keymap.del

-- 检查并取消现有映射
-- unmap("n", "<c-/>")

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

-- barbar.nvim 快捷键设置

-- 移动到上一个/下一个缓冲区
map("n", "<A-h>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<A-l>", "<Cmd>BufferNext<CR>", opts)

-- 重新排序到上一个/下一个
map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)

-- 跳转到特定缓冲区
map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)

-- 固定/取消固定缓冲区
map("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)

-- 关闭缓冲区
map("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)

-- 完全删除缓冲区
--                 :BufferWipeout

-- 关闭命令
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight

-- 神奇的缓冲区选择模式
map("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)

-- 自动排序方式...
map("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
map("n", "<Space>bn", "<Cmd>BufferOrderByName<CR>", opts)
map("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
map("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
map("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

-- 其他:
-- :BarbarEnable - 启用 barbar（默认启用）
-- :BarbarDisable - 非常糟糕的命令，永远不应该使用

-- vscode 插件的配置
if vim.g.vscode then
  -- 禁用快捷键 ctrl + / 打开终端
  unmap("n", "<c-/>")
  vim.keymap.set("x", "gc", "<Plug>VSCodeCommentary", {})
  vim.keymap.set("n", "gc", "<Plug>VSCodeCommentary", {})
  vim.keymap.set("o", "gc", "<Plug>VSCodeCommentary", {})
  vim.keymap.set("n", "gcc", "<Plug>VSCodeCommentaryLine", {})
end
