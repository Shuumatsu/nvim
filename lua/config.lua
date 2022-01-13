vim.opt.guifont = 'Iosevka Term:h14'

vim.cmd([[
    " If the terminal supports italics, put hi Comment cterm=italic after colorshcme command.
    hi Comment cterm=italic

    if has('termguicolors')
        set termguicolors
    endif

    " For dark version.
    set background=dark
    " For light version.
    " set background=light
    " For tarnsparent background

    " Set contrast.
    " This configuration option should be placed before `colorscheme gruvbox-material`.
    " Available values: 'hard', 'medium'(default), 'soft'
    let g:gruvbox_material_background = 'soft'

    colorscheme gruvbox-material
]])

-- Remap space as leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', {noremap = true, silent = true})
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Remap for dealing with word wrap
vim.api.nvim_set_keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'",
                        {noremap = true, expr = true, silent = true})
vim.api.nvim_set_keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'",
                        {noremap = true, expr = true, silent = true})

vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.tabstop = 4 -- Number of spaces tabs count for
vim.opt.softtabstop = 4 -- Number of spaces tabs count for
vim.opt.shiftwidth = 4 -- Number of spaces tabs count for

-- highlight current line and column
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

vim.opt.hidden = true -- Enable background buffers
vim.opt.ignorecase = true -- Ignore case
vim.opt.joinspaces = false -- No double spaces with join
vim.opt.list = true -- Show some invisible characters
vim.opt.number = true -- Show line numbers
vim.opt.smartcase = true -- Do not ignore case with capitals
vim.opt.smartindent = true -- Insert indents automatically

vim.opt.splitbelow = true -- Put new windows below current
vim.opt.splitright = true -- Put new windows right of current

vim.opt.termguicolors = true -- True color support
vim.opt.wildmode = {'list', 'longest'} -- Command-line completion mode

vim.opt.wrap = false -- Disable line wrap

vim.opt.autoread = true -- a file has been detected to have been changed outside of Vim, automatically read it again.
vim.opt.scrolloff = 10 -- 光标移动到 buffer 的顶部和底部时保持 10 行距离

vim.cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}' -- disabled in visual mode


