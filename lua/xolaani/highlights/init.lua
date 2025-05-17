local M = {}

---@param config? xolaani.Config
function M.apply(config)
    config = config or require("xolaani").config

    -- Always-required highlight files
    local core_highlights = { "editor", "lsp", "syntax" }

    for _, highlight in ipairs(core_highlights) do
        local highlights = require("xolaani.highlights." .. highlight)
        local hl_table = highlights.setup(config)
        for hl, spec in pairs(hl_table) do
            vim.api.nvim_set_hl(0, hl, spec)
        end
    end

    -- Conditionally load plugin highlight files based on config.plugins
    local plugins = config.plugins or {}

    for plugin_name, enabled in pairs(plugins) do
        if enabled then
            -- Convert snake_case to dash-case for file paths
            local file_name = plugin_name:gsub("_", "-")
            local module_path = "xolaani.highlights.plugins." .. file_name

            local ok, highlights = pcall(require, module_path)
            if ok and type(highlights.setup) == "function" then
                local hl_table = highlights.setup(config)
                for hl, spec in pairs(hl_table) do
                    vim.api.nvim_set_hl(0, hl, spec)
                end
            else
                vim.notify(
                    "[xolaani] Highlight file not found or invalid for plugin: " .. plugin_name,
                    vim.log.levels.WARN
                )
            end
        end
    end
end

return M
