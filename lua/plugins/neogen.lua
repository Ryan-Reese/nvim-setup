return {
  'danymat/neogen',
  -- Uncomment next line if you want to follow only stable versions
  version = '*',
  keys = {
    { '<Leader>doc', ":lua require('neogen').generate()<CR>", desc = 'Generate docstring' },
  },
  config = function()
    require('neogen').setup {
      enabled = true,
      input_after_comment = true,
      languages = {
        python = {
          template = {
            annotation_convention = 'numpydoc',
          },
        },
      },
      snippet_engine = 'luasnip',
    }
  end,
}
