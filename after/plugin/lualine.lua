require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'bamboo',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
            statusline = 200,
            tabline = 200,
            winbar = 200,
        }
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {
            {
                '%=',
                separator = '',
            },
            {
                'filename',
                path = 1,
                shorting_target = 40,
                separator = "",
            },
            {
                'filetype',
                colored = true,
                icon_only = true,
            }
        },
        lualine_x = {'progress'},
        lualine_y = {'filesize'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {'fugitive', 'fzf', 'mason', 'oil', 'trouble'}
}

