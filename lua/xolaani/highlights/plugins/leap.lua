local M = {}

---@param config xolaani.Config
function M.setup(config)
    local palette = require("xolaani.colors")

    return {
        LeapMatch = { fg = palette.tsuki4, bg = palette.sangoMagenta },
        LeapLabelPrimary = { fg = palette.sangoBlue, bg = palette.yoru1, bold = true },
        LeapLabelSecondary = { fg = palette.umiGreen, bg = palette.yoru1 },
        LeapBackdrop = { fg = palette.kuroiGray },
    }
end

return M
