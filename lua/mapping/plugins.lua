local bind = require('mapping.bind')
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd

local plugin_mappings = {
	-- packer
    ['n|<Leader>ps'] = map_cr('PackerSync'):with_silent():with_noremap(), -- 同步插件
    ['n|<Leader>pi'] = map_cr('PackerInstall'):with_silent():with_noremap(), -- 安装插件
    ['n|<Leader>pr'] = map_cr('PackerClean'):with_silent():with_noremap(), -- 清理插件
    ['n|<Leader>pc'] = map_cr('PackerCompile'):with_silent():with_noremap(), -- 编译插件
	
    -- lsp
    ['n|gd'] = map_cr('lua vim.lsp.buf.definition()'):with_silent():with_noremap(), -- 进入定义
    ['n|<Leader>k'] = map_cr('Lspsaga hover_doc'):with_silent():with_noremap(), -- 查看文档
    ['n|<Leader>rn'] = map_cr('Lspsaga rename'):with_silent():with_noremap(), -- 重命名
    ['n|gh'] = map_cr('Lspsaga lsp_finder'):with_silent():with_noremap(), -- 查找引用
    ['n|<leader>en'] = map_cr('Lspsaga diagnostic_jump_next'):with_silent():with_noremap(), -- 跳转到下个错误
    ['n|<leader>ep'] = map_cr('Lspsaga diagnostic_jump_prev'):with_silent():with_noremap(), -- 跳转到上个错误
    ['n|<leader>ft'] = map_cr('Lspsaga open_floaterm'):with_silent():with_noremap(), -- 打开浮动终端
    -- ['n|<Leader>im'] = map_cr([[lua require'telescope'.extensions.goimpl.goimpl{}]]):with_silent():with_noremap(), -- 实现接口
    -- ['n|<Leader>f'] = map_cr('lua vim.lsp.buf.formatting()'):with_silent():with_noremap(),
    -- ['n|<Leader>ca'] = map_cr('lua vim.lsp.buf.code_action()'):with_silent():with_noremap(),
    -- ['n|<Leader>gr'] = map_cr('lua vim.lsp.buf.references()'):with_silent():with_noremap(),

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    -- buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    -- buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    -- buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    -- buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    -- buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    -- buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    -- buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    -- buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    -- buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    -- buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    -- buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    -- buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    -- buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
    -- buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    -- buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
    -- buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
    -- buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

    -- nvim-tree
    ['n|<Leader>e'] = map_cr('NvimTreeToggle'):with_silent():with_noremap(), -- 呼出文件树

    -- toggleterm
    ['n|<leader>t'] = map_cr('ToggleTerm'):with_silent():with_noremap(), -- 呼出命令行窗口

    -- hop.nvim
    ['n|<Leader><Leader>w'] = map_cr('HopWord'):with_silent():with_noremap(), -- 跳转到某个单词
    ['n|<Leader><Leader>l'] = map_cr('HopLine'):with_silent():with_noremap(), -- 跳转到某行

    -- telescope
    ['n|<leader>ff'] = map_cr('Telescope find_files'):with_silent():with_noremap(), -- 查找文件
    ['n|<leader>fg'] = map_cr('Telescope live_grep'):with_silent():with_noremap(), -- 查找当前buffer内容
    ['n|<leader>fb'] = map_cr('Telescope buffers'):with_silent():with_noremap(), -- 查找buffer列表
    ['n|<leader>fh'] = map_cr('Telescope help_tags'):with_silent():with_noremap(), -- 帮助

    -- lazygit
    ['n|<leader>lg'] = map_cr('LazyGit'):with_silent():with_noremap(), -- 呼出 lazygit，requirement: 安装lazygit

    -- vista
    ['n|<leader>v'] = map_cr('Vista!!'):with_silent():with_noremap(), -- 右侧呼出当前buffer的tags

    -- comment
    ['n|<leader>cl'] = map_cmd('<Plug>kommentary_line_default'), -- 行注释
    ['v|<leader>cl'] = map_cmd('<Plug>kommentary_visual_default<C-c>'), -- visual模式下注释

    --[[ -- rest.nvim
    ['n|<Leader>rr'] = map_cmd('<Plug>RestNvim'),
    ['n|<Leader>rc'] = map_cmd('<Plug>RestNvimPreview'),
    ['v|<Leader>rl'] = map_cmd('<Plug>RestNvimLast'), ]]

	-- bufferline
	['n|<leader>bn'] = map_cr('BufferLineCycleNext'):with_silent():with_noremap(), -- jump to next navigate tag
	['n|<leader>bp'] = map_cr('BufferLineCyclePrev'):with_silent():with_noremap(), -- jump to preview navigate tag
	['n|<leader>bd'] = map_cr('bd'):with_silent():with_noremap(), -- close buffer
	['n|<leader>bl'] = map_cr('buffers'):with_silent():with_noremap(), -- buffer list
	['n|<leader>b1'] = map_cr('buffer 1'):with_silent():with_noremap(), -- buffer list
	['n|<leader>b2'] = map_cr('buffer 2'):with_silent():with_noremap(), -- buffer list
	['n|<leader>b3'] = map_cr('buffer 3'):with_silent():with_noremap(), -- buffer list
	['n|<leader>b4'] = map_cr('buffer 4'):with_silent():with_noremap(), -- buffer list
	['n|<leader>b5'] = map_cr('buffer 5'):with_silent():with_noremap(), -- buffer list
	['n|<leader>b6'] = map_cr('buffer 6'):with_silent():with_noremap(), -- buffer list
	['n|<leader>b7'] = map_cr('buffer 7'):with_silent():with_noremap(), -- buffer list
	['n|<leader>b8'] = map_cr('buffer 8'):with_silent():with_noremap(), -- buffer list
	['n|<leader>b9'] = map_cr('buffer 9'):with_silent():with_noremap(), -- buffer list

	-- 格式化代码
	['n|<leader>bf'] = map_cr('Format'):with_silent():with_noremap(), -- format code
}

bind.nvim_load_mapping(plugin_mappings)
