return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 20, -- Default size for horizontal/vertical splits
			open_mapping = [[<C-\>]], -- Keybinding to toggle the terminal
			hide_numbers = true, -- Hide line numbers in the terminal
			shade_filetypes = {}, -- Filetypes to exclude from shading
			shade_terminals = true, -- Add a slight transparency effect
			shading_factor = "1", -- Transparency level
			start_in_insert = true, -- Start in insert mode
			persist_size = true, -- Persist terminal size across sessions
			direction = "horizontal", -- Default direction
		})
	end,
}
