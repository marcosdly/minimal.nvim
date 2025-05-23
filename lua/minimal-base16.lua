
local M = {}
local util = require'minimal.util'

M.colors = {
    fg               = "#CACBD4",
    bg               = "#1D1F21",
    none             = "#1D1F21",
    --1A1C1D
    dark             = '#1A1C1D',
    comment          = "#515457",
    popup_back       = '#515A61',
    cursor_fg        = '#6D6F73',
    context          = '#515A61',
    cursor_bg        = '#767777',
    accent           = '#BBBBBB',
    diff_add         = '#8CD881',
    diff_change      = '#6CAEC0',
    cl_bg            = "#687177",
    diff_text        = '#568BB4',
    line_fg          = "#6D6F73",
    line_bg          = "#282A2E",
    gutter_bg        = "#282A2E",
    non_text         = "#606365",
    selection_bg     = "#464F55",
    selection_fg     = "#495163",
    vsplit_fg        = "#cccccc",
    vsplit_bg        = "#26282C",
    visual_select_bg = "#2A2F32",

    red_key_w  = "#CC6674",
    red_err    = "#D95555",
    green_func = '#90BD62',
    green      = "#90BD62",
    cyan       = "#89BEB7",
    blue_func  = '#8BADCD',
    black1     = "#2C2D32",
    black      = "#1A1C1D",
    white1     = "#CACBD4",
    white      = "#CACBD4",
    gray_punc  = "#43484B",
    gray2      = "#76777B",
    gray1      = '#3B3D42',
    gray       = "#26272A",
    orange     = "#CF8E5E",
    orange_wr  = "#CC8A5B",
    pink       = "#B799C8",
    yellow     = "#D7B66F",
}

M.setup = util.make_setup_function(require'minimal-base16.theme')

return M

