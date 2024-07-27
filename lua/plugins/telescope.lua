-- plugins/telescope.lua

-- 确保已经引入 telescope 插件
return {
  "nvim-telescope/telescope.nvim",
  requires = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup({
      defaults = {
        file_ignore_patterns = { "node_modules", ".git", "dist", "*.log", "*.tmp" },
      },
    })
  end,
}
