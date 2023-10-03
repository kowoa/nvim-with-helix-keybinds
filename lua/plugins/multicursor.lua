return {
  'mg979/vim-visual-multi',
  branch = 'master',
  init = function()
    vim.g.VM_default_mappings = 0;
    vim.g.VM_maps = {
      ['Add Cursor Down'] = 'C',
      ['Add Cursor Up'] = '<A-C>',
    };
  end,
}
