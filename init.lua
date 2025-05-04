require("config.lazy")

-- Use system clipboard
vim.api.nvim_set_option("clipboard", "unnamed")

-- Map "d" in normal mode to delete without yanking
vim.keymap.set("n", "d", '"_d', { noremap = true, silent = true })

-- Map "x" in normal mode to delete characters without yanking
vim.keymap.set("n", "x", '"_x', { noremap = true, silent = true })

-- Map "d" in visual mode to delete without yanking
vim.keymap.set("v", "d", '"_d', { noremap = true, silent = true })
