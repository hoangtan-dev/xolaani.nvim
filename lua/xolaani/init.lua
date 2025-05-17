local M = {}

local config = require("xolaani.config")

---@param theme? string
function M.load(theme)
    local opts = config.options
    theme = theme or opts.background[vim.o.background] or opts.theme
    M._CURRENT_THEME = theme

    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    vim.g.colors_name = "xolaani"
    vim.o.termguicolors = true

    require("xolaani.highlights").apply(opts)
end

M.setup = config.setup
M.colorscheme = M.load

return M
