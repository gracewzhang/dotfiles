local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local spec = {{
    import = "plugins"
}}


require("lazy").setup({
  spec = spec,
  install = {
    missing = true,
    colorscheme = {"catppuccin", "rose-pine", "habamax"}
  }
})

local modules = {"config.options"}

for _, mod in ipairs(modules) do
    local ok, err = pcall(require, mod)
    -- config.custom may be empty. It's a optional module
    if not ok and not mod == "config/custom" then
        error(("Error loading %s...\n\n%s"):format(mod, err))
    end
end
