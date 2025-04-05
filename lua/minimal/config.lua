local M = {}

---Configuration default values and schema.
M.default_config = {
    -- NOTE Prefer options in sub-tables because vim.deepcopy() copies inner tables as
    -- unique references, which is much better for passing around unique tables.
    italic = {
        comments = true,
        keywords = false,
        functions = false,
        booleans = false,
        variables = false,
    },
    transparent = {
        background = false,
    },
    custom_highlight_groups = {},
}

M.config = vim.tbl_deep_extend("force", M.default_config, vim.g.minimal_colorscheme or {})
M.config = vim.deepcopy(M.config, false)

vim.g.minimal_colorscheme = M.config

return M
