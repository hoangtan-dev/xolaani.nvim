local M = {}

---@param config XolaaniConfig
function M.setup(config)
  local palette = require("xolaani.colors")

  return {
    IblIndent       = { bg = "NONE", fg = palette.yoru3 },
    IblIndentScope  = { bg = "NONE", fg = palette.kuroiGray },
    IblWhitespace   = { bg = palette.yoru1 }
  }
end

return M
