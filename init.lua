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

---

require('plugins')
require('lsp')

local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- ray-x/navigator.lua
require'navigator'.setup()

-- folke/todo-comments.nvim
require("todo-comments").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
}

-- b3nj5m1n/kommentary
require('kommentary.config').configure_language("default", {
    prefer_single_line_comments = true,
    use_consistent_indentation = true,
    ignore_whitespace = true
})
vim.api.nvim_set_keymap("n", "<leader>cc", "<Plug>kommentary_line_default", {})
vim.api.nvim_set_keymap("n", "<leader>c", "<Plug>kommentary_motion_default", {})
vim.api.nvim_set_keymap("x", "<leader>c", "<Plug>kommentary_visual_default", {})

-- kosayoda/nvim-lightbulb
vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]
require'nvim-lightbulb'.update_lightbulb {
    sign = {
        enabled = true,
        -- Priority of the gutter sign
        priority = 10
    },
    float = {
        enabled = true,
        -- Text to show in the popup float
        text = "💡",
        -- Available keys for window options:
        -- - height     of floating window
        -- - width      of floating window
        -- - wrap_at    character to wrap at for computing height
        -- - max_width  maximal width of floating window
        -- - max_height maximal height of floating window
        -- - pad_left   number of columns to pad contents at left
        -- - pad_right  number of columns to pad contents at right
        -- - pad_top    number of lines to pad contents at top
        -- - pad_bottom number of lines to pad contents at bottom
        -- - offset_x   x-axis offset of the floating window
        -- - offset_y   y-axis offset of the floating window
        -- - anchor     corner of float to place at the cursor (NW, NE, SW, SE)
        -- - winblend   transparency of the window (0-100)
        win_opts = {}
    },
    virtual_text = {
        enabled = true,
        -- Text to show at virtual text
        text = "💡",
        -- highlight mode to use for virtual text (replace, combine, blend), see :help nvim_buf_set_extmark() for reference
        hl_mode = "replace"
    },
    status_text = {
        enabled = true,
        -- Text to provide when code actions are available
        text = "💡",
        -- Text to provide when no actions are available
        text_unavailable = ""
    }
}

-- hoob3rt/lualine.nvim
require'lualine'.setup {
    options = {
        icons_enabled = true,
        theme = 'gruvbox',
        component_separators = {'', ''},
        section_separators = {'', ''},
        disabled_filetypes = {}
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {
        -- lualine_a = {},
        -- lualine_b = {'branch'},
        -- lualine_c = {'filename'},
        -- lualine_x = {},
        -- lualine_y = {},
        -- lualine_z = {}
    },
    extensions = {'quickfix', 'nvim-tree'}
}

-- jbyuki/nabla.nvim
vim.cmd('nnoremap <F5> :lua require("nabla").action()<CR>')

require'nvim-treesitter.configs'.setup {
    ensure_installed = 'maintained',
    highlight = {
        enable = true,
        custom_captures = {
            -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
            -- ["foo.bar"] = "Identifier"
        }
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm"
        }
    },
    indent = {enable = true}
}

-- vim.opt.foldmethod = 'expr'
-- vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'

-- nvim-telescope/telescope.nvim
vim.cmd([[
    nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
    nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
    nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
    nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
]])

-- Pocco81/AutoSave.nvim
require'autosave'.setup({
    enabled = true,
    execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
    events = {"InsertLeave", "TextChanged"},
    conditions = {
        exists = true,
        filename_is_not = {},
        filetype_is_not = {},
        modifiable = true
    },
    write_all_buffers = false,
    on_off_commands = true,
    clean_command_line_interval = 0,
    debounce_delay = 135
})
