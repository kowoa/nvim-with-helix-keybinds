-- Selecting entire lines
vim.keymap.set('n', 'x', [[:<C-u>execute (v:count>1 ? 'normal! V' .. (v:count-1) .. 'j' : 'normal! V')<CR>]],
  { silent = true })
vim.keymap.set('n', 'X', [[:<C-u>execute (v:count>1 ? 'normal! V' .. (v:count-1) .. 'k' : 'normal! V')<CR>]],
  { silent = true })
-- Lowercase `x` to extend selection to line below
vim.keymap.set('v', 'x', '<esc>`>jV`<o', { silent = true })
-- Uppercase `X` to extend selection to line above
vim.keymap.set('v', 'X', '<esc>`<kV`>o', { silent = true })

-- Enter insert mode
vim.keymap.set('v', 'i', 'vi', { nowait = true, noremap = true, silent = true })
vim.keymap.set('v', 'a', 'va', { nowait = true, noremap = true, silent = true })
vim.keymap.set('v', 'I', '<esc>`<i', { nowait = true, noremap = true, silent = true })
vim.keymap.set('v', 'A', '<esc>`>a', { nowait = true, noremap = true, silent = true })

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
-- Modified `w` to be more similar to Helix
vim.keymap.set('n', 'w', 'vlwh', { silent = true })
vim.keymap.set('n', 'W', 'vlWh', { silent = true })
vim.keymap.set('v', 'w', 'lwh', { silent = true })
vim.keymap.set('v', 'W', 'lWh', { silent = true })
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
vim.keymap.set('v', '/', [[:s/]])

-- Yank to system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
-- Paste system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>p', [["+p]])

-- Match mode (See mini.surround plugin for more keymaps)
vim.keymap.set('n', 'mi', 'vi', { desc = "Select matching inside" });
vim.keymap.set('n', 'ma', 'va', { desc = "Select matching around" });
