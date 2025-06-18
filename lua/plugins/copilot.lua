return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    require('copilot').setup {
      panel = {
        enabled = false,
      },
      suggestion = {
        auto_trigger = false,
        trigger_on_accept = true,
        keymap = {
          accept = '<C-j>',
          next = false,
          prev = false,
          dismiss = '<C-k>',
        },
      },
    }
  end,
}
