local status, ts = pcall(require, "nvim-treesitter.config")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "toml",
    "bash",
    "json",
    "yaml",
    "scss",
    "css",
    "html",
    "javascript",
    "typescript",
  },
  autotag = {
    enable = true,
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsernae = { "jabascript", "typescript.tsx" }
