return{
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()

      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {
        desc = "telescope search file"
      })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {
        desc = "telescope live grep"
      })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {
        desc = "telescope search open buffers"
      })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {
        desc = "telescope search help"
      })
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      -- This is your opts table
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}
