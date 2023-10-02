return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  --@type Flash.Config
  opts = {
    modes = {
      char = {
        keys = {
          "f",
          "F",
          "t",
          "T",
          [';'] = '<A-.>',
          [','] = '<A-,>',
        },
      },
    },
  },
}
