local M = {}

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
---@field theme? string

---@type xolaani.Config
local default_config = {
    undercurl = true,
    dimInactive = false,
    background = { dark = "abyss", light = "mist" }, -- "mist" coming soon
    theme = "abyss",
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
