local M = {}

---@param colors BooberryPalette
---@param config BooberryConfig
---@return table<string, vim.api.keyset.highlight>
function M.setup(colors, config)
  local endOfBuffer = {
    fg = config.show_end_of_buffer and colors.comment or colors.bg,
  }

  local highlights = {
    ---------------------------------------------------------------------------
    -- Editor UI
    ---------------------------------------------------------------------------
    Normal          = { fg = colors.fg, bg = colors.bg },
    NormalFloat     = { fg = colors.fg, bg = colors.menu },
    FloatBorder     = { fg = colors.comment },
    FloatTitle      = { fg = colors.fg, bold = true },
    ColorColumn     = { bg = colors.nontext },
    Conceal         = { fg = colors.comment },
    Cursor          = { fg = colors.bg, bg = colors.fg },
    CursorIM        = { fg = colors.bg, bg = colors.fg },
    CursorColumn    = { bg = colors.nontext },
    CursorLine      = { bg = colors.nontext },
    CursorLineNr    = { fg = colors.purple, bold = true },
    Directory       = { fg = colors.green },
    DiffAdd         = { fg = colors.green },
    DiffChange      = { fg = colors.yellow },
    DiffDelete      = { fg = colors.pink },
    DiffText        = { fg = colors.yellow, bold = true },
    EndOfBuffer     = endOfBuffer,
    ErrorMsg        = { fg = colors.pink },
    VertSplit       = { fg = colors.nontext },
    WinSeparator    = { fg = colors.nontext },
    Folded          = { fg = colors.comment, bg = colors.nontext },
    FoldColumn      = { fg = colors.comment },
    SignColumn       = { fg = colors.comment },
    IncSearch       = { fg = colors.black, bg = colors.yellow },
    LineNr          = { fg = colors.gutter_fg },
    MatchParen      = { fg = colors.fg, bg = colors.selection, bold = true },
    ModeMsg         = { fg = colors.fg, bold = true },
    MoreMsg         = { fg = colors.fg },
    NonText         = { fg = colors.nontext },
    Pmenu           = { fg = colors.fg, bg = colors.menu },
    PmenuSel        = { fg = colors.fg, bg = colors.selection },
    PmenuSbar       = { bg = colors.nontext },
    PmenuThumb      = { bg = colors.selection },
    Question        = { fg = colors.green },
    QuickFixLine    = { fg = colors.black, bg = colors.yellow },
    Search          = { fg = colors.black, bg = colors.yellow },
    CurSearch       = { fg = colors.black, bg = colors.green },
    SpecialKey      = { fg = colors.nontext },
    SpellBad        = { sp = colors.pink, undercurl = true },
    SpellCap        = { sp = colors.yellow, undercurl = true },
    SpellLocal      = { sp = colors.green, undercurl = true },
    SpellRare       = { sp = colors.purple, undercurl = true },
    StatusLine      = { fg = colors.fg, bg = colors.nontext },
    StatusLineNC    = { fg = colors.comment, bg = colors.black },
    TabLine         = { fg = colors.comment, bg = colors.nontext },
    TabLineFill     = { bg = colors.black },
    TabLineSel      = { fg = colors.fg, bg = colors.bg },
    Title           = { fg = colors.purple, bold = true },
    Visual          = { bg = colors.visual },
    VisualNOS       = { bg = colors.visual },
    WarningMsg      = { fg = colors.yellow },
    WildMenu        = { fg = colors.black, bg = colors.purple },
    WinBar          = { fg = colors.fg },
    WinBarNC        = { fg = colors.comment },

    ---------------------------------------------------------------------------
    -- Syntax (mapped from boo_berry helix scopes)
    ---------------------------------------------------------------------------
    -- "comment" = { fg = "berry_desaturated" }
    Comment         = config.italic_comment
      and { fg = colors.comment, italic = true }
      or  { fg = colors.comment },

    -- "constant" = { fg = "gold" }
    Constant        = { fg = colors.yellow },
    String          = { fg = colors.yellow },
    Character       = { fg = colors.yellow },
    Number          = { fg = colors.yellow },
    Boolean         = { fg = colors.yellow },
    Float           = { fg = colors.yellow },

    -- "variable" = { fg = "lilac" }
    Identifier      = { fg = colors.fg },

    -- "function" = { fg = "mint" }
    Function        = { fg = colors.green },

    -- "keyword" = { fg = "bubblegum" }
    -- "operator" = { fg = "bubblegum" }
    Statement       = { fg = colors.pink },
    Conditional     = { fg = colors.pink },
    Repeat          = { fg = colors.pink },
    Label           = { fg = colors.yellow },
    Operator        = { fg = colors.pink },
    Keyword         = { fg = colors.pink },
    Exception       = { fg = colors.pink },

    -- "function.macro" = { fg = "bubblegum" }
    PreProc         = { fg = colors.pink },
    Include         = { fg = colors.pink },
    Define          = { fg = colors.pink },
    Macro           = { fg = colors.pink },
    PreCondit       = { fg = colors.pink },

    -- "type" = { fg = "violet" }
    Type            = { fg = colors.purple },
    StorageClass    = { fg = colors.purple },
    Structure       = { fg = colors.purple },
    Typedef         = { fg = colors.purple },

    -- "punctuation" = { fg = "lilac" }
    Special         = { fg = colors.fg },
    SpecialChar     = { fg = colors.yellow },
    Tag             = { fg = colors.yellow },
    Delimiter       = { fg = colors.fg },
    SpecialComment  = { fg = colors.comment },
    Debug           = { fg = colors.pink },

    Underlined      = { fg = colors.green, underline = true },
    Bold            = { bold = true },
    Italic          = { italic = true },

    -- "error" = { fg = "bubblegum" }
    Error           = { fg = colors.pink },
    Todo            = { fg = colors.purple, bold = true },

    ---------------------------------------------------------------------------
    -- Diagnostics (mapped from boo_berry helix)
    ---------------------------------------------------------------------------
    -- "diagnostic.error" = { underline = { color = "gold", style = "curl" } }
    -- "diagnostic.warning" = { underline = { color = "bubblegum", style = "curl" } }
    -- "diagnostic.info" = { underline = { color = "lilac", style = "curl" } }
    -- "diagnostic.hint" = { underline = { color = "lilac", style = "curl" } }
    DiagnosticError             = { fg = colors.pink },
    DiagnosticWarn              = { fg = colors.yellow },
    DiagnosticInfo              = { fg = colors.fg },
    DiagnosticHint              = { fg = colors.fg },
    DiagnosticUnderlineError    = { sp = colors.yellow, undercurl = true },
    DiagnosticUnderlineWarn     = { sp = colors.pink, undercurl = true },
    DiagnosticUnderlineInfo     = { sp = colors.fg, undercurl = true },
    DiagnosticUnderlineHint     = { sp = colors.fg, undercurl = true },
    DiagnosticUnnecessary       = { link = "Comment" },
    DiagnosticDeprecated        = { strikethrough = true },
    DiagnosticFloatingError     = { fg = colors.pink },
    DiagnosticFloatingWarn      = { fg = colors.yellow },
    DiagnosticFloatingInfo      = { fg = colors.fg },
    DiagnosticFloatingHint      = { fg = colors.fg },
    DiagnosticSignError         = { fg = colors.pink },
    DiagnosticSignWarn          = { fg = colors.yellow },
    DiagnosticSignInfo          = { fg = colors.fg },
    DiagnosticSignHint          = { fg = colors.fg },
    DiagnosticVirtualTextError  = { fg = colors.pink },
    DiagnosticVirtualTextWarn   = { fg = colors.yellow },
    DiagnosticVirtualTextInfo   = { fg = colors.fg },
    DiagnosticVirtualTextHint   = { fg = colors.fg },

    ---------------------------------------------------------------------------
    -- LSP
    ---------------------------------------------------------------------------
    LspReferenceText            = { bg = colors.selection },
    LspReferenceRead            = { bg = colors.selection },
    LspReferenceWrite           = { bg = colors.selection },
    LspSignatureActiveParameter = { fg = colors.yellow, bold = true },
    LspInlayHint                = { fg = colors.comment },

    ---------------------------------------------------------------------------
    -- Treesitter
    ---------------------------------------------------------------------------
    -- Identifiers
    ["@variable"]                    = { fg = colors.fg },          -- variable = lilac
    ["@variable.builtin"]            = { fg = colors.purple },      -- variable.builtin = violet
    ["@variable.parameter"]          = { fg = colors.fg, italic = true },
    ["@variable.member"]             = { fg = colors.fg },

    -- Constants / literals
    ["@constant"]                    = { fg = colors.yellow },      -- constant = gold
    ["@constant.builtin"]            = { fg = colors.yellow },
    ["@constant.macro"]              = { fg = colors.yellow },

    -- Modules / namespaces
    ["@module"]                      = { fg = colors.fg },          -- module = lilac / namespace = lilac
    ["@module.builtin"]              = { fg = colors.fg },

    -- Labels / tags
    ["@label"]                       = { fg = colors.yellow },      -- label = gold
    ["@tag"]                         = { fg = colors.yellow },      -- tag = gold
    ["@tag.attribute"]               = { fg = colors.fg },          -- attribute = lilac
    ["@tag.delimiter"]               = { fg = colors.fg },

    -- Strings
    ["@string"]                      = { fg = colors.yellow },      -- string = gold
    ["@string.documentation"]        = { fg = colors.yellow },
    ["@string.regexp"]               = { fg = colors.yellow },
    ["@string.escape"]               = { fg = colors.pink },
    ["@string.special"]              = { fg = colors.yellow },
    ["@string.special.symbol"]       = { fg = colors.yellow },
    ["@string.special.url"]          = { fg = colors.green, underline = true },

    -- Characters and numbers
    ["@character"]                   = { fg = colors.yellow },
    ["@character.special"]           = { fg = colors.yellow },
    ["@number"]                      = { fg = colors.yellow },
    ["@number.float"]                = { fg = colors.yellow },
    ["@boolean"]                     = { fg = colors.yellow },

    -- Types
    ["@type"]                        = { fg = colors.purple },      -- type = violet
    ["@type.builtin"]                = { fg = colors.purple },
    ["@type.definition"]             = { fg = colors.purple },
    ["@type.qualifier"]              = { fg = colors.pink },

    -- Attributes / annotations
    ["@attribute"]                   = { fg = colors.fg },          -- attribute = lilac
    ["@attribute.builtin"]           = { fg = colors.fg },
    ["@property"]                    = { fg = colors.fg },

    -- Functions
    ["@function"]                    = { fg = colors.green },       -- function = mint
    ["@function.builtin"]            = { fg = colors.green },
    ["@function.call"]               = { fg = colors.green },
    ["@function.macro"]              = { fg = colors.pink },        -- function.macro = bubblegum
    ["@function.method"]             = { fg = colors.green },
    ["@function.method.call"]        = { fg = colors.green },
    ["@constructor"]                 = { fg = colors.purple },

    -- Keywords
    ["@keyword"]                     = { fg = colors.pink },        -- keyword = bubblegum
    ["@keyword.coroutine"]           = { fg = colors.pink },
    ["@keyword.function"]            = { fg = colors.pink },
    ["@keyword.operator"]            = { fg = colors.pink },
    ["@keyword.import"]              = { fg = colors.pink },
    ["@keyword.type"]                = { fg = colors.pink },
    ["@keyword.modifier"]            = { fg = colors.pink },
    ["@keyword.repeat"]              = { fg = colors.pink },
    ["@keyword.return"]              = { fg = colors.pink },
    ["@keyword.debug"]               = { fg = colors.pink },
    ["@keyword.exception"]           = { fg = colors.pink },
    ["@keyword.conditional"]         = { fg = colors.pink },
    ["@keyword.conditional.ternary"] = { fg = colors.pink },
    ["@keyword.directive"]           = { fg = colors.pink },
    ["@keyword.directive.define"]    = { fg = colors.pink },

    -- Operators / punctuation
    ["@operator"]                    = { fg = colors.pink },        -- operator = bubblegum
    ["@punctuation.bracket"]         = { fg = colors.fg },          -- punctuation = lilac
    ["@punctuation.delimiter"]       = { fg = colors.fg },
    ["@punctuation.special"]         = { fg = colors.fg },

    -- Comments
    ["@comment"]                     = config.italic_comment
      and { fg = colors.comment, italic = true }
      or  { fg = colors.comment },
    ["@comment.documentation"]       = { fg = colors.comment },
    ["@comment.error"]               = { fg = colors.pink },
    ["@comment.warning"]             = { fg = colors.yellow },
    ["@comment.todo"]                = { fg = colors.purple, bold = true },
    ["@comment.note"]                = { fg = colors.green },

    -- Markup
    ["@markup"]                      = { fg = colors.fg },
    ["@markup.strong"]               = { fg = colors.fg, bold = true },
    ["@markup.italic"]               = { fg = colors.fg, italic = true },
    ["@markup.strikethrough"]        = { fg = colors.fg, strikethrough = true },
    ["@markup.underline"]            = { fg = colors.fg, underline = true },
    ["@markup.heading"]              = { fg = colors.purple, bold = true },
    ["@markup.raw"]                  = { fg = colors.yellow },
    ["@markup.link"]                 = { fg = colors.green },
    ["@markup.link.url"]             = { fg = colors.green, underline = true },
    ["@markup.link.label"]           = { fg = colors.green },
    ["@markup.list"]                 = { fg = colors.pink },
    ["@markup.math"]                 = { fg = colors.yellow },

    -- Diff
    ["@diff.plus"]                   = { fg = colors.green },       -- diff.plus = mint
    ["@diff.minus"]                  = { fg = colors.pink },        -- diff.minus = bubblegum
    ["@diff.delta"]                  = { fg = colors.yellow },      -- diff.delta = gold

    ---------------------------------------------------------------------------
    -- Semantic tokens
    ---------------------------------------------------------------------------
    ["@lsp.type.class"]         = { fg = colors.purple },
    ["@lsp.type.decorator"]     = { fg = colors.green },
    ["@lsp.type.enum"]          = { fg = colors.purple },
    ["@lsp.type.enumMember"]    = { fg = colors.yellow },
    ["@lsp.type.function"]      = { fg = colors.green },
    ["@lsp.type.interface"]     = { fg = colors.purple },
    ["@lsp.type.macro"]         = { fg = colors.pink },
    ["@lsp.type.method"]        = { fg = colors.green },
    ["@lsp.type.namespace"]     = { fg = colors.fg },
    ["@lsp.type.parameter"]     = { fg = colors.fg, italic = true },
    ["@lsp.type.property"]      = { fg = colors.fg },
    ["@lsp.type.struct"]        = { fg = colors.purple },
    ["@lsp.type.type"]          = { fg = colors.purple },
    ["@lsp.type.typeParameter"] = { fg = colors.purple },
    ["@lsp.type.variable"]      = { fg = colors.fg },
    ["@lsp.mod.deprecated"]     = { strikethrough = true },

    ---------------------------------------------------------------------------
    -- Plugin: Telescope
    ---------------------------------------------------------------------------
    TelescopeNormal         = { fg = colors.fg, bg = colors.bg },
    TelescopeBorder         = { fg = colors.comment },
    TelescopePromptNormal   = { fg = colors.fg, bg = colors.nontext },
    TelescopePromptBorder   = { fg = colors.nontext, bg = colors.nontext },
    TelescopePromptTitle    = { fg = colors.black, bg = colors.pink },
    TelescopePreviewTitle   = { fg = colors.black, bg = colors.green },
    TelescopeResultsTitle   = { fg = colors.black, bg = colors.purple },
    TelescopeSelection      = { bg = colors.selection },
    TelescopeMatching       = { fg = colors.green, bold = true },

    ---------------------------------------------------------------------------
    -- Plugin: NvimTree
    ---------------------------------------------------------------------------
    NvimTreeNormal         = { fg = colors.fg, bg = colors.menu },
    NvimTreeVertSplit       = { fg = colors.bg, bg = colors.bg },
    NvimTreeRootFolder      = { fg = colors.purple, bold = true },
    NvimTreeGitDirty        = { fg = colors.yellow },
    NvimTreeGitNew          = { fg = colors.green },
    NvimTreeGitDeleted      = { fg = colors.pink },
    NvimTreeGitIgnored      = { fg = colors.comment },
    NvimTreeHidden          = { fg = colors.comment },
    NvimTreeSpecialFile     = { fg = colors.yellow },
    NvimTreeIndentMarker    = { fg = colors.nontext },
    NvimTreeImageFile       = { fg = colors.fg },
    NvimTreeFolderName      = { fg = colors.fg },
    NvimTreeOpenedFolderName = { fg = colors.green },
    NvimTreeFolderIcon      = { fg = colors.purple },

    ---------------------------------------------------------------------------
    -- Plugin: NeoTree
    ---------------------------------------------------------------------------
    NeoTreeNormal           = { fg = colors.fg, bg = colors.menu },
    NeoTreeNormalNC         = { fg = colors.fg, bg = colors.menu },
    NeoTreeDirectoryName    = { fg = colors.fg },
    NeoTreeDirectoryIcon    = { fg = colors.purple },
    NeoTreeRootName         = { fg = colors.purple, bold = true },
    NeoTreeGitAdded         = { fg = colors.green },
    NeoTreeGitModified      = { fg = colors.yellow },
    NeoTreeGitDeleted       = { fg = colors.pink },
    NeoTreeGitConflict      = { fg = colors.pink, bold = true },
    NeoTreeGitUntracked     = { fg = colors.comment },
    NeoTreeGitIgnored       = { fg = colors.comment },
    NeoTreeHiddenByName     = { fg = colors.comment },
    NeoTreeDotfile          = { fg = colors.comment },
    NeoTreeIndentMarker     = { fg = colors.nontext },

    ---------------------------------------------------------------------------
    -- Plugin: Gitsigns
    ---------------------------------------------------------------------------
    GitSignsAdd             = { fg = colors.green },
    GitSignsChange          = { fg = colors.yellow },
    GitSignsDelete          = { fg = colors.pink },

    ---------------------------------------------------------------------------
    -- Plugin: BufferLine
    ---------------------------------------------------------------------------
    BufferLineIndicatorSelected = { fg = colors.purple },
    BufferLineFill              = { bg = colors.black },

    ---------------------------------------------------------------------------
    -- Plugin: indent-blankline
    ---------------------------------------------------------------------------
    IndentBlanklineChar             = { fg = colors.nontext },
    IndentBlanklineContextChar      = { fg = colors.comment },
    IblIndent                       = { fg = colors.nontext },
    IblScope                        = { fg = colors.comment },

    ---------------------------------------------------------------------------
    -- Plugin: nvim-cmp / blink.cmp
    ---------------------------------------------------------------------------
    CmpItemAbbrMatch        = { fg = colors.green, bold = true },
    CmpItemAbbrMatchFuzzy   = { fg = colors.green, bold = true },
    CmpItemKindFunction     = { fg = colors.green },
    CmpItemKindMethod       = { fg = colors.green },
    CmpItemKindVariable     = { fg = colors.fg },
    CmpItemKindKeyword      = { fg = colors.pink },
    CmpItemKindText         = { fg = colors.fg },
    CmpItemKindClass        = { fg = colors.purple },
    CmpItemKindStruct       = { fg = colors.purple },
    CmpItemKindInterface    = { fg = colors.purple },
    CmpItemKindModule       = { fg = colors.fg },
    CmpItemKindProperty     = { fg = colors.fg },
    CmpItemKindField        = { fg = colors.fg },
    CmpItemKindConstant     = { fg = colors.yellow },
    CmpItemKindSnippet      = { fg = colors.pink },
    CmpItemKindColor        = { fg = colors.green },
    CmpItemKindFile         = { fg = colors.fg },
    CmpItemKindFolder       = { fg = colors.fg },
    CmpItemKindEnum         = { fg = colors.purple },
    CmpItemKindEnumMember   = { fg = colors.yellow },
    CmpItemKindValue        = { fg = colors.yellow },
    CmpItemKindEvent        = { fg = colors.pink },
    CmpItemKindOperator     = { fg = colors.pink },
    CmpItemKindTypeParameter = { fg = colors.purple },

    ---------------------------------------------------------------------------
    -- Plugin: nvim-dap-ui
    ---------------------------------------------------------------------------
    DapUIPlayPause          = { fg = colors.green },
    DapUIRestart            = { fg = colors.green },
    DapUIStop               = { fg = colors.pink },
    DapUIStepOver           = { fg = colors.green },
    DapUIStepInto           = { fg = colors.green },
    DapUIStepBack           = { fg = colors.green },
    DapUIStepOut            = { fg = colors.green },
    DapUIBreakpointsPath    = { fg = colors.purple },
    DapUIBreakpointsInfo    = { fg = colors.fg },
    DapUIBreakpointsCurrentLine = { fg = colors.green, bold = true },
    DapUIScope              = { fg = colors.purple },
    DapUIType               = { fg = colors.purple },
    DapUIValue              = { fg = colors.fg },
    DapUIVariable           = { fg = colors.fg },

    ---------------------------------------------------------------------------
    -- Plugin: mini.nvim
    ---------------------------------------------------------------------------
    MiniIconsAzure  = { fg = colors.green },
    MiniIconsBlue   = { fg = colors.purple },
    MiniIconsCyan    = { fg = colors.green },
    MiniIconsGreen  = { fg = colors.green },
    MiniIconsGrey   = { fg = colors.comment },
    MiniIconsOrange = { fg = colors.yellow },
    MiniIconsPurple = { fg = colors.purple },
    MiniIconsRed    = { fg = colors.pink },
    MiniIconsYellow = { fg = colors.yellow },

    MiniStatuslineModeNormal  = { fg = colors.black, bg = colors.purple, bold = true },
    MiniStatuslineModeInsert  = { fg = colors.black, bg = colors.green, bold = true },
    MiniStatuslineModeVisual  = { fg = colors.black, bg = colors.pink, bold = true },
    MiniStatuslineModeReplace = { fg = colors.black, bg = colors.yellow, bold = true },
    MiniStatuslineModeCommand = { fg = colors.black, bg = colors.yellow, bold = true },

    MiniIndentscopeSymbol = { fg = colors.comment },

    ---------------------------------------------------------------------------
    -- Plugin: Which-key
    ---------------------------------------------------------------------------
    WhichKey          = { fg = colors.pink },
    WhichKeyGroup     = { fg = colors.purple },
    WhichKeyDesc      = { fg = colors.fg },
    WhichKeySeparator = { fg = colors.comment },
    WhichKeyFloat     = { bg = colors.menu },
    WhichKeyValue     = { fg = colors.comment },

    ---------------------------------------------------------------------------
    -- Plugin: Lazy.nvim
    ---------------------------------------------------------------------------
    LazyH1          = { fg = colors.black, bg = colors.purple, bold = true },
    LazyButton      = { fg = colors.fg, bg = colors.nontext },
    LazyButtonActive = { fg = colors.black, bg = colors.purple },
    LazySpecial     = { fg = colors.green },

    ---------------------------------------------------------------------------
    -- Plugin: Mason
    ---------------------------------------------------------------------------
    MasonNormal     = { fg = colors.fg, bg = colors.menu },
    MasonHeader     = { fg = colors.black, bg = colors.purple, bold = true },
    MasonHighlight  = { fg = colors.green },
    MasonHighlightBlock = { fg = colors.black, bg = colors.green },
    MasonHighlightBlockBold = { fg = colors.black, bg = colors.green, bold = true },

    ---------------------------------------------------------------------------
    -- Plugin: Noice
    ---------------------------------------------------------------------------
    NoiceCmdlinePopup       = { fg = colors.fg, bg = colors.menu },
    NoiceCmdlinePopupBorder = { fg = colors.comment },
    NoiceCmdlineIcon        = { fg = colors.pink },
    NoiceConfirm            = { fg = colors.fg, bg = colors.menu },
    NoiceConfirmBorder      = { fg = colors.comment },

    ---------------------------------------------------------------------------
    -- Plugin: Notify
    ---------------------------------------------------------------------------
    NotifyERRORBorder = { fg = colors.pink },
    NotifyERRORIcon   = { fg = colors.pink },
    NotifyERRORTitle  = { fg = colors.pink },
    NotifyWARNBorder  = { fg = colors.yellow },
    NotifyWARNIcon    = { fg = colors.yellow },
    NotifyWARNTitle   = { fg = colors.yellow },
    NotifyINFOBorder  = { fg = colors.green },
    NotifyINFOIcon    = { fg = colors.green },
    NotifyINFOTitle   = { fg = colors.green },
    NotifyDEBUGBorder = { fg = colors.comment },
    NotifyDEBUGIcon   = { fg = colors.comment },
    NotifyDEBUGTitle  = { fg = colors.comment },
    NotifyTRACEBorder = { fg = colors.purple },
    NotifyTRACEIcon   = { fg = colors.purple },
    NotifyTRACETitle  = { fg = colors.purple },
  }

  return highlights
end

return M
