return {
  {
    'ribru17/bamboo.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('bamboo').setup {
        -- optional configuration here
        style = 'multiplex',
        transparent = true,
        -- Change code style ---
        -- Options are italic, bold, underline, none
        -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
        code_style = {
          comments = {},
          conditionals = {},
          namespaces = {},
          parameters = {},
        },

        -- Lualine options --
        lualine = {
          transparent = false, -- lualine center bar transparency
        },
      }

      vim.cmd.colorscheme 'bamboo'
    end,
  },
  {
    'vague2k/vague.nvim',
    config = function()
      require('vague').setup {
        -- optional configuration here
        transparent = true,
      }
      -- vim.cmd.colorscheme 'vague'
    end,
  },
}
