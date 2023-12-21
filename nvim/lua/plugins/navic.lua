return {{
  "SmiteshP/nvim-navic",
  commit = "0ffa7ffe6588f3417e680439872f5049e38a24db",
  opts = {
    highlight = true,
    lsp = {
      auto_attach = true,
    },
    click = true,
    depth_limit = 0,
    depth_limit_indicator = "..",
  },
  config = function(_, opts) 
    require("nvim-navic").setup(opts)
  end
}}
