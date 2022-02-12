local status, lualine = pcall(require, "lualine")
if (not status) then
    return
end

lualine.setup {
    options = {
        icons_enabled = true,
        theme = "gruvbox",
        section_separators = {left = "", right = ""},
        component_separators = {left = "", right = ""}, -- or left = "", right = ""
        disabled_filetypes = {},
        always_divide_middle = true
    },
    sections = {
        lualine_a = {"mode"},
        lualine_b = {
            "branch",
            "diff"
            --{"diagnostics", sources = {"nvim_lsp"}}
        },
        lualine_c = {"filename"},
        lualine_x = {
            "encoding",
            {
                "fileformat",
                symbols = {
                    --unix = "", -- e712
                    unix = "",
                    -- e711
                    dos = "", -- e70f
                    mac = "" -- e711
                }
            },
            "filetype"
        },
        lualine_y = {"progress"},
        lualine_z = {"location"}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {"filename"},
        lualine_x = {"location"},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = {"nvim-tree"}
}
