-- 修改outline.nvim 配置

return {
  "hedyhli/outline.nvim",
  lazy = true,
  cmd = { "Outline", "OutlineOpen" },
  keys = { -- Example mapping to toggle outline
    { "<leader>o", "<cmd>Outline<CR>", desc = "大纲" },
  },
  opts = {
    -- Your setup opts here
  },
}
