return {
  'rebelot/kanagawa.nvim',
  priority = 1000,
  config = function()
    require('kanagawa').setup({
      commentStyle = { italic = true },
      functionStyle = { bold = true },
      keywordStyle = { italic = false },
      statementStyle = { bold = false },
    });
    vim.cmd.colorscheme 'kanagawa'
  end,
};
