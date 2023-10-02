return {
  'echasnovski/mini.surround',
  version = '*',
  config = function()
    require('mini.surround').setup({
      mappings = {
        add = 'ms',
        delete = 'md',
        find = 'mf',
        find_left = 'mF',
        highlight = 'mh',
        replace = 'mr',
        update_n_lines = 'mn',
        suffix_last = 'p',
        suffix_next = 'n',
      }
    })
  end,
}
