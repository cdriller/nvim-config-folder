return {
	"nvim-lualine/lualine.nvim",

	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			theme = "dracula",
			globalstatus = true,
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "diff", "diagnostics" },
			lualine_c = {},
			lualine_x = { "encoding", "fileformat", "filetype" },
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
		tabline = {
			-- lualine_a = { "location" },
			lualine_b = { "branch" },
			lualine_c = { "filename" },
			-- lualine_x = { "buffers" },
			-- lualine_y = { "progress" },
			lualine_y = { { "filename", path = 2 } },
		},
		winbar = {
			-- lualine_b = { "filename" },
		},
		inactive_winbar = {
			-- lualine_b = { "filename" },
		},
	},
}
