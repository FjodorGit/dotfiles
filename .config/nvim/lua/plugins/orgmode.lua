return {
  'nvim-orgmode/orgmode',
  dependencies = {
    { 'nvim-treesitter/nvim-treesitter', lazy = true },
  },
  event = 'VeryLazy',
  ft = 'org',
  config = function()
    -- Load treesitter grammar for org
    require('orgmode').setup_ts_grammar()

    -- Setup treesitter
    require('nvim-treesitter.configs').setup {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'org' },
      },
      ensure_installed = { 'org' },
    }

    -- Setup orgmode
    require('orgmode').setup {
      org_agenda_files = '~/Documents/notes/**/*',
      org_default_notes_file = '~/Documents/notes/refile.org',
      org_hide_emphasis_markers = true,
    }
  end,
}
