return {
  -- 更改 neo-tree 的默认配置
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      sources = {
        "filesystem",
        "buffers",
        "git_status",
        "document_symbols",
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false, -- 设为 false 显示隐藏文件
          hide_gitignored = false, -- 设为 false 显示 .gitignore 中的文件
        },
      },
    },
  },
}
