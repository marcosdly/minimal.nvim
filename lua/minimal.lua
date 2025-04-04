
local M = {}
local util = require'minimal.util'

M.colors = {
    fg               = "#DFE0EA",
    bg               = "#191B20",
    none             = "#191B20",
    --16181D
    dark             = '#16181D',
    comment          = "#4D5264",
    popup_back       = '#515761',
    cursor_fg        = '#DFE0EA',
    context          = '#515761',
    cursor_bg        = '#AEAFAD',
    accent           = '#BBBBBB',
    diff_add         = '#8CD881',
    diff_change      = '#6CAEC0',
    cl_bg            = "#707891",
    diff_text        = '#568BB4',
    line_fg          = "#555B6C",
    line_bg          = "#1E2026",
    gutter_bg        = "#1E2026",
    non_text         = "#606978",
    selection_bg     = "#5E697E",
    selection_fg     = "#495163",
    vsplit_fg        = "#cccccc",
    vsplit_bg        = "#21252D",
    visual_select_bg = "#272932",

    red_key_w  = "#E85A84",
    red_err    = "#D95555",
    green_func = '#94DD8E',
    green      = "#94DD8E",
    blue_type  = '#7EB7E6',
    black1     = "#272932",
    black      = "#16181D",
    white1     = "#CFD0D7",
    white      = "#DFE0EA",
    gray_punc  = "#515669",
    gray2      = "#6E7380",
    gray1      = '#343842',
    gray       = "#21252D",
    orange     = "#E0828D",
    orange_wr  = "#E39A65",
    pink       = "#D895C7",
    yellow     = "#E9D26C",
}

M.setup = util.make_setup_function(require'minimal.theme')

return M

