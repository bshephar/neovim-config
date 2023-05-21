-- set colorscheme to nightfly with protected call
-- in case it isn't installed
--local status, _ = pcall(vim.cmd, "colorscheme catppuccin")
--require("catppuccin").setup({
--	flavour = "macchiato",
--})
-- require("catppuccin").load()


--local status, _ = pcall(vim.cmd, "colorscheme onedark")
--require("onedark").setup({
--	style = "deep",
--})
-- require("onedark").load()
--

local status, _ = pcall(vim.cmd, "colorscheme oh-lucy")
--require("oh-lucy").setup({
--	style = "deep",
--})
-- require("oh-lucy").load()
--

if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end
