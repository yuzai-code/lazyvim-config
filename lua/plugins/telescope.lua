return {
  "nvim-telescope/telescope.nvim",
  requires = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup({
      defaults = {
        file_ignore_patterns = {
          "node_modules", -- 忽略 node_modules 文件夹
          "%.git", -- 忽略 .git 文件夹
          "dist", -- 忽略 dist 文件夹
          "%.log", -- 忽略所有 .log 文件
          "%.tmp", -- 忽略所有 .tmp 文件
          "%.DS_Store", -- 忽略所有 .DS_Store 文件
          "%.cache", -- 忽略所有 .cache 文件
          "__pycache__", -- 忽略 __pycache__ 文件夹
          "venv", -- 忽略 venv 文件夹
          "%.exe", -- 忽略所有 .exe 文件
          "%.dll", -- 忽略所有 .dll 文件
        },
      },
    })
  end,
}
