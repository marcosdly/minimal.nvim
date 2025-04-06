local M = {}

M.colors = {
    fg = "#DFE0EA",
    bg = "#191B20",
    none = "#191B20",
    --16181D
    dark = "#16181D",
    comment = "#4D5264",
    popup_back = "#515761",
    cursor_fg = "#DFE0EA",
    context = "#515761",
    cursor_bg = "#AEAFAD",
    accent = "#BBBBBB",
    diff_add = "#8CD881",
    diff_change = "#6CAEC0",
    cl_bg = "#707891",
    diff_text = "#568BB4",
    line_fg = "#555B6C",
    line_bg = "#1E2026",
    gutter_bg = "#1E2026",
    non_text = "#606978",
    selection_bg = "#5E697E",
    selection_fg = "#495163",
    vsplit_fg = "#cccccc",
    vsplit_bg = "#21252D",
    visual_select_bg = "#272932",

    red_key_w = "#E85A84",
    red_err = "#D95555",
    green_func = "#94DD8E",
    green = "#94DD8E",
    blue_type = "#7EB7E6",
    black1 = "#272932",
    black = "#16181D",
    white1 = "#CFD0D7",
    white = "#DFE0EA",
    gray_punc = "#515669",
    gray2 = "#6E7380",
    gray1 = "#343842",
    gray = "#21252D",
    orange = "#E0828D",
    orange_wr = "#E39A65",
    pink = "#D895C7",
    yellow = "#E9D26C",
}

local c = M.colors
local cfg = vim.g.minimal_colorscheme
local none = "NONE"

M.highlight_groups = {
    ---Core highlight groups
    ---SEE :h syntax
    nvim_core = {
        ColorColumn = { bg = c.black1 },
        Conceal = { fg = c.fg }, -- {bg = config.transparent_background and 'NONE' or colors.bg },
        --TODO CurSearch
        Cursor = { fg = c.yellow, bg = c.bg },
        lCursor = { fg = c.cursor_fg, bg = c.cursor_bg },
        -- CursorIM = { fg = colors.cursor_fg, bg = colors.cursor_bg },
        CursorColumn = { fg = none, bg = none },
        CursorLine = { bg = c.black1 },
        Directory = { fg = c.white },
        -- EndOfBuffer = { fg = colors.bg },
        TermCursor = { fg = c.cursor_fg, bg = c.cursor_bg },
        TermCursorNC = { fg = c.cursor_fg, bg = c.cursor_bg },
        ErrorMsg = { fg = c.gray, bg = c.red_err, bold = true },
        --TODO WinSeparator
        Folded = { fg = c.white, bg = c.gray },
        FoldColumn = { fg = c.line_fg },
        SignColumn = { bg = c.line_bg },
        IncSearch = { fg = c.bg, bg = c.orange },
        Substitute = { fg = c.gray2, bg = c.orange },
        LineNr = { fg = c.line_fg, bg = c.line_bg },
        --TODO LineNrAbove
        --TODO LineNrBelow
        CursorLineNr = { fg = c.white, bg = c.gutter_bg, bold = true },
        --TODO CursorLineFold
        --TODO CursorLineSign
        MatchParen = { fg = c.white1, bg = c.black },
        ModeMsg = { fg = c.fg, bg = c.bg },
        MsgArea = { fg = c.fg, bg = cfg.transparent.background and none or c.bg },
        MsgSeparator = { fg = c.fg, bg = c.bg },
        MoreMsg = { fg = c.orange_wr },
        NonText = { fg = c.gray2 },
        Normal = { fg = c.fg, bg = cfg.transparent.background and none or c.bg },
        NormalFloat = { bg = c.dark },
        NormalNC = { fg = c.white, bg = cfg.transparent.background and none or c.bg },
        Pmenu = { fg = c.white1, bg = c.black },
        PmenuSel = { fg = c.line_fg, bg = c.black },
        --TODO PmenuSel
        --TODO PmenuKind
        --TODO PmenuKindSel
        --TODO PmenuExtra
        --TODO PmenuExtraSel
        PmenuSbar = { bg = c.gray },
        PmenuThumb = { bg = c.black },
        Question = { fg = c.green_func },
        QuickFixLine = { fg = c.orange_wr },
        Search = { fg = c.line_fg, bg = c.orange },
        --TODO SnippetTabstop
        SpecialKey = { fg = c.gray_punc, bold = true },
        SpellBad = { fg = c.red_key_w, underline = true },
        SpellCap = { fg = c.orange, underline = true },
        SpellLocal = { fg = c.green, underline = true },
        SpellRare = { fg = c.pink, underline = true },
        StatusLine = { fg = c.line_fg, bg = c.black },
        StatusLineNC = { fg = c.line_fg, bg = c.black },
        TabLine = { fg = c.line_fg },
        TabLineFill = { fg = c.line_fg },
        TabLineSel = { fg = c.fg },
        Title = { fg = c.gray_punc },
        Visual = { fg = none, bg = c.visual_select_bg, bold = true },
        VisualNOS = { fg = c.selection_fg, bg = c.selection_bg },
        WarningMsg = { fg = c.orange_wr, bg = c.none },
        Whitespace = { fg = c.non_text },
        WildMenu = { fg = c.fg },
        --TODO WinBar
        --TODO WinBarNC
        --TODO Menu
        --TODO Scrollbar
        --TODO Tooltip
        -- FloatBorder = { fg = c.gray2, bg = none },
        --TODO FloatTitle
        --TODO FloatFooter
    },

    nvim_diff = {
        DiffAdd = { fg = c.green_func },
        DiffChange = { fg = c.green_func },
        DiffDelete = { fg = c.red_key_w },
        DiffText = { fg = c.white1 },
        DiffTextAdd = { fg = c.white1 },
        Added = { fg = c.green_func },
        Removed = { fg = c.red_key_w },
        File = { fg = c.pink },
    },

    ---Builtin groups that highlight expressions in specific scenarios.
    ---Is used by many syntax files and plugins that as links.
    ---SEE :h group-name
    ---SEE :h expr-highlight
    nvim_general_syntax = {
        Comment = { fg = c.comment, italic = cfg.italic.comments },

        Constant = { fg = c.pink },
        String = { fg = c.yellow },
        Character = { fg = c.yellow },
        Number = { fg = c.orange },
        Boolean = { fg = c.orange, italic = cfg.italic.booleans },
        Float = { fg = c.orange },

        Identifier = { fg = c.white1 },
        Function = { fg = c.green_func },

        Statement = { fg = c.red_key_w },
        Conditional = { fg = c.red_key_w },
        Repeat = { fg = c.red_key_w },
        Label = { fg = c.red_key_w },
        Operator = { fg = c.white },
        Keyword = { fg = c.red_key_w, italic = cfg.italic.keywords },
        Exception = { fg = c.white },

        PreProc = { fg = c.blue_type },
        Include = { fg = c.blue_type, italic = cfg.italic.keywords },
        Define = { fg = c.blue_type },
        Macro = { fg = c.red_key_w, italic = cfg.italic.keywords },
        PreCondit = { fg = c.blue_type },

        Type = { fg = c.blue_type, italic = cfg.italic.keywords },
        StorageClass = { fg = c.red_key_w },
        Structure = { fg = c.green_func },
        Typedef = { fg = c.blue_type, italic = cfg.italic.keywords },

        Special = { fg = c.gray_punc },
        SpecialChar = { fg = c.yellow },
        Tag = { fg = c.gray_punc },
        Delimiter = { fg = c.gray_punc },
        SpecialComment = { fg = c.pink },
        Debug = { fg = c.fg },

        Underlined = { underline = true },

        Ignore = { fg = c.gray_punc },

        Error = { fg = c.red_key_w, bg = c.bg, bold = true },

        Todo = { fg = c.yellow, bold = true },
    },

    nvim_terminal_emulator = {
        debugBreakpoint = { fg = c.red_key_w, reverse = true },
        debugPc = { bg = c.white1 },
    },

    nvim_diagnostic = {
        DiagnosticVirtualTextInfo = { fg = c.yellow },
        DiagnosticHint = { fg = c.blue_type },
        DiagnosticError = { fg = c.red_err },
        DiagnosticInfo = { fg = c.yellow },
        DiagnosticVirtualTextWarn = { fg = c.orange_wr },
        DiagnosticWarn = { fg = c.orange_wr },

        DiagnosticFloatingError = { fg = c.red_err },
        DiagnosticFloatingHint = { fg = c.blue_type },
        DiagnosticFloatingInfo = { fg = c.yellow },
        DiagnosticFloatingWarn = { fg = c.orange_wr },

        DiagnosticSignError = { fg = c.red_err, bg = c.line_bg },
        DiagnosticSignHint = { fg = c.blue_type, bg = c.line_bg },
        DiagnosticSignInfo = { fg = c.yellow, bg = c.line_bg },
        DiagnosticSignWarn = { fg = c.orange_wr, bg = c.line_bg },

        DiagnosticUnderlineError = { underline = true },
        DiagnosticUnderlineHint = { underline = true },
        DiagnosticUnderlineInfo = { underline = true },
        DiagnosticUnderlineWarn = { underline = true },

        DiagnosticVirtualTextError = { fg = c.red_err },
        DiagnosticVirtualTextHint = { fg = c.gray2 },
    },

    ["romgrk/barbar.nvim"] = {
        BufferCurrent = { fg = c.fg, bg = c.gray },
        BufferCurrentIndex = { fg = c.fg, bg = c.bg },
        BufferCurrentMod = { fg = c.yellow, bg = c.bg },
        BufferCurrentSign = { fg = c.blue_type, bg = c.bg },
        BufferCurrentTarget = { fg = c.red_key_w, bg = c.bg, bold = true },
        BufferInactive = { fg = c.gray2, bg = c.dark },
        BufferInactiveIndex = { fg = c.gray2, bg = c.dark },
        BufferInactiveMod = { fg = c.yellow, bg = c.dark },
        BufferInactiveSign = { fg = c.gray2, bg = c.dark },
        BufferInactiveTarget = { fg = c.red_key_w, bg = c.dark, bold = true },
        BufferVisible = { fg = c.fg, bg = c.bg },
        BufferVisibleIndex = { fg = c.fg, bg = c.bg },
        BufferVisibleMod = { fg = c.yellow, bg = c.bg },
        BufferVisibleSign = { fg = c.green, bg = c.bg },
        BufferVisibleTarget = { fg = c.red_key_w, bg = c.bg, bold = true },
        BufferLineFill = { fg = c.fg, bg = c.gray, bold = true },
    },

    ["folke/which-key.nvim"] = {
        WhichKey = { fg = c.blue_type },
        WhichKeySeperator = { fg = c.red_key_w },
        WhichKeyGroup = { fg = c.pink },
        WhichKeyDesc = { fg = c.white },
        WhichKeyFloat = { bg = c.dark },
    },

    ["hrsh7th/nvim-cmp"] = {
        CmpItemAbbrDeprecated = { fg = c.comment },
        CmpDocumentation = { fg = c.fg },
        CmpDocumentationBorder = { fg = c.gray2 },
        CmpItemAbbr = { fg = c.fg },
        CmpItemAbbrMatch = { fg = c.blue_type },
        CmpItemAbbrMatchFuzzy = { fg = c.blue_type },
        CmpItemKind = { fg = c.green_func },
        CmpItemKindMethod = { fg = c.blue_type },
        CmpItemKindConstructor = { fg = c.yellow },
        CmpItemKindClass = { fg = c.red_key_w },
        CmpItemKindVariabl = { fg = c.white },
        CmpItemKindField = { fg = c.white },
        CmpItemKindProperty = { fg = c.white },
        CmpItemKindEnumMember = { fg = c.orange },
        CmpItemKindConstant = { fg = c.orange },
        CmpItemKindEnum = { fg = c.blue_type },
        CmpItemKindStruct = { fg = c.blue_type },
        CmpItemKindKeyword = { fg = c.pink },
        CmpItemMenu = { fg = c.pink },
        CmpItemKindOperator = { fg = c.red_key_w },
    },

    ["glepnir/dashboard-nvim"] = {
        DashboardCenter = { fg = c.white },
        DashboardFooter = { fg = c.yellow },
        DashboardHeader = { fg = c.green_func },
    },

    ["sindrets/diffview.nvim"] = {
        DiffViewNormal = { fg = c.gray2, bg = c.dark },
        DiffviewFilePanelDeletion = { fg = c.red_err },
        DiffviewFilePanelInsertion = { fg = c.diff_add },
        DiffviewStatusAdded = { fg = c.diff_add },
        DiffviewStatusDeleted = { fg = c.red_err },
        DiffviewStatusModified = { fg = c.diff_change },
        DiffviewStatusRenamed = { fg = c.diff_change },
        DiffviewVertSplit = { bg = c.bg },
    },

    ["lewis6991/gitsigns.nvim"] = {
        GitSignsAdd = { fg = c.green_func, bg = c.line_bg },
        GitSignsChange = { fg = c.diff_change, bg = c.line_bg },
        GitSignsDelete = { fg = c.red_key_w, bg = c.line_bg },
    },

    ["airblade/vim-gitgutter"] = {
        GitGutterAdd = { fg = c.diff_add },
        GitGutterChange = { fg = c.diff_change },
        GitGutterDelete = { fg = c.red_err },
    },

    ["lukas-reineke/indent-blankline.nvim"] = {
        IndentBlanklineChar = { fg = c.black1 },
        IndentBlanklineContextChar = { fg = c.gray2 },
        IndentBlanklineSpaceChar = { fg = c.white1 },
        IndentBlanklineSpaceCharBlankline = { fg = c.yellow },
    },

    ["preservim/nerdtree"] = {
        NERDTreeUp = { fg = c.yellow },
        NERDTreeDir = { fg = c.blue_type },
        NERDTreeOpenable = { fg = c.comment },
        NERDTreeClosable = { fg = c.red_key_w },
        NERDTreeIgnore = { fg = c.comment },
        NERDTreeHelpKey = { fg = c.white },
        NERDTreeHelpTitle = { fg = c.pink },
        NERDTreeToggleOn = { fg = c.green_func },
        NERDTreeToggleOff = { fg = c.orange },
        NERDTreeHelpCommand = { fg = c.yellow },
        NERDTreeFile = { fg = c.white },
        NERDTreeLinkTarget = { fg = c.blue_type },
        NERDTreeLinkFile = { fg = c.green_func },
        NERDTreeLinkDir = { fg = c.pink },
        NERDTreeNodeDelimiters = { fg = c.comment },
        NERDTreeDirSlash = { fg = c.comment },
        NERDTreeExecFile = { fg = c.green_func },
        NERDTreeRO = { fg = c.orange },
        NERDTreeBookmarkName = { fg = c.orange },
        NERDTreeFlags = { fg = c.red_key_w },
        NERDTreeCWD = { fg = c.red_key_w },
        NERDTreeBookmarksLeader = { fg = c.blue_type },
        NERDTreeBookmarksHeader = { fg = c.red_key_w },
        NERDTreeBookmark = { fg = c.orange },
        NERDTreePart = { fg = c.orange },
        NERDTreePartFile = { fg = c.blue_type },
        NERDTreeCurrentNode = { fg = c.comment },
    },

    ["mhinz/vim-startify"] = {
        StartifyEndOfBuffer = { fg = c.non_text },
        StartifyNumber = { fg = c.red_key_w },
        StartifySelect = { fg = c.comment },
        StartifyBracket = { fg = c.white },
        StartifySpecial = { fg = c.yellow },
        StartifyVar = { fg = c.comment },
        StartifyPath = { fg = c.comment },
        StartifyFile = { fg = c.blue_type },
        StartifySlash = { fg = c.comment },
        StartifyHeader = { fg = c.blue_type },
        StartifyFooter = { fg = c.pink },
        StartifySection = { fg = c.pink },
    },

    ["nathanaelkane/vim-indent-guides"] = {
        IndentGuidesEven = { fg = c.white1 },
        IndentGuidesOdd = { fg = c.comment },
    },

    ["akinsho/flutter-tools.nvim"] = {
        FlutterWidgetGuides = { fg = c.gray2 },
    },

    ["TimUntersberger/neogit"] = {
        NeogitBranch = { fg = c.pink },
        NeogitRemote = { fg = c.pink },
        NeogitHunkHeader = { fg = c.accent, bg = c.dark },
        NeogitDiffContext = { fg = c.accent, bg = c.bg },
        NeogitDiffAdd = { fg = c.diff_add, bg = c.dark },
        NeogitDiffDelete = { fg = c.red_err, bg = c.dark },
        -- Neogit...Highlight is when group is focused
        NeogitHunkHeaderHighlight = { fg = c.accent, bg = c.dark },
        NeogitDiffContextHighlight = { fg = c.accent, bg = c.bg },
        NeogitDiffAddHighlight = { fg = c.diff_add, bg = c.dark },
        NeogitDiffDeleteHighlight = { fg = c.red_err, bg = c.dark },
    },

    ["kyazdani42/nvim-tree.lua"] = {
        -- NvimTreeFolderIcon = { fg = c.orange },
        NvimTreeEmptyFolderName = { fg = c.yellow, italic = true },
        NvimTreeCursorLine = { fg = c.line_fg, bg = c.black1 },
        NvimTreeExecFile = { fg = c.green },
        NvimTreeFolderIcon = { fg = c.comment },
        NvimTreeFolderName = { fg = c.white1 },
        NvimTreeGitDeleted = { fg = c.red_err },
        NvimTreeGitDirty = { fg = c.diff_add },
        NvimTreeGitMerge = { fg = c.diff_change },
        NvimTreeGitNew = { fg = c.diff_add },
        NvimTreeGitRenamed = { fg = c.diff_change },
        NvimTreeGitStaged = { fg = c.diff_add },
        NvimTreeImageFile = { fg = c.pink },
        NvimTreeIndentMarker = { fg = c.comment },
        NvimTreeNormal = { fg = c.white1, bg = c.black },
        NvimTreeNormalNC = { bg = c.black },
        NvimTreeOpenedFolderName = { fg = c.white1, italic = true },
        NvimTreeRootFolder = { fg = c.yellow, bold = true },
        NvimTreeSpecialFile = { fg = c.orange },
        NvimTreeSymlink = { fg = c.yellow },
        NvimTreeVertSplit = { fg = c.black },
        NvimTreeEndOfBuffer = { fg = c.non_text },
    },

    ["nvim-telescope/telescope.nvim"] = {
        TelescopeBorder = {
            fg = c.white,
            bg = cfg.transparent_background and none or c.bg,
        },
        TelescopeMatching = { fg = c.yellow },
        TelescopePromptPrefix = { fg = c.green_func },
        TelescopeSelection = { fg = c.comment, bg = c.black1 },
    },

    ["folke/trouble.nvim"] = {
        TroubleTextInformation = { fg = c.blue_type },
        TroubleFile = { fg = c.yellow }, -- the source file that has error
        TroubleFoldIcon = { fg = c.blue_type }, -- fold icon color
        TroubleCount = { fg = c.red_key_w },
        TroubleError = { fg = c.red_key_w, bg = c.line_fg },

        TroubleTextError = { fg = c.red_key_w }, -- error info text
        TroubleNormal = { fg = c.white },
        TroubleLocation = { fg = c.white }, -- location of error
        TroubleIndent = { fg = c.comment }, -- indent color

        TroubleCode = { fg = c.orange_wr },
        TroubleSignError = { fg = c.red_key_w }, -- error sign color

        TroubleSignWarning = { fg = c.orange_wr },
        TroubleWarning = { fg = c.orange_wr },
        TroublePreview = { fg = c.red_key_w },
        TroubleSignInformation = { fg = c.white },

        TroubleSource = { fg = c.blue_type },
        TroubleSignHint = { fg = c.green },
        TroubleSignOther = { fg = c.green },
        TroubleTextWarning = { fg = c.orange_wr },
        TroubleInformation = { fg = c.white },
        TroubleHint = { fg = c.orange_wr },
        TroubleTextHint = { fg = c.white },
        TroubleText = { fg = c.white },
    },

    ["weilbith/nvim-code-action-menu"] = {
        CodeActionMenuWarningMessageText = { fg = c.orange_wr },
        CodeActionMenuWarningMessageBorder = { fg = c.red_key_w },
        CodeActionMenuMenuIndex = { fg = c.blue_type },
        CodeActionMenuMenuKind = { fg = c.green },
        CodeActionMenuMenuTitle = { fg = c.white },
        CodeActionMenuMenuDisabled = { fg = c.comment },
        CodeActionMenuMenuSelection = { fg = c.blue_type },
        CodeActionMenuDetailsTitle = { fg = c.white },
        CodeActionMenuDetailsLabel = { fg = c.yellow },
        CodeActionMenuDetailsPreferred = { fg = c.green },
        CodeActionMenuDetailsDisabled = { fg = c.comment },
        CodeActionMenuDetailsUndefined = { fg = c.comment },
    },

    -----------------------------------------
    -- lualine: github.com/nvim-lualine/lualine.nvim
    -----------------------------------------
    -- Highlight groups that are caught by the theme='auto'
    -- SEE https://github.com/nvim-lualine/lualine.nvim/blob/master/lua/lualine/themes/auto.lua
    --   normal background   PmenuSel, PmenuThumb, TabLineSel
    --   insert foreground   String, MoreMsg
    --   replace foreground  Number, Type
    --   visual foreground   Special, Boolean, Constant
    --   command foreground  Identifier
    --   background 1        Normal, StatusLineNC
    --   foreground          Normal, StatusLine
    --   background 2        StatusLine
    -----------------------------------------

    ["nvim-treesitter/nvim-treesitter"] = {
        TSAnnotation = { fg = c.yellow },
        TSAttribute = { fg = c.white },
        TSBoolean = { fg = c.orange, italic = cfg.italic.booleans },
        TSCharacter = { fg = c.yellow },
        TSCharacterSpecial = { fg = c.yellow },
        TSComment = { fg = c.comment, italic = cfg.italic.comments },
        TSConditional = { fg = c.red_key_w, italic = cfg.italic.keywords },
        TSConstBuiltin = { fg = c.pink },
        TSConstMacro = { fg = c.blue_type },
        TSConstant = { fg = c.pink },
        TSConstructor = { fg = c.white },
        TSEmphasis = { italic = true },
        TSError = { fg = c.red_err, bg = c.bg, bold = true },
        TSException = { fg = c.red_key_w },
        TSField = { fg = c.white },
        TSFloat = { fg = c.orange },
        TSFuncBuiltin = { fg = c.green_func, italic = cfg.italic.functions },
        TSFuncMacro = { fg = c.blue_type, italic = cfg.italic.functions },
        TSFunction = { fg = c.green_func, italic = cfg.italic.functions },
        TSInclude = { fg = c.red_key_w },
        TSKeyword = { fg = c.red_key_w, italic = cfg.italic.keywords },
        TSKeywordFunction = { fg = c.red_key_w, italic = cfg.italic.functions },
        TSKeywordOperator = { fg = c.red_key_w },
        TSKeywordReturn = { fg = c.red_key_w, italic = cfg.italic.keywords },
        TSNone = { fg = c.orange },
        TSLabel = { fg = c.pink },
        TSLiteral = { fg = c.yellow },
        TSMethod = { fg = c.green_func, italic = cfg.italic.functions },
        TSNamespace = { fg = c.blue_type },
        TSNumber = { fg = c.orange },
        TSOperator = { fg = c.red_key_w },
        TSParameter = { fg = c.white },
        TSParameterReference = { fg = c.white },
        TSProperty = { fg = c.white },
        TSPunctBracket = { fg = c.white },
        TSPunctDelimiter = { fg = c.white },
        TSPunctSpecial = { fg = c.gray_punc },
        TSQueryLinterError = { fg = c.red_err },
        TSRepeat = { fg = c.red_key_w, italic = cfg.italic.keywords },
        TSString = { fg = c.yellow },
        TSStringEscape = { fg = c.green },
        TSStringRegex = { fg = c.yellow },
        TSStrong = { fg = c.yellow },
        TSStructure = { fg = c.red_key_w },
        TSSymbol = { fg = c.white },
        TSTag = { fg = c.red_key_w },
        TSTagDelimiter = { fg = c.gray_punc },
        TSText = { fg = c.fg },
        TSTitle = { fg = c.white, bold = true },
        TSType = { fg = c.blue_type },
        TSTypeBuiltin = { fg = c.blue_type },
        TSTodo = { fg = c.orange },
        TSTypeQualifier = { fg = c.red_key_w },
        TSURI = { fg = c.yellow, underline = true },
        TSUnderline = { underline = true },
        TSVariable = { fg = c.white, italic = cfg.italic.variables },
        TSVariableBuiltin = { fg = c.pink, italic = cfg.italic.variables },
        TSDefine = { fg = c.red_key_w },
    },
}

return M
