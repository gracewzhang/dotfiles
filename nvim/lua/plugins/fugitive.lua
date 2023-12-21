return {{
  "tpope/vim-fugitive",
  event = "User InGitRepo",
  cmd = {
    "Git",
  },
  config = function()
    require("fugitive")
  end,
}}
