local M = {}

---@param config? XolaaniConfig
function M.apply(config)
    config = config or require("xolaani").config
    local hl_files = {
        "editor",
        "lsp",
        "syntax",
        "plugins/nvim-tree",
        "plugins/nvim-tree",
        "plugins/indent-blankline",
        "plugins/gitsigns",
        "plugins/scrollbar",
        "plugins/cmp",
        "plugins/treesitter",
    }

    for _, highlight in ipairs(hl_files) do
        local highlights = require("xolaani.highlights." .. highlight)
        local table = highlights.setup(config)
        for hl, spec in pairs(table) do
            vim.api.nvim_set_hl(0, hl, spec)
        end
    end
end

return M
