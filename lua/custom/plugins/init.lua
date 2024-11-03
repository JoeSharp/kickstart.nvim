-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'nvim-tree/nvim-tree.lua',
    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
      -- set termguicolors to enable highlight groups
      vim.opt.termguicolors = true

      -- empty setup using defaults
      require('nvim-tree').setup {
        view = {
          side = 'left',
          width = 40,
        },
      }
      vim.keymap.set('n', '<C-n>', ':NvimTreeFindFileToggle<CR>', { desc = 'Toggle File Tree' })
    end,
  },
}
