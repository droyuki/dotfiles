local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<leader>w', '<C-w-w>')
map('n','-', '$') -- map - to END
map('n', '<C-p>', '<cmd>:Telescope find_files hidden=true<cr>')
map('n', '<C-f>', '<cmd>:Telescope live_grep<cr>')
map('n', '<leader>t', '<cmd>:lua require("nvim-tree").toggle(false,true)<cr>')
map('n', 'ff', '<cmd>:NvimTreeFindFile<cr>')
map('n', '\\','<cmd>:HopWord<cr>')

-- map // to toggle comment
map('v', '//', '<leader>c<space>', { noremap = false })
map('n', '//', '<leader>c<space>', { noremap = false })

map('n', '<leader>kf','<cmd>:Prettier<cr>')
map('v', '<leader>kf','<cmd>:Prettier<cr>')

