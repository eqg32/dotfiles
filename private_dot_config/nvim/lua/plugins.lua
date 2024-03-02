local function clone_paq()
    local path = vim.fn.stdpath("data") .. "/site/pack/paqs/start/paq-nvim"
    local is_installed = vim.fn.empty(vim.fn.glob(path)) == 0
    if not is_installed then
        vim.fn.system { "git", "clone", "--depth=1", "https://github.com/savq/paq-nvim.git", path }
        return true
    end
end

local function bootstrap_paq(packages)
    local first_install = clone_paq()
    vim.cmd.packadd("paq-nvim")
    local paq = require("paq")
    if first_install then
        vim.notify("Installing plugins... If prompted, hit Enter to continue.")
    end
    paq(packages)
    paq.install()
end

bootstrap_paq {
    -- themes
    "sainnhe/everforest",
    'shaunsingh/nord.nvim',
    'olivercederborg/poimandres.nvim',
    {'rose-pine/neovim', as = "rose-pine"},
    'marko-cerovac/material.nvim',
    "rebelot/kanagawa.nvim",
    "EdenEast/nightfox.nvim",
    "sainnhe/gruvbox-material",
    'rmehri01/onenord.nvim',
    -- other plugins
    "anuvyklack/windows.nvim",
    "anuvyklack/middleclass",
    "anuvyklack/animation.nvim",
    "karb94/neoscroll.nvim",
    "edluffy/specs.nvim",
    "MunifTanjim/nui.nvim",
    "m4xshen/autoclose.nvim",
    "RRethy/vim-illuminate",
    "folke/twilight.nvim",
    "folke/neodev.nvim",
    "folke/which-key.nvim",
    "stevearc/dressing.nvim",
    "smjonas/inc-rename.nvim",
    "stevearc/oil.nvim",
    "karb94/neoscroll.nvim",
    "NeogitOrg/neogit",
    'stevearc/oil.nvim',
    'savq/paq-nvim',
    'nvim-lua/plenary.nvim',
    'mawkler/modicator.nvim',
    "simrat39/rust-tools.nvim",
    'NvChad/nvim-colorizer.lua',
    'nvim-tree/nvim-tree.lua',
    'numToStr/Comment.nvim',
    'nvim-telescope/telescope.nvim',
    'nvim-lualine/lualine.nvim',
    'raimondi/delimitmate',
    'akinsho/bufferline.nvim',
    'nvim-tree/nvim-web-devicons',
    -- 'akinsho/toggleterm.nvim',
    'ryanoasis/vim-devicons',
    'ap/vim-css-color',
    'lukas-reineke/indent-blankline.nvim',
    'gelguy/wilder.nvim',
    'nvim-treesitter/nvim-treesitter',
    'startup-nvim/startup.nvim',
    'nvim-telescope/telescope-file-browser.nvim',
    'goolord/alpha-nvim',
    'neovim/nvim-lspconfig',
    -- nvim-cmp
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
    -- 'is0n/jaq-nvim',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim'
}
