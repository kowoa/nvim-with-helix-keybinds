return {
  'folke/flash.nvim',
  enabled = false,
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
