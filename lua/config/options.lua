-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 设置折叠方法为表达式
vim.opt.foldmethod = "expr"
-- 设置折叠表达式为 nvim_treesitter 的 foldexpr
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
-- 禁用自动折叠
vim.opt.foldenable = false
-- 设置默认的折叠级别
vim.opt.foldlevel = 99
