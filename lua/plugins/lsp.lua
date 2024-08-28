-- LSP keymaps
-- 修改已经安装的lsp的配置
return {
  "neovim/nvim-lspconfig",
  opts = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- 添加新的按键映射
    keys[#keys + 1] = { "gk", "<cmd>lua vim.lsp.buf.hover()<CR>" }
    -- disable a keymap
    keys[#keys + 1] = { "K", false }
  end,
}
