-- /lua/custom/plugins/supermaven-nvim.lua
return {
  'supermaven-inc/supermaven-nvim',
  config = function()
    require('supermaven-nvim').setup {
      keymaps = {
        accept_suggestion = '<Tab>',
      },
      ignore_filetypes = { cpp = true },
      color = {
        suggestion_color = '#39ff14',
        cterm = 244,
      },
      log_level = 'info', -- set to "off" to disable logging completely
      disable_inline_completion = true, -- disables inline completion for use with cmp
      disable_keymaps = true, -- disables built-in keymaps for more manual control
    }
  end,
}