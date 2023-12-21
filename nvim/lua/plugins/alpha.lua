local icons = {
  kind = {
    Array = " ",
    Boolean = " ",
    Class = " ",
    Color = " ",
    Constant = " ",
    Constructor = " ",
    Enum = " ",
    EnumMember = " ",
    Event = " ",
    Field = " ",
    File = " ",
    Folder = "󰉋 ",
    Function = " ",
    Interface = " ",
    Key = " ",
    Keyword = " ",
    Method = " ",
    Module = " ",
    Namespace = " ",
    Null = "󰟢 ",
    Number = " ",
    Object = " ",
    Operator = " ",
    Package = " ",
    Property = " ",
    Reference = " ",
    Snippet = " ",
    String = " ",
    Struct = " ",
    Text = " ",
    TypeParameter = " ",
    Unit = " ",
    Value = " ",
    Variable = " ",
  },
  git = {
    LineAdded = " ",
    LineModified = " ",
    LineRemoved = " ",
    FileDeleted = " ",
    FileIgnored = "◌",
    FileRenamed = " ",
    FileStaged = "S",
    FileUnmerged = "",
    FileUnstaged = "",
    FileUntracked = "U",
    Diff = " ",
    Repo = " ",
    Octoface = " ",
    Branch = "",
  },
  ui = {
    ArrowCircleDown = "",
    ArrowCircleLeft = "",
    ArrowCircleRight = "",
    ArrowCircleUp = "",
    BoldArrowDown = "",
    BoldArrowLeft = "",
    BoldArrowRight = "",
    BoldArrowUp = "",
    BoldClose = "",
    BoldDividerLeft = "",
    BoldDividerRight = "",
    BoldLineLeft = "▎",
    BookMark = "",
    BoxChecked = "",
    Bug = " ",
    Stacks = "",
    Scopes = "",
    Watches = "󰂥",
    DebugConsole = "",
    Calendar = "",
    Check = "",
    ChevronRight = "",
    ChevronShortDown = "",
    ChevronShortLeft = "",
    ChevronShortRight = "",
    ChevronShortUp = "",
    Circle = " ",
    Close = "󰅖",
    CloudDownload = " ",
    Code = "",
    Comment = "",
    Dashboard = "",
    DividerLeft = "",
    DividerRight = "",
    DoubleChevronRight = "»",
    Ellipsis = "",
    EmptyFolder = "",
    EmptyFolderOpen = "",
    File = "",
    FileSymlink = "",
    Files = " ",
    FindFile = "󰈞",
    FindText = "󰊄",
    Fire = "",
    Folder = "󰉋 ",
    FolderOpen = " ",
    FolderSymlink = "",
    Forward = " ",
    Gear = " ",
    History = " ",
    Lightbulb = " ",
    LineLeft = "▏",
    LineMiddle = "│",
    List = " ",
    Lock = " ",
    NewFile = " ",
    Note = " ",
    Package = " ",
    Pencil = "󰏫 ",
    Plus = " ",
    Project = " ",
    Search = " ",
    SignIn = " ",
    SignOut = " ",
    Tab = "󰌒 ",
    Table = " ",
    Target = "󰀘 ",
    Telescope = " ",
    Text = " ",
    Tree = "",
    Triangle = "󰐊",
    TriangleShortArrowDown = "",
    TriangleShortArrowLeft = "",
    TriangleShortArrowRight = "",
    TriangleShortArrowUp = "",
  },
  diagnostics = {
    BoldError = "",
    Error = "",
    BoldWarning = "",
    Warning = "",
    BoldInformation = "",
    Information = "",
    BoldQuestion = "",
    Question = "",
    BoldHint = "",
    Hint = "󰌶",
    Debug = "",
    Trace = "✎",
  },
  misc = {
    Robot = "󰚩 ",
    Squirrel = "",
    Tag = "",
    Watch = "",
    Smiley = "",
    Package = "",
    CircuitBoard = "",
  },
}

local M = {
  "goolord/alpha-nvim",
  event = "VimEnter",
  commit = "234822140b265ec4ba3203e3e0be0e0bb826dff5",
}

function M.config()
  local dashboard = require "alpha.themes.dashboard"

  local function button(sc, txt, keybind, keybind_opts)
    local b = dashboard.button(sc, txt, keybind, keybind_opts)
    b.opts.hl_shortcut = "Macro"
    return b
  end

  dashboard.section.header.val = {
    [[                               __                ]],
    [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
    [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
    [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
    [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
    [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
  }

  dashboard.section.header.val = {
    [[🛸　　　 　🌎　°　　🌓　•　　.°•　　　🚀 ✯   ]],
    [[　　　★　*　　　　　°　　　　🛰 　°·      🪐 ]],
    [[.　　　•　° ★　•  ☄                          ]],
    [[                 ▁▂▃▄▅▆▇▇▆▅▄▃▂▁.             ]],
  }

  dashboard.section.header.val = {
    [[ ★　✯   🛸                    🪐   .°•    |    ]],
    [[    __     ° ★　•       🛰       __      / \   ]],
    [[   / /   ____ ___  ______  _____/ /_    | O |  ]],
    [[  / /   / __ `/ / / / __ \/ ___/ __ \   | O |  ]],
    [[ / /___/ /_/ / /_/ / / / / /__/ / / /  /| | |\ ]],
    [[/_____/\__,_/\__,_/_/ /_/\___/_/ /_/  /_(.|.)_\]],
  }

  dashboard.section.buttons.val = {
    button("f", icons.ui.Files .. " Find file", ":Telescope find_files <CR>"),
    button("n", icons.ui.NewFile .. " New file", ":ene <BAR> startinsert <CR>"),
    -- button("s", icons.ui.SignIn .. " Load session", ":lua require('persistence').load()<CR>"),
--    button("p", icons.git.Repo .. " Find project", ":lua require('telescope').extensions.projects.projects()<CR>"),
    button("r", icons.ui.History .. " Recent files", ":Telescope oldfiles <CR>"),
    button("t", icons.ui.Text .. " Find text", ":Telescope live_grep <CR>"),
    button("c", icons.ui.Gear .. " Config", ":e ~/.config/nvim/init.lua <CR>"),
    button("q", icons.ui.SignOut .. " Quit", ":qa<CR>"),
  }
  local function footer()
    return "chrisatmachine.com"
  end

  dashboard.section.footer.val = footer()

  dashboard.section.header.opts.hl = "String"
  dashboard.section.buttons.opts.hl = "Macro"
  dashboard.section.footer.opts.hl = "Type"

  dashboard.opts.opts.noautocmd = true
  require("alpha").setup(dashboard.opts)

  vim.api.nvim_create_autocmd("User", {
    pattern = "LazyVimStarted",
    callback = function()
      local stats = require("lazy").stats()
      local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
      dashboard.section.footer.val = "Loaded " .. stats.count .. " plugins in " .. ms .. "ms"
      pcall(vim.cmd.AlphaRedraw)
    end,
  })

  vim.api.nvim_create_autocmd({ "User" }, {
    pattern = { "AlphaReady" },
    callback = function()
      vim.cmd [[
      set laststatus=0 | autocmd BufUnload <buffer> set laststatus=3
    ]]
    end,
  })
end

return M
