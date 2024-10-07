return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim",
	},
	config = function()
		vim.keymap.set("n", "<C-n>", "<cmd>Neotree filesystem reveal left<CR>", { noremap = true, silent = true })

		require("neo-tree").setup({
			filesystem = {
				hijack_netrw_behavior = "open_default",
				filtered_items = {
					hide_dotfiles = false, -- Show hidden files (dotfiles)
					hide_gitignored = false, -- Optionally show gitignored files
					hide_by_name = { ".git" }, -- Hide .git directory specifically
				},
			},
		})
	end,
}
