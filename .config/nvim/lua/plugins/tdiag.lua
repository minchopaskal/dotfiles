return {
  dir = vim.fn.expand("~/projects/tdiag"), -- local plugin path
  name = "tdiag",           -- optional: custom plugin name
  lazy = false,             -- or true if you want lazy loading
  config = function()
    require("tdiag").setup()
  end,
  desc = "Node navigation plugin for .tdg dialogue files",
}
