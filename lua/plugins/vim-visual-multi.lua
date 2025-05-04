return {
	"mg979/vim-visual-multi",
	config = function()
		-- Optional: Customize keybindings or behavior here
		vim.g.VM_mouse_mappings = 1
		vim.g.VM_maps = {
			["Add Cursor Down"] = "<C-Down>", -- Add cursor below
			["Add Cursor Up"] = "<C-Up>", -- Add cursor above
		}
	end,
}
