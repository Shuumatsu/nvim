local install_path = vim.fn.stdpath('data') ..
                         '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.system({
        'git', 'clone', 'https://github.com/wbthomason/packer.nvim',
        install_path
    })
    vim.api.nvim_command 'packadd packer.nvim'
end

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'sainnhe/gruvbox-material'

    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-treesitter/nvim-treesitter-textobjects'

    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'

    use {
        'ray-x/navigator.lua',
        requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}
    }

    use 'jbyuki/nabla.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}}
    }

    use 'morhetz/gruvbox'

    use {
        'vhyrro/neorg',
        config = function()
            require('neorg').setup {
                -- Tell Neorg what modules to load
                load = {
                    ['core.defaults'] = {}, -- Load all the default modules
                    ['core.norg.concealer'] = {} -- Allows for use of icons
                }
            }
        end,
        requires = 'nvim-lua/plenary.nvim'
    }

    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    use 'folke/which-key.nvim'

    use 'kosayoda/nvim-lightbulb'

    use 'b3nj5m1n/kommentary'
    use {'folke/todo-comments.nvim', requires = 'nvim-lua/plenary.nvim'}

    use 'simrat39/rust-tools.nvim'

    use "Pocco81/AutoSave.nvim"
end)

