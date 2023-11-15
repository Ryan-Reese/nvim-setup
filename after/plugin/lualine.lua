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
        'filetype',
        colored = true,   -- Displays filetype icon in color if set to true
        icon_only = true, -- Display only an icon for filetype
        icon = { align = 'right' }, -- Display filetype icon on the right hand side
      },
      {
        'filename',
        path = 0,
        shorting_target = 40,
      },
    },
    lualine_x = {'filesize'},
    lualine_y = {'location'},
    lualine_z = {
      {
        "datetime",
        style = 'default'
      }}
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
  extensions = {'fugitive', 'fzf', 'trouble'}
}

