-- 确保你已经加载了插件管理器和插件
return {
  {
    "neovim/nvim-lspconfig",
    -- 配置 lsp 客户端
    config = function()
      local nvim_lsp = require("lspconfig")

      -- 这里是你要更改的快捷键设置
      local on_attach = function(_, bufnr)
        local opts = { noremap = true, silent = true }
        local function buf_set_keymap(...)
          vim.api.nvim_buf_set_keymap(bufnr, ...)
        end

        -- 重新定义快捷键
        buf_set_keymap("n", "<leader>k", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
        -- 添加你需要的其他快捷键
      end

      -- 配置你的 LSP 服务器
      nvim_lsp.tsserver.setup({
        on_attach = on_attach,
        flags = {
          debounce_text_changes = 150,
        },
      })

      -- 添加其他 LSP 服务器配置
    end,
  },
}
