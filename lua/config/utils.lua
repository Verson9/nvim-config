-- Utils function to get Lombok path
local M = {}

function M.get_lombok_path()
	-- Use Neovim's `stdpath` to resolve the data directory (e.g., ~/.local/share/nvim)
	local lombok_jar = vim.fn.stdpath("data") .. "/mason/share/jdtls/lombok.jar"

	-- Optional: Check if the file exists
	if vim.fn.filereadable(lombok_jar) == 0 then
		vim.notify("Lombok not found at: " .. lombok_jar, vim.log.levels.WARN)
	end

	return lombok_jar
end

return M
