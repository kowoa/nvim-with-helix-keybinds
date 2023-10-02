-- Selecting entire lines
vim.keymap.set('n', 'x', [[:<C-u>execute 'normal! V' .. (v:count-1) .. 'j'<CR>]],
  { silent = true })
vim.keymap.set('n', 'X', [[:<C-u>execute (v:count>1 ? 'normal! Vo' .. (v:count-1) .. 'ko' : 'normal! V')<CR>]],
  { silent = true })
-- Lowercase `x` to extend selection to line below
vim.keymap.set('v', 'x', 'j', { silent = true })
-- Uppercase `X` to extend selection to line above
vim.keymap.set('v', 'X', 'oko', { silent = true })

-- Toggle visual mode
vim.keymap.set({ 'n', 'v' }, ';', 'v', { silent = true })

-- Flip cursor position inside selection
vim.keymap.set('v', '<A-;>', 'o', { silent = true })

-- Repeat last action
vim.keymap.set({ 'n', 'v' }, '<A-.>', ';', { silent = true })

-- Add new lines
vim.keymap.set('v', 'o', '<esc>o', { silent = true })
vim.keymap.set('v', 'O', '<esc>O', { silent = true })

-- Delete single character under cursor
vim.keymap.set('n', 'dd', [[<cmd>lua << EOF
  if vim.fn.getline('.') == '' then
    vim.cmd('delete')
  else
    vim.cmd('normal! x')
  end
EOF<cr>]], { noremap = true, silent = true })

-- Change single character under cursor
vim.keymap.set('n', 'cc', 's', { silent = true })

-- Always enter visual mode before navigating
vim.keymap.set('n', 'w', 'vw', { silent = true })
vim.keymap.set('n', 'W', 'vW', { silent = true })
vim.keymap.set('n', 'b', 'vb', { silent = true })
vim.keymap.set('n', 'B', 'vB', { silent = true })
vim.keymap.set('n', 'e', 've', { silent = true })
vim.keymap.set('n', 'E', 'vE', { silent = true })
vim.keymap.set('n', '0', 'v0', { silent = true })
vim.keymap.set('n', '^', 'v^', { silent = true })
vim.keymap.set('n', '$', 'v$', { silent = true })
vim.keymap.set('n', 'f', 'vf', { silent = true })
vim.keymap.set('n', 'F', 'vF', { silent = true })
vim.keymap.set('n', 't', 'vt', { silent = true })
vim.keymap.set('n', 'T', 'vT', { silent = true })
-- Enter visual line mode for navigating via paragraphs
vim.keymap.set('n', '{', 'V{', { silent = true })
vim.keymap.set('n', '}', 'V}', { silent = true })

-- Goto mode
vim.keymap.set('n', 'gh', 'v0', { silent = true })
vim.keymap.set('n', 'gs', 'v^', { silent = true })
vim.keymap.set('n', 'gl', 'v$', { silent = true })
vim.keymap.set({ 'n', 'v' }, 'ge', 'G', { silent = true })
vim.keymap.set('v', 'gh', '0', { silent = true })
vim.keymap.set('v', 'gs', '^', { silent = true })
vim.keymap.set('v', 'gl', '$', { silent = true })
-- Buffer navigation
vim.keymap.set('n', 'gn', '<cmd>bn<cr>', { silent = true })
vim.keymap.set('n', 'gp', '<cmd>bp<cr>', { silent = true })

-- Select entire buffer
vim.keymap.set('n', '%', 'ggvG$', { silent = true })

-- Find and replace inside selection
vim.keymap.set('v', 's', [[:s/]])

-- Yank to system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
-- Paste system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>p', [["+p]])
