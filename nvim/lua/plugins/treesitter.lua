return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				auto_install = true,
				ensure_installed = {
					"lua",
					"typescript",
					"javascript",
					"prisma",
					"html",
					"css",
					"vue",
					"svelte",
					"markdown",
				},
				highlight = { enabled = true },
				indent = {
					enabled = true,
					additional_vim_regex_highlighting = false,
				},
			})
		end,
	},
}
