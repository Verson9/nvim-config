return {
	"echasnovski/mini.surround",
	version = false,
	config = function()
		require("mini.surround").setup({
			mappings = {
				add = "<leader>sa", -- Remap "sa" → "s" for adding surroundings
				delete = "<leader>sd", -- Delete surroundings with "ds"
				replace = "<leader>sr", -- Replace surroundings with "cs"
				highlight = "<leader>sh", -- Highlight surroundings (optional)
			},
		})
	end,
}
