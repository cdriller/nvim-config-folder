return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup({})

    vim.keymap.set("n", "<leader>a", function()
      harpoon:list():add()
    end, {
      desc = "harpoon: add current file",
    })
    vim.keymap.set("n", "<leader>A", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, {
      desc = "harpoon: edit list",
    })

    vim.keymap.set("n", "<C-a>", function()
      harpoon:list():select(1)
    end, {
      desc = "harpoon: select file 1",
    })
    vim.keymap.set("n", "<C-s>", function()
      harpoon:list():select(2)
    end, {
      desc = "harpoon: select file 2",
    })
    vim.keymap.set("n", "<C-d>", function()
      harpoon:list():select(3)
    end, {
      desc = "harpoon: select file 3",
    })
    vim.keymap.set("n", "<C-f>", function()
      harpoon:list():select(4)
    end, {
      desc = "harpoon: select file 4",
    })

    vim.keymap.set("n", "[f", function()
      harpoon:list():prev()
    end, {
      desc = "Previous harpooned file",
    })
    vim.keymap.set("n", "]f", function()
      harpoon:list():next()
    end, {
      desc = "Next harpooned file",
    })
  end,
}
