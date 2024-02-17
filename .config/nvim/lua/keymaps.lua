local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n','-', '$') -- map - to END
map('n', '<C-p>', '<cmd>:Telescope find_files<cr>')
map('n', '<C-t>', '<cmd>:lua require("nvim-tree").toggle(false,true)<cr>')
map('n', 'ff', '<cmd>:NvimTreeFindFile<cr>')
map('n', '<space>','<cmd>:HopWord<cr>')

-- map <C-/> to toggle comment
map('v', '<C-/>', '<leader>c<space>', { noremap = false })
map('n', '<C-/>', '<leader>c<space>', { noremap = false })
