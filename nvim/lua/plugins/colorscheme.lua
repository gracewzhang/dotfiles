return {{
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
        dark_variant = "main"
    }, {
	"catppuccin/nvim",
	name = "catppuccin",
	opts = {
		term_colors = true,
		transparent_background = false,
		styles = {
			comments = {},
			conditionals = {},
			loops = {},
			functions = {},
			keywords = {},
			strings = {},
			variables = {},
			numbers = {},
			booleans = {},
			properties = {},
			types = {},
		},
		color_overrides = {
			mocha = {
				base = "#000000",
				mantle = "#000000",
				crust = "#000000",
        green = "#febaad",
        pink = "#ef7a6c",
			},
		},
		integrations = {
			telescope = {
				enabled = true,
				style = "nvchad",
			},
			dropbar = {
				enabled = true,
				color_mode = true,
			},
		},
	},
	},
}}