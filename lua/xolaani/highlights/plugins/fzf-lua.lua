local M = {}

---@param config xolaani.Config
function M.setup(config)
    local palette = require("xolaani.colors")
    return {
        -- FzfLua
        FzfLuaBorder = { fg = palette.tsuki4, bg = palette.yoru0 },
        FzfLuaTitle = { fg = palette.sangoViolet },
        FzfLuaCursorLine = { fg = palette.tsuki4 },
    }
end

return M
