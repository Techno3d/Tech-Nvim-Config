function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", {bg = "none", ctermbg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none", ctermbg = "none" })
    vim.api.nvim_set_hl(0, "ColorColumn", { bg = "none", ctermbg = "none"})
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none", ctermbg = "none"})
end

ColorMyPencils()

isTransparent = true

function ToggleTransparency()
    if isTransparent then
        color = color or "rose-pine"
        vim.cmd.colorscheme(color)
        isTransparent = false
    else
        vim.api.nvim_set_hl(0, "Normal", {bg = "none", ctermbg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none", ctermbg = "none" })
        vim.api.nvim_set_hl(0, "ColorColumn", { bg = "none", ctermbg = "none"})
        isTransparent = true
    end
end

vim.keymap.set("n", "<leader>tt", ToggleTransparency)
