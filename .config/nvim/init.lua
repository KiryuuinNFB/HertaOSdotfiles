require("config.lazy")
require("config.options")
require("config.keymaps")
vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function() vim.treesitter.start() end,
})