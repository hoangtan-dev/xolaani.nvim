local M = {}

---@alias ColorSpec string RGB Hex string
---@alias ColorTable table<string, ColorSpec>
---@alias XolaaniColorsSpec { palette: ColorTable, theme: ColorTable }
---@alias XolaaniColors { palette: xolaani.PaletteColors, theme: xolaani.ThemeColors }

local config = require("xolaani.config")

---@param variant? string
function M.load(variant)
    local opts = config.options
    variant = variant or opts.background[vim.o.background] or opts.variant
    M._CURRENT_VARIANT = variant

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
