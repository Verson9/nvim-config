return {
	"stevearc/oil.nvim",
	--@module 'oil'
	--@type oil.SetupOpts
	opts = {},
	-- Optional dependencies
	dependencies = {
		{ "echasnovski/mini.icons", opts = {} },
	},
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,
	keys = {
		{ "-", "<cmd>Oil --float<CR>" },
	},
	config = function()
		require("oil").setup({
			delete_to_trash = true,
			skip_confirm_for_simple_edits = true,
			view_options = {
				show_hidden = true,
				permissions = true,
			},
			columns = {
				"icon",
				"permissions",
				"mtime",
				"git",
			},
			float = {
				padding = 10,
			},
			-- vim.api.nvim_create_autocmd("VimEnter", {
			-- 	callback = function()
			-- 		if vim.fn.argc() == 1 and vim.fn.isdirectory(vim.fn.argv(0)) == 1 then
			-- 			require("oil").open(vim.fn.getcwd()) -- Open Oil for the directory
			-- 		end
			-- 	end,
			-- }),
		})
	end,
}
