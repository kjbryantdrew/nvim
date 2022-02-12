local status, formatter = pcall(require, "formatter")
if (not status) then
    return
end
require("formatter").setup(
    {
        filetype = {
            python = {
                function()
                    return {
                        exe = "python3 -m autopep8",
                        args = {
                            "--in-place --aggressive --aggressive",
                            vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))
                        },
                        stdin = false
                    }
                end
            },
            json = {
                function()
                    return {
                        exe = "python3 -m json.tool",
                        args = {
                            "--indent 2",
                            vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))
                        },
                        stdin = false
                    }
                end
            },
            c = {
                -- clang-format
                function()
                    return {
                        exe = "clang-format",
                        args = {"--assume-filename", vim.api.nvim_buf_get_name(0)},
                        stdin = true,
                        cwd = vim.fn.expand("%:p:h") -- Run clang-format in cwd of the file.
                    }
                end
            },
            cpp = {
                -- clang-format
                function()
                    return {
                        exe = "clang-format",
                        args = {"--assume-filename", vim.api.nvim_buf_get_name(0)},
                        stdin = true,
                        cwd = vim.fn.expand("%:p:h") -- Run clang-format in cwd of the file.
                    }
                end
            },
            sh = {
                -- clang-format
                function()
                    return {
                        exe = "shfmt",
                        args = {"-i 4 -ci -fn -sr", vim.api.nvim_buf_get_name(0)},
                        stdin = true,
                        cwd = vim.fn.expand("%:p:h") -- Run clang-format in cwd of the file.
                    }
                end
            },
            sql = {
                function()
                    return {
                        exe = "python3 -m sqlparse",
                        args = {"-r --indent_width 4 --indent_columns -s", vim.api.nvim_buf_get_name(0)},
                        stdin = true,
                        cwd = vim.fn.expand("%:p:h") -- Run clang-format in cwd of the file.
                    }
                end
            },
            lua = {
                -- luafmt
                function()
                    return {
                        exe = "luafmt",
                        args = {"--indent-count", 4, "--stdin"},
                        stdin = true
                    }
                end
            }
        }
    }
)
