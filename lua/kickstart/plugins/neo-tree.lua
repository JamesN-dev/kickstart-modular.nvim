-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          '.DS_Store',
          'thumbs.db',
        },
        always_show = {
          '.git',
          '.env',
          '.config',
          '.gitignore',
          '.config-files',
          '.next',
        },
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
    event_handlers = {
      {
        event = 'file_open_requested',
        handler = function()
          -- auto close
          require('neo-tree.command').execute { action = 'close' }
        end,
      },
    },
  },
}
