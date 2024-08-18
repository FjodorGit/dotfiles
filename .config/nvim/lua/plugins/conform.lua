return {
  'stevearc/conform.nvim',
  lazy = true,
  event = 'BufEnter',
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      -- Conform will run multiple formatters sequentially
      python = { 'isort', 'black' },
      -- Use a sub-list to run only the first available formatter
      javascript = { { 'prettierd', 'prettier' } },
      rust = { 'rustfmt' },
      julia = { 'JuliaFormatter' },
      sql = { 'pg_format' },
    },
  },
}
