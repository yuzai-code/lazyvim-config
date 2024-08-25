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
-- 设置使用系统默认剪切板
vim.opt.clipboard = "unnamedplus"

-- nevide 的配置
if vim.g.nevide then
  -- 滚动动画长度
  vim.g.neovide_scroll_animation_length = 0.1
  -- 全屏
  vim.g.neovide_fullscreen = true
  -- 控制输入法
  vim.g.neovide_input_ime = true
  -- 光标动画长度
  vim.g.neovide_cursor_animation_length = 0.1
  -- 配置粒子特效
  vim.g.neovide_cursor_vfx_mode = "torpedo"
end
