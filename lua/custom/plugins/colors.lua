function ColorMyPencils(color)
  color = color or 'rose-pine-moon'
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

return {
  {
    -- 'olimorris/onedarkpro.nvim',
    'navarasu/onedark.nvim',
    -- lazy = false,
    -- priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      require('onedark').setup {
        style = 'darker',
        code_style = { comments = 'none' },
        highlights = { ['@variable'] = { fg = '#e55561' } },
      }
      -- vim.cmd.colorscheme 'onedark'
      ColorMyPencils()
    end,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup {
        disable_background = true,
        styles = {
          italic = false,
        },
      }

      ColorMyPencils()
    end,
  },
}
