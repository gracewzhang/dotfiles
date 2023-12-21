return {{
  -- Telescope
  -- Find, Filter, Preview, Pick. All lua, all the time.
  "nvim-telescope/telescope.nvim",
  dependencies = {"nvim-lua/plenary.nvim", {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make"
  }, {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" }
  }},
  config = function(_)
      require("telescope").setup()
      require("telescope").load_extension("fzf")
      require("telescope").load_extension("file_browser")
  end
}}
