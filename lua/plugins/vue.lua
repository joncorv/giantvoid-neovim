return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "vue", "typescript", "javascript", "css", "scss" })

      -- Configure Vue parser to properly handle CSS sections
      opts.highlight = opts.highlight or {}
      opts.highlight.additional_vim_regex_highlighting = { "vue" }
    end,
  },
}
