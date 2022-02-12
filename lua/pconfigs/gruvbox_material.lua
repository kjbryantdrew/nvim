local config = function()
    if vim.fn.has("termguicolors") == 1 then
        vim.o["termguicolors"] = true
    end

    -- vim.o.background = "dark"
    vim.g.gruvbox_material_statusline_style = "original"
    vim.g.gruvbox_material_background = 'medium'
	vim.cmd([[colorscheme gruvbox-material]])
    require("lualine").setup {
        options = {
            theme = "gruvbox-material"
        }
    }
end

return config
