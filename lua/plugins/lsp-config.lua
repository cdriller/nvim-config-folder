return {
  {
    "williamboman/mason.nvim",
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "gopls",
        "phpactor",
        "ts_ls",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")

      -- configure nvim lsp client for servers
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })

      lspconfig.gopls.setup({
        capabilities = capabilities,
      })

      lspconfig.texlab.setup({
        capabilities = capabilities,
      })

      lspconfig.phpactor.setup({
        capabilities = capabilities,
      })

      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })

      lspconfig.pyright.setup({
        capabilities = capabilities,

      })

      -- lsp keymaps
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {
        desc = "lsp hover",
      })
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {
        desc = "lsp declaration",
      })
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {
        desc = "lsp definition",
      })
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {
        desc = "lsp implemention",
      })
      vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, {
        desc = "lsp rename",
      })
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {
        desc = "show lsp code actions",
      })
    end,
  },
}
