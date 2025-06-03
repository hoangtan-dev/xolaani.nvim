local M = {}

---@param config xolaani.Config
function M.setup(config)
    local palette = require("xolaani.colors")

    return {
        MiniAnimateCursor = { reverse = true, nocombine = true },
        MiniAnimateNormalFloat = { link = "NormalFloat" },

        MiniClueBorder = { link = "FloatBorder" },
        MiniClueDescGroup = { link = "DiagnosticFloatingWarn" },
        MiniClueDescSingle = { link = "NormalFloat" },
        MiniClueNextKey = { fg = palette.sangoGreen },
        MiniClueNextKeyWithPostkeys = { link = "DiagnosticFloatingError" },
        MiniClueSeparator = { link = "DiagnosticFloatingInfo" },
        MiniClueTitle = { link = "FloatTitle" },

        MiniCompletionActiveParameter = { underline = true },

        MiniCursorword = { underline = true },
        MiniCursorwordCurrent = { underline = true },

        MiniDepsChangeAdded = { fg = palette.sangoGreen },
        MiniDepsChangeRemoved = { fg = palette.sangoRed },
        MiniDepsHint = { link = "DiagnosticHint" },
        MiniDepsInfo = { link = "DiagnosticInfo" },
        MiniDepsMsgBreaking = { link = "DiagnosticWarn" },
        MiniDepsPlaceholder = { link = "Comment" },
        MiniDepsTitle = { link = "Title" },
        MiniDepsTitleError = { link = "ErrorMsg" },
        MiniDepsTitleSame = { link = "Boolean" },
        MiniDepsTitleUpdate = { link = "String" },

        MiniDiffOverAdd = { bg = palette.kairoGreen },
        MiniDiffOverChange = { bg = palette.kairoBlue },
        MiniDiffOverContext = { bg = palette.kairoOrange },
        MiniDiffOverDelete = { bg = palette.kairoRed },
        MiniDiffSignAdd = { fg = palette.sangoGreen },
        MiniDiffSignChange = { fg = palette.sangoOrange },
        MiniDiffSignDelete = { fg = palette.sangoRed },

        MiniFilesBorder = { fg = palette.tsuki0 },
        MiniFilesBorderModified = { fg = palette.kairoMagenta },
        MiniFilesCursorLine = { link = "CursorLine" },
        MiniFilesDirectory = { fg = palette.sangoBlue },
        MiniFilesFile = { fg = palette.tsuki4 },
        MiniFilesNormal = { link = "NormalFloat" },
        MiniFilesTitle = { fg = palette.kairoCyan },
        MiniFilesTitleFocused = { fg = palette.sangoCyan },

        MiniHipatternsFixme = { fg = palette.yoru1, bg = palette.sangoRed, bold = true },
        MiniHipatternsHack = { fg = palette.yoru1, bg = palette.kairoYellow, bold = true },
        MiniHipatternsNote = { fg = palette.yoru1, bg = palette.sangoBlue, bold = true },
        MiniHipatternsTodo = { fg = palette.yoru1, bg = palette.sangoCyan, bold = true },

        MiniIconsAzure = { fg = palette.umiCyan },
        MiniIconsBlue = { fg = palette.sangoBlue },
        MiniIconsCyan = { fg = palette.sangoCyan },
        MiniIconsGreen = { fg = palette.sangoGreen },
        MiniIconsGrey = { fg = palette.tsuki5 },
        MiniIconsOrange = { fg = palette.sangoOrange },
        MiniIconsPurple = { fg = palette.kairoBlue },
        MiniIconsRed = { fg = palette.sangoRed },
        MiniIconsYellow = { fg = palette.kairoYellow },

        MiniIndentscopeSymbol = { fg = palette.tsuki1 },
        MiniIndentscopeSymbolOff = { fg = palette.kairoYellow },

        MiniJump = { link = "SpellRare" },

        MiniJump2dDim = { fg = palette.tsuki1 },
        MiniJump2dSpot = { fg = palette.sangoOrange, bold = true, nocombine = true },
        MiniJump2dSpotAhead = { fg = palette.sangoCyan, bg = palette.yoru1, nocombine = true },
        MiniJump2dSpotUnique = { fg = palette.kairoYellow, bold = true, nocombine = true },

        MiniMapNormal = { link = "NormalFloat" },
        MiniMapSymbolCount = { link = "Special" },
        MiniMapSymbolLine = { fg = palette.sangoCyan },
        MiniMapSymbolView = { fg = palette.sangoBlue },

        MiniNotifyBorder = { link = "FloatBorder" },
        MiniNotifyNormal = { link = "NormalFloat" },
        MiniNotifyTitle = { link = "FloatTitle" },

        MiniOperatorsExchangeFrom = { link = "IncSearch" },

        MiniPickBorder = { link = "FloatBorder" },
        MiniPickBorderBusy = { link = "DiagnosticFloatingWarn" },
        MiniPickBorderText = { link = "FloatTitle" },
        MiniPickIconDirectory = { link = "Directory" },
        MiniPickIconFile = { link = "MiniPickNormal" },
        MiniPickHeader = { link = "DiagnosticFloatingHint" },
        MiniPickMatchCurrent = { link = "CursorLine" },
        MiniPickMatchMarked = { bg = palette.yoru1 },
        MiniPickMatchRanges = { fg = palette.sangoOrange },
        MiniPickNormal = { link = "NormalFloat" },
        MiniPickPreviewLine = { link = "CursorLine" },
        MiniPickPreviewRegion = { link = "IncSearch" },
        MiniPickPrompt = { link = "DiagnosticFloatingInfo" },

        MiniStarterCurrent = { nocombine = true },
        MiniStarterFooter = { link = "Comment" },
        MiniStarterHeader = { fg = palette.sangoCyan },
        MiniStarterInactive = { link = "Comment" },
        MiniStarterItem = { link = "Normal" },
        MiniStarterItemBullet = { link = "Delimiter" },
        MiniStarterItemPrefix = { link = "WarningMsg" },
        MiniStarterSection = { fg = palette.sangoBlue },
        MiniStarterQuery = { link = "MoreMsg" },

        MiniStatuslineDevinfo = { link = "StatusLine" },
        MiniStatuslineFileinfo = { link = "MiniStatuslineDevinfo" },
        MiniStatuslineFilename = { link = "StatusLineNC" },
        MiniStatuslineInactive = { link = "StatusLineNC" },
        MiniStatuslineModeCommand = { fg = palette.yoru1, bg = palette.kairoYellow, bold = true },
        MiniStatuslineModeInsert = { fg = palette.yoru1, bg = palette.sangoGreen, bold = true },
        MiniStatuslineModeNormal = { fg = palette.yoru1, bg = palette.sangoBlue, bold = true },
        MiniStatuslineModeOther = { fg = palette.yoru1, bg = palette.sangoCyan, bold = true },
        MiniStatuslineModeReplace = { fg = palette.yoru1, bg = palette.sangoRed, bold = true },
        MiniStatuslineModeVisual = { fg = palette.yoru1, bg = palette.sangoMagenta, bold = true },

        MiniSurround = { link = "IncSearch" },

        MiniTablineCurrent = { fg = palette.tsuki5, bg = palette.yoru1, bold = true },
        MiniTablineFill = { link = "TabLineFill" },
        MiniTablineHidden = { fg = palette.tsuki1, bg = palette.yoru1 },
        MiniTablineModifiedCurrent = { fg = palette.yoru1, bg = palette.tsuki5, bold = true },
        MiniTablineModifiedHidden = { fg = palette.yoru1, bg = palette.tsuki1 },
        MiniTablineModifiedVisible = { fg = palette.yoru1, bg = palette.tsuki5 },
        MiniTablineTabpagesection = { link = "Search" },
        MiniTablineVisible = { fg = palette.tsuki5, bg = palette.yoru1 },

        MiniTestEmphasis = { bold = true },
        MiniTestFail = { fg = palette.sangoRed, bold = true },
        MiniTestPass = { fg = palette.sangoGreen, bold = true },

        MiniTrailspace = { bg = palette.sangoRed },
    }
end

return M
