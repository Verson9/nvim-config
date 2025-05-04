return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("bufferline").setup({
			options = {
				mode = "buffers",
				numbers = "ordinal",
				close_command = "bdelete! %d",
				offsets = {
					{ filetype = "NvimTree", text = "File Explorer" },
				},
			},
		})
	end,
}
