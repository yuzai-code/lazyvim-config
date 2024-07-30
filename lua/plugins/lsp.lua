-- LSP keymaps
return {
  "neovim/nvim-lspconfig",
  opts = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()

    -- Change K  to gh
    for _, keymap in ipairs(keys) do
      if keymap[1] == "K" then
        keymap[1] = "gh" -- Change the key
      end
    end

    -- Add a new keymap for diagnostics
    table.insert(keys, { "gd", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>" })

    -- Optionally disable a keymap by setting its command to false
    -- Disable the "K" keymap
    table.insert(keys, { "K", false })
  end,
}
