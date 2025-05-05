return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	build = ":Copilot auth",
	event = "BufReadPost",
	opts = {
		suggestion = {
			enabled = not vim.g.ai_cmp,
			auto_trigger = true,
			hide_during_completion = vim.g.ai_cmp,
			keymap = {
				accept = "<CR>", -- handled by nvim-cmp / blink.cmp
				next = "<CS-]>",
				prev = "<CS-[>",
				dismiss = "<C-e>",
				accept_word = "<D-l>",
				accept_line = "<D-j>",
			},
		},
		panel = {
			enabled = true,
			layout = {
				position = "right",
			},
			keymap = {
				jump_prev = "<CS-[>",
				jump_next = "<CS-]>",
				accept = "<CR>",
				refresh = "gr",
				open = "<M-CR>",
			},
		},
		filetypes = {
			["*"] = true,
			markdown = true,
			help = true,
		},
	},
}
