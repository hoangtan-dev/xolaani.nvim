local M = {}

---@param config xolaani.Config
function M.setup(config)
    local palette = require("xolaani.colors")

    return {
        -- Picker
        SnacksPicker = { bg = config.transparent and "NONE" or palette.yoru0 },
        SnacksPickerTitle = { fg = palette.sangoViolet, bg = config.transparent and "NONE" or palette.yoru0 },
        SnacksPickerBorder = { fg = palette.tsuki2, bg = "NONE" },
        SnacksPickerNormal = { fg = palette.tsuki4, bg = config.transparent and "NONE" or palette.yoru0 },
        SnacksPickerMatch = { fg = palette.sangoYellow },
        SnacksPickerCursor = { fg = palette.yoru0, bg = palette.sangoCyan },
        SnacksPickerPrompt = { fg = palette.sangoBlue },
        SnacksPickerDim = { fg = palette.tsuki1 },
        SnacksInputIcon = { fg = palette.sangoCyan, bg = config.transparent and "NONE" or palette.yoru0 },
        SnacksIndent = { fg = palette.kuroiGray, nocombine = true },
        SnacksIndentChunk = { fg = palette.tsuki1, nocombine = true },
        SnacksIndentScope = { fg = palette.tsuki1, nocombine = true },
        SnacksPickerListCursorLine = { fg = palette.yoru2, bg = palette.umiViolet },
        SnacksPickerInputBorder = { fg = palette.tsuki2, bg = "NONE" },
        SnacksPickerInputTitle = { fg = palette.sangoMagenta, bg = config.transparent and "NONE" or palette.yoru0 },
        SnacksPickerBoxTitle = { fg = palette.sangoViolet, bg = config.transparent and "NONE" or palette.yoru0 },
        SnacksPickerSelected = { fg = palette.yoru0, bg = palette.sangoCyan },
        SnacksPickerPickWinCurrent = {
            fg = palette.tsuki5,
            bg = config.transparent and "NONE" or palette.yoru1,
            bold = config.bold,
        },
        SnacksPickerPickWin = {
            fg = palette.tsuki4,
            bg = config.transparent and "NONE" or palette.kuroiBlack,
            bold = config.bold,
        },

        -- Git
        SnacksDiffHeader = { link = "DiagnosticVirtualTextInfo" },
        SnacksDiffLabel = { link = "@property" },
        SnacksDiffAdd = { link = "DiffAdd" },
        SnacksDiffDelete = { link = "DiffDelete" },
        SnacksDiffConflictLineNr = { fg = palette.sangoYellow, bg = palette.kuroiBlack },
        SnacksDiffContextLineNr = { fg = palette.tsuki3, bg = palette.yoru0 },
        SnacksDiffDeleteLineNr = { fg = palette.kairoRed, bg = palette.kuroiRed },
        SnacksDiffAddLineNr = { fg = palette.kairoBlue, bg = palette.kuroiBlue },
        SnacksDiffConflict = { link = "DiagnosticVirtualTextWarn" },
        SnacksDiffContext = { link = "DiffChange" },

        -- Pager
        SnacksPager = { fg = palette.tsuki4, bg = config.transparent and "NONE" or palette.yoru0 },
        SnacksPagerBorder = { fg = palette.tsuki2, bg = "NONE" },
        SnacksPagerTitle = { fg = palette.sangoViolet, bg = config.transparent and "NONE" or palette.yoru0 },
        SnacksPagerSymbol = { fg = palette.sangoCyan },

        -- Progress
        SnacksProgress = { fg = palette.sangoBlue, bg = palette.yoru2 },
        SnacksProgressBorder = { fg = palette.tsuki2, bg = "NONE" },
        SnacksProgressTitle = { fg = palette.sangoMagenta },
        SnacksProgressDone = { fg = palette.sangoGreen },

        -- Scrollbar
        SnacksScrollbarThumb = { fg = palette.kuroiGray, bg = palette.yoru2 },
        SnacksScrollbarProgress = { fg = palette.sangoBlue, bg = palette.yoru2 },

        -- Notification
        SnacksNotificationBorder = { fg = palette.tsuki2, bg = "NONE" },
        SnacksNotificationTitle = { fg = palette.sangoMagenta },
    }
end

return M
