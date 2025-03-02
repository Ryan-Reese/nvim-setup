return {
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
    }

    vim.cmd.colorscheme 'bamboo'
  end,
}
