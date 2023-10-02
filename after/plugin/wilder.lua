local wilder = require('wilder')

wilder.setup({modes = {':', '/', '?'}})
--
-- Disable Python remote plugin
wilder.set_option('use_python_remote_plugin', 0)

wilder.set_option('pipeline', {
  wilder.branch(
  wilder.cmdline_pipeline({
    fuzzy = 1,
    set_pcre2_pattern = 1,
  }),
  wilder.python_search_pipeline({
    pattern = 'fuzzy',
  })
  ),
})

wilder.set_option('renderer', wilder.popupmenu_renderer({
  highlighter = wilder.basic_highlighter(),
  reverse = 0,        -- if 1, shows the candidates from bottom to top
  left = {' ', wilder.popupmenu_devicons()},
})
)
