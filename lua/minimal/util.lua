local M = {}

function M.load_theme_table(theme)
    vim.cmd.highlight "clear"
    local config = vim.g.minimal_colorscheme
    local patched_theme = vim.tbl_deep_extend("force", theme, config.custom_highlight_groups or {})
    for _, theme_section in pairs(patched_theme) do
        for group, color_props in pairs(theme_section) do
            vim.api.nvim_set_hl(0, group, color_props)
        end
    end
end

function M.link(group)
    return { link = group }
end

M.is_win32 = vim.uv.os_uname().sysname == "Windows_NT"

return M
