isTransparent = true

function ToggleTransparency()
    if isTransparent then
        vim.cmd.colorscheme("rose-pine")
        isTransparent = false
    else
        vim.api.nvim_set_hl(0, "Normal", {bg = "none", ctermbg = "none" })
        vim.api.nvim_set_hl(0, "NormalNC", {bg = "none", ctermbg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none", ctermbg = "none" })
        vim.api.nvim_set_hl(0, "ColorColumn", { bg = "none", ctermbg = "none"})
        isTransparent = true
    end
end

vim.keymap.set("n", "<leader>tt", ToggleTransparency)

return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		vim.cmd("colorscheme rose-pine")
        vim.api.nvim_set_hl(0, "Normal", {bg = "none", ctermbg = "none" })
        vim.api.nvim_set_hl(0, "NormalNC", {bg = "none", ctermbg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none", ctermbg = "none" })
        vim.api.nvim_set_hl(0, "ColorColumn", { bg = "none", ctermbg = "none"})
	end
}
