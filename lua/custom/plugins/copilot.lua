return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = '<M-y>',
            accept_line = '<C-Y>',
          },
        },
      }
    end,
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require('telescope').setup {
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown {},
          },
        },
      }
      require('telescope').load_extension 'ui-select'
    end,
  },
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'zbirenbaum/copilot.lua' },
      { 'nvim-lua/plenary.nvim', branch = 'master' },
    },
    build = 'make tiktoken',
    opts = {
      context = { 'project', 'files', 'filenames', 'buffer' },
    },
    keys = {
      { '<leader>ccc', '<cmd>CopilotChatToggle<cr>', desc = 'Copilot Chat' },
      { '<leader>cce', '<cmd>CopilotChatExplain<cr>', desc = 'Copilot Chat - Explain Code' },
      { '<leader>ccf', '<cmd>CopilotChatFixDiagnostic<cr>', desc = 'Copilot Chat - Fix Diagnostic' },
    },
  },
}
