-- vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open parent directory in Oil"})

-- Open terminal in horizontal split
vim.keymap.set(
	"n",
	"<leader>tt",
	"<cmd>ToggleTerm size=60 direction=horizontal<cr>",
	{ desc = "Terminal (horizontal)" }
)

-- Open terminal in vertical split
vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm size=60 direction=vertical<cr>", { desc = "Terminal (vertical)" })

-- Open terminal in floating window
vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "Terminal (float)" })

vim.keymap.set("n", "gl", function()
	vim.diagnostic.open_float()
end, {
	desc = "Open Diagnostics in Float",
})

vim.keymap.set("n", "<leader>cf", function()
	require("conform").format({
		lsp_format = "fallback",
	})
end, {
	desc = "Format current file",
})

-- LSP
vim.keymap.set("n", "<C-y>", "<cmd>lua vim.lsp.buf.hover()<cr>", { desc = "Show LSP hover info" })

--  buffers
vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>")
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>")
