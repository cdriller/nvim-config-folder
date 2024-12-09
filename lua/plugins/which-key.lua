return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    keys = {
      scroll_down = "<down>", -- binding to scroll down inside the popup
      scroll_up = "<up>", -- binding to scroll up inside the popup
    },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
