return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim', 'nvim-lua/popup.nvim' },
        event = 'VeryLazy',
        config = function() require 'alex.ui.telescope' end,
    },
    {
        'mfussenegger/nvim-dap',
        dependencies = { 'rcarriga/nvim-dap-ui' },
        keys = { { 'F1' }, { 'F2' } },
        lazy = true,
        config = function()
            require 'alex.lang.debugger.dap'
            require 'alex.lang.debugger.ui'
        end,
    },
    {
        'glepnir/dashboard-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        lazy = false,
        priority = 999,
        config = function() require 'alex.ui.dashboard' end,
    },
    {
        'NvChad/nvim-colorizer.lua',
        event = 'VeryLazy',
        config = function() require 'alex.ui.colorizer' end,
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        lazy = false,
        config = function() require 'alex.ui.lualine' end,
    },
    {
        'akinsho/bufferline.nvim',
        version = '*',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        lazy = false,
        config = function() require 'alex.ui.bufferline' end,
    },
    {
        'folke/trouble.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        keys = { '<leader>d', '<leader>D' },
        event = 'VeryLazy',
        config = function() require 'alex.lang.lsp.trouble' end,
    },
    {
        'folke/noice.nvim',
        dependencies = { 'MunifTanjim/nui.nvim', 'rcarriga/nvim-notify' },
        event = 'VeryLazy',
        config = function() require 'alex.ui.noice' end,
    },
    {
        'aserowy/tmux.nvim',
        config = function() return require('tmux').setup() end,
        event = 'VeryLazy',
    },
    {
        'lukas-reineke/indent-blankline.nvim',
        event = 'VeryLazy',
        config = function() require 'alex.ui.indent-blankline' end,
    },
    {
        'RRethy/vim-illuminate',
        event = 'VeryLazy',
        config = function() require 'alex.ui/illuminate' end,
    },
    { 'preservim/nerdcommenter', event = 'VeryLazy' },
    { 'tpope/vim-commentary', event = 'VeryLazy' },
    {
        'ggandor/leap.nvim',
        dependencies = 'tpope/vim-repeat',
        keys = { 's', 'S' },
        config = function() require 'alex.ui.leap' end,
    },
    {
        'lewis6991/gitsigns.nvim',
        event = 'VeryLazy',
        config = function() require 'alex.ui.gitsigns' end,
    },
    {
        'sindrets/diffview.nvim',
        event = 'VeryLazy',
        config = function() require 'alex.ui.diffview' end,
    },
    {
        'folke/which-key.nvim',
        event = 'VeryLazy',
        config = function() require 'alex.ui.which-key' end,
    },
    { 'sudormrfbin/cheatsheet.nvim', event = 'VeryLazy' },
    {
        'nvim-tree/nvim-tree.lua',
        version = '*',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function() require 'alex.ui.tree' end,
    },
    {
        'mfussenegger/nvim-lint',
        event = 'VeryLazy',
        config = function() require 'alex.lang.linter' end,
    },
    { 'fladson/vim-kitty', event = 'VeryLazy' },
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects', 'nvim-treesitter/playground' },
        build = { 'TSUpdate', 'TSUpdateSync' },
        event = 'VeryLazy',
        config = function() require 'alex.lang.treesitter' end,
    },
    {
        'neovim/nvim-lspconfig',
        event = 'VeryLazy',
        config = function() require 'alex.lang.lsp.clients' end,
    },
    {
        'glepnir/lspsaga.nvim',
        event = 'VeryLazy',
        config = function() require 'alex.lang.lsp.lspsaga' end,
    },
    {
        'L3MON4D3/LuaSnip',
        dependencies = { 'rafamadriz/friendly-snippets' },
        build = 'make install_jsregexp',
        -- This breaks when lazyloading, not sure why...
    },
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-omni',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'saadparwaiz1/cmp_luasnip',
        },
        event = 'VeryLazy',
    },
    {
        'lervag/vimtex',
        ft = { 'tex', 'latex' },
        config = function() require 'alex.lang.tools.latex' end,
    },

    -- Themes
    {
        'AlexvZyl/nordic.nvim',
        branch = 'dev',
        priority = 1000,
        lazy = false,
        config = function() require 'alex.themes.nordic' end,
    },
    { 'sainnhe/gruvbox-material', lazy = true },
    { 'EdenEast/nightfox.nvim', lazy = true },
    { 'catppuccin/nvim', lazy = true },
    { 'folke/tokyonight.nvim', lazy = true },
    { 'sainnhe/everforest', lazy = true },
    { 'shaunsingh/nord.nvim', lazy = true },
    { 'rebelot/kanagawa.nvim', lazy = true },
    { 'marko-cerovac/material.nvim', lazy = true },
    { 'Mofiqul/vscode.nvim', lazy = true },
    { 'navarasu/onedark.nvim', lazy = true },
    { 'projekt0n/github-nvim-theme', lazy = true },
    { 'Shatur/neovim-ayu', lazy = true },
}