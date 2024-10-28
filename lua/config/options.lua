-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 配置node路径
-- vim.g.node_host_prog = vim.fn.expand("$HOME/.local/share/nvm/v20.17.0/bin/node")

-- 设置折叠方法为表达式
vim.opt.foldmethod = "expr"
-- 设置折叠表达式为 nvim_treesitter 的 foldexpr
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- 禁用自动折叠
vim.opt.foldenable = true
-- 设置默认的折叠级别
vim.opt.foldlevel = 10
-- 设置使用系统默认剪切板
vim.opt.clipboard = "unnamedplus"
-- 制表符为 4个空格
vim.opt.tabstop = 4
-- 设置自动缩进为 4 个空格
vim.opt.shiftwidth = 4
vim.g.codeium_gzip_command = "C:\\Program Files\\GnuWin32\\bin\\gzip.exe"
-- 如果您使用的是WSL，则需要进行一些额外的配置
if vim.fn.has("wsl") == 1 then
  -- 使用wl-clipboard (如果可用)
  if vim.fn.executable("wl-copy") == 1 then
    vim.g.clipboard = {
      name = "wl-clipboard (wsl)",
      copy = {
        ["+"] = "wl-copy --foreground --type text/plain",
        ["*"] = "wl-copy --foreground --primary --type text/plain",
      },
      paste = {
        ["+"] = function()
          return vim.fn.systemlist("wl-paste --no-newline", { "" }, 1)
        end,
        ["*"] = function()
          return vim.fn.systemlist("wl-paste --primary --no-newline", { "" }, 1)
        end,
      },
      cache_enabled = true,
    }
  -- 否则使用 xclip
  elseif vim.fn.executable("xclip") == 1 then
    vim.g.clipboard = {
      name = "xclip",
      copy = {
        ["+"] = "xclip -selection clipboard",
        ["*"] = "xclip -selection primary",
      },
      paste = {
        ["+"] = "xclip -selection clipboard -o",
        ["*"] = "xclip -selection primary -o",
      },
      cache_enabled = true,
    }
  end
end

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
  -- 配置字体
  vim.g.guifont = "Source Code Pro:h14"
end
