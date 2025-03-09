local M = {}

M.filetypes = {
	"python",
	"cisco",
	"junos",
	"markdown",
	"bash",
	"yaml",
	"json",
	"xml",
	"toml",
	"dockerfile",
	"javascript",
	"lua",
	"html",
	"css",
	"svg",
}

function M.set_filetype()
	vim.ui.select(M.filetypes, { prompt = "Set filetype:" }, function(choice)
		if choice then
			vim.cmd("setfiletype " .. choice)
		end
	end)
end

function M.setup()
	vim.keymap.set("n", "<leader>ux", M.set_filetype, { desc = "Set filetype" })
end

return M
