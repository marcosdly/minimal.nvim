local M = {}

function M.load_theme_table(theme)
    vim.cmd.highlight "clear"
    return vim.iter(theme)
        :map(function(_, highlight_table)
            return vim.tbl_values(highlight_table)
        end)
        :each(function(group, color_props)
            vim.api.nvim_set_hl(0, group, color_props)
        end)
end

return M
