-- Makes tmux and neovim navigation easy

return {
  {
    'christoomey/vim-tmux-navigator',
    lazy = false,
  },

  {
    'aserowy/tmux.nvim',
    config = function()
      require('tmux').setup {
        copy_sync = {
          enable = true,
        },

        navigation = {
          enable_default_keybinding = true,
        },
        resize = {
          enable_default_keybinding = true,
        },
      }
    end,
  },
}
