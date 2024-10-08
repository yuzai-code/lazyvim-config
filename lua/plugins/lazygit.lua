-- plugin/lazygit.lua
-- lazygit插件配置使用

return {
  "kdheepak/lazygit.nvim",
  keys = {
    {
      "<leader>gg",
      function()
        require("lazygit").lazygit()
      end,
      desc = "打开文件管理器",
    },
    {
      "<leader>gG",
      function()
        require("lazygit").lazygit(nil, vim.fn.getcwd())
      end,
      desc = "在 nvim 的工作目录中打开文件管理器",
    },
  },
}
