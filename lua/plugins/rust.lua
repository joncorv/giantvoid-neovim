return {
  -- Ensure Rust TreeSitter parser is installed
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "rust" })
    end,
  },
  -- Properly disable LazyVim's rust-analyzer
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = false,
      },
      setup = {
        rust_analyzer = function()
          return true -- Skip setup
        end,
      },
    },
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^4",
    lazy = false,
    ft = { "rust" },
    init = function()
      vim.g.rustaceanvim = {
        server = {
          settings = {
            ["rust-analyzer"] = {
              checkOnSave = {
                command = "clippy",
              },
            },
          },
        },
      }
    end,
  },
  {
    "Saecki/crates.nvim",
    ft = { "toml" },
    config = function()
      require("crates").setup({})
    end,
  },
}
