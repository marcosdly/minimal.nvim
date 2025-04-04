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

---Trivial utility function to make intent explicit.
function M.patch_theme_table_values(original_theme, values_to_patch)
    return vim.tbl_deep_extend('force', original_theme, values_to_patch)
end

---Factory of setup functions, allowing less copy-pasted boilerplate for variants
function M.make_setup_function(original_theme)
    return function (user_theme_patch)
        local theme = M.patch_theme_table_values(original_theme, user_theme_patch or {})
        M.load_theme_table(theme)
    end
end

return M
