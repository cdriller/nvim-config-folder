return {
	"akinsho/flutter-tools.nvim",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("flutter-tools").setup({
			fvm = true,
		})

		local telescope = require("telescope")

		telescope.load_extension("flutter")

		-- vim.keymap.set('n', '<leader>fd', function ()
		--   telescope.load_extension("flutter")
		-- end, {
		--   desc = "lsp declaration"
		-- })
	end,
}
