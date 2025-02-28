return {
    -- Lackluster colorscheme
    {
        "slugbyte/lackluster.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("lackluster")
        end,
    },

    -- LSP for PHP and other languages
    { "neovim/nvim-lspconfig" },

    -- Treesitter for syntax highlighting
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

    -- PHP-specific plugin
    {
        "phpactor/phpactor",
        ft = "php",
        build = "composer install --no-dev -o",
        config = function()
            -- Example of setting up PHPActor
            vim.cmd([[ let g:phpactor#install_dir = '~/.local/share/nvim/phpactor' ]])
        end,
    },

     -- Python LSP setup with pyright
    {
        "neovim/nvim-lspconfig",
        config = function()
            require'lspconfig'.pyright.setup{}  -- Set up Pyright for Python
        end,
    },

    -- TypeScript LSP Setup
    {
        "neovim/nvim-lspconfig",
        config = function()
            require'lspconfig'.ts_ls.setup{}
        end,
    },
}
