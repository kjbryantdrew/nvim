local config = function()
    if vim.fn.has("termguicolors") == 1 then
        vim.o["termguicolors"] = true
    end

    vim.o.background = "dark"
	vim.cmd([[colorscheme gruvbox]])
    require("lualine").setup {
        options = {
            theme = "gruvbox"
        }
    }
end

return config
