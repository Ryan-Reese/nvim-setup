local wilder = require('wilder')

wilder.setup({
    modes = {':', '/', '?'},
    next_key = '<Tab>',
    previous_key = '<S-Tab>'})

-- Disable Python remote plugin
wilder.set_option('use_python_remote_plugin', 0)

wilder.set_option('pipeline', {
    wilder.branch(
        wilder.cmdline_pipeline(),
        wilder.search_pipeline()
    ),
})

wilder.set_option('renderer', wilder.popupmenu_renderer({
    highlighter = wilder.basic_highlighter(),
    reverse = 0,        -- if 1, shows the candidates from bottom to top
    left = {' ', wilder.popupmenu_devicons()}
}))
