local M = {}

---@param config XolaaniConfig
function M.setup(config)
    local palette = require("xolaani.colors")

    return {
        -- ScrollbarHandle = {},
        -- ScrollbarCursorHandle = {},
        -- ScrollbarCursor = {},
        -- ScrollbarSearchHandle = {},
        -- ScrollbarSearch = {},
        -- ScrollbarErrorHandle = {},
        -- ScrollbarError = {},
        -- ScrollbarWarnHandle = {},
        -- ScrollbarWarn = {},
        -- ScrollbarInfoHandle = {},
        -- ScrollbarInfo = {},
        -- ScrollbarHintHandle = {},
        -- ScrollbarHint = {},
        -- ScrollbarMiscHandle = {},
        -- ScrollbarMisc = {},
        ScrollbarGitAdd = { bg = palette.kuroiGreen, fg = palette.kairoGreen },
        -- ScrollbarGitAddHandle = {},
        -- ScrollbarGitChange = {},
        -- ScrollbarGitChangeHandle = {},
        -- ScrollbarGitDelete = {},
        -- ScrollbarGitDeleteHandle = {},
    }
end

return M
