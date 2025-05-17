local M = {}

---@class xolaani.Highlight
---@field fg? string
---@field bg? string
---@field sp? string
---@field bold? boolean
---@field italic? boolean
---@field underline? boolean
---@field strikethrough? boolean

---@class xolaani.Plugins
---@field cmp? boolean
---@field gitsigns? boolean
---@field indent_blankline? boolean
---@field nvim_tree? boolean
---@field scrollbar? boolean
---@field treesitter? boolean

---@class xolaani.Background
---@field dark string
---@field light string

---@class xolaani.Config
---@field undercurl? boolean
---@field dimInactive? boolean
---@field background? xolaani.Background
---@field plugins? xolaani.Plugins
---@field variant? string
---@field transparent? boolean
---@field highlights? table<string, xolaani.Highlight>

---@type xolaani.Config
local default_config = {
    undercurl = true,
    dimInactive = false,
    background = { dark = "abyss", light = "mist" },
    variant = "abyss",
    transparent = false,

    plugins = {
        cmp = true,
        gitsigns = true,
        indent_blankline = true,
        nvim_tree = true,
        scrollbar = true,
        treesitter = true,
    },
}

---@type xolaani.Config
M.options = {}

---@param options? xolaani.Config
function M.setup(options)
    options = options or {}
    M.options = vim.tbl_deep_extend("force", {}, default_config, options)
    vim.g.xolaani_config = M.options
end

-- Initialize with defaults on load
M.setup()

return M
