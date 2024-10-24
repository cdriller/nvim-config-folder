return {
	{
		"tpope/vim-fugitive",
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			on_attach = function()
				local gitsigns = require("gitsigns")

				-- Navigation
				vim.keymap.set("n", "]h", function()
					if vim.wo.diff then
						vim.cmd.normal({ "]h", bang = true })
					else
						gitsigns.nav_hunk("next")
					end
				end, {
					desc = "Next hunk",
				})

				vim.keymap.set("n", "[h", function()
					if vim.wo.diff then
						vim.cmd.normal({ "[h", bang = true })
					else
						gitsigns.nav_hunk("prev")
					end
				end, {
					desc = "Previous hunk",
				})

				vim.keymap.set("n", "<leader>hs", gitsigns.stage_hunk, { desc = "Stage hunk" })
				vim.keymap.set("n", "<leader>hr", gitsigns.reset_hunk, { desc = "Reset hunk" })
				vim.keymap.set("v", "<leader>hs", function()
					gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
				end)
				vim.keymap.set("v", "<leader>hr", function()
					gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
				end)
				vim.keymap.set("n", "<leader>hu", gitsigns.undo_stage_hunk, { desc = "Undo stage hunk" })
				vim.keymap.set("n", "<leader>hp", gitsigns.preview_hunk, { desc = "Preview hunk" })
				vim.keymap.set("n", "<leader>hd", gitsigns.toggle_deleted, { desc = "Toggle deleted hunks" })

				vim.keymap.set("n", "<leader>bc", function()
					gitsigns.blame_line({ full = true })
				end, { desc = "Show full line blame" })
				vim.keymap.set(
					"n",
					"<leader>bt",
					gitsigns.toggle_current_line_blame,
					{ desc = "Toggle current line blame" }
				)
			end,
		},
	},
}
