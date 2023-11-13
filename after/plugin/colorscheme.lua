-- rose-pine
require('rose-pine').setup({
    --- @usage 'auto'|'main'|'moon'|'dawn'
    variant = 'moon',
    --- @usage 'main'|'moon'|'dawn'
    dark_variant = 'moon',
    bold_vert_split = false,
    dim_nc_background = false,
    disable_background = true,
    disable_float_background = false,
    disable_italics = true,

    --- @usage string hex value or named color from rosepinetheme.com/palette
    groups = {
        background = 'base',
        background_nc = '_experimental_nc',
        panel = 'surface',
        panel_nc = 'base',
        border = 'highlight_med',
        comment = 'muted',
        link = 'iris',
        punctuation = 'subtle',

        error = 'love',
        hint = 'iris',
        info = 'foam',
        warn = 'gold',

        headings = {
            h1 = 'iris',
            h2 = 'foam',
            h3 = 'rose',
            h4 = 'gold',
            h5 = 'pine',
            h6 = 'foam',
        }
        -- or set all headings at once
        -- headings = 'subtle'
    },

    -- Change specific vim highlight groups
    -- https://github.com/rose-pine/neovim/wiki/Recipes
    highlight_groups = {
        ColorColumn = { bg = 'rose' },

        -- Blend colours against the "base" background
        CursorLine = { bg = 'foam', blend = 10 },
        StatusLine = { fg = 'love', bg = 'love', blend = 10 },
    }
})

-- nightfox
require('nightfox').setup({
    options = {
        -- Compiled file's destination location
        compile_path = vim.fn.stdpath("cache") .. "/nightfox",
        compile_file_suffix = "_compiled", -- Compiled file suffix
        transparent = true,     -- Disable setting background
        terminal_colors = true,  -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
        dim_inactive = false,    -- Non focused panes set to alternative background
        module_default = true,   -- Default enable value for modules
        colorblind = {
            enable = false,        -- Enable colorblind support
            simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
            severity = {
                protan = 0,          -- Severity [0,1] for protan (red)
                deutan = 0,          -- Severity [0,1] for deutan (green)
                tritan = 0,          -- Severity [0,1] for tritan (blue)
            },
        }
    },
})

-- mellow
vim.g.mellow_transparent = true

-- bamboo
require('bamboo').setup {
    -- Main options --
    -- NOTE: to use the light theme, set `vim.o.background = 'light'`
    style = 'multiplex', -- Choose between 'vulgaris' (regular), 'multiplex' (greener), and 'light'
    toggle_style_key = "<leader>ts", -- Keybind to toggle theme style. Leave it nil to disable it, or set it to a string, e.g. "<leader>ts"
    toggle_style_list = { 'vulgaris', 'multiplex', 'light' }, -- List of styles to toggle between
    transparent = true, -- Show/hide background
    dim_inactive = false, -- Dim inactive windows/buffers
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
    code_style = {
        comments = 'none',
        conditionals = 'none',
        keywords = 'none',
        functions = 'none',
        namespaces = 'none',
        parameters = 'none',
        strings = 'none',
        variables = 'none',
    },

    -- Lualine options --
    lualine = {
        transparent = false, -- lualine center bar transparency
    },

    -- Plugins Config --
    diagnostics = {
        darker = false, -- darker colors for diagnostic
        undercurl = true, -- use undercurl instead of underline for diagnostics
        background = true, -- use background color for virtual text
    },
}
-- Set colorscheme after options
-- vim.cmd('colorscheme rose-pine')
-- vim.cmd('colorscheme mellow')
-- vim.cmd("colorscheme duskfox")

-- set colorscheme and transparency
function ColorBackground(color)
    color = color
    vim.cmd.colorscheme(color)
    --
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorBackground("bamboo")

