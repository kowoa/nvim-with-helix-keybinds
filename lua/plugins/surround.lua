return {
  'echasnovski/mini.surround',
  version = '*',
  config = function()
    require('mini.surround').setup({
      mappings = {
        suffix_last = 'p',
        suffix_next = 'n',
      }
    })
  end,
}
