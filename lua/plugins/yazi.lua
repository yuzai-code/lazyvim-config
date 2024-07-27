-- plugins/yazi.lua
---@type LazySpec
return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  keys = {
    {
      "<leader>-",
      function()
        require("yazi").yazi()
      end,
      desc = "打开文件管理器",
    },
    {
      "<leader>cw",
      function()
        require("yazi").yazi(nil, vim.fn.getcwd())
      end,
      desc = "在 nvim 的工作目录中打开文件管理器",
    },
  },
  opts = {
    open_for_directories = false,
  },
}
