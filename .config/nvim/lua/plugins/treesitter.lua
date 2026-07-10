return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  -- Change 'nvim-treesitter.configs' to 'nvim-treesitter'
  main = 'nvim-treesitter', 
  opts = {
    ensure_installed = { 'lua', 'vim', 'vimdoc', 'query', 'markdown', 'markdown_inline', 'svelte'},
    highlight = { enable = true },
    indent = { enable = true },
  },
}
