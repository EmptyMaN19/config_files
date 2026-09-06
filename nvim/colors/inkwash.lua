-- inkwash.lua
-- A warm parchment / sage-teal / coral colorscheme
-- inspired by a monochrome ink-wash wallpaper with a single coral accent.
--
-- Install: save as ~/.config/nvim/colors/inkwash.lua
-- Then run: :colorscheme inkwash
--
-- Toggle background mode below (vim.o.background) for light/dark variants.

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.background = "dark" -- change to "light" for the parchment-bright variant
vim.g.colors_name = "inkwash"

local bg_dark = "#2A2620"
local bg_light = "#E8E0C9"

local c = {
  bg = vim.o.background == "dark" and bg_dark or bg_light,
  bg_alt = vim.o.background == "dark" and "#332E27" or "#DED4B8",
  bg_float = vim.o.background == "dark" and "#242019" or "#DAD0B2",
  fg = vim.o.background == "dark" and "#E4DCC4" or "#3A342B",
  fg_dim = vim.o.background == "dark" and "#B8AF95" or "#5A5343",

  comment = "#8C8368", -- faded sepia
  sage = "#5B6B5E", -- keywords
  sage_lt = "#7D8F82", -- functions
  tan = "#A67C52", -- strings
  rust = "#B5533C", -- types / constants
  gold = "#9C7A4A", -- numbers
  punct = "#6E6656", -- operators / punctuation

  coral = "#C97B6D", -- accent: cursorline, mode, matchparen
  selection = "#CBBF9A",
  error = "#B5453A",
  warning = "#C4954B",
  hint = "#8C8368",
  info = "#7D8F82",
  add = "#6E8C77",

  border = "#8C8368",
  none = "NONE",
}

local hl = vim.api.nvim_set_hl

-- ===== Editor UI =====
hl(0, "Normal", { fg = c.fg, bg = c.bg })
hl(0, "NormalFloat", { fg = c.fg, bg = c.bg_float })
hl(0, "NormalNC", { fg = c.fg, bg = c.bg })
hl(0, "FloatBorder", { fg = c.border, bg = c.bg_float })
hl(0, "SignColumn", { fg = c.fg_dim, bg = c.bg })
hl(0, "ColorColumn", { bg = c.bg_alt })
hl(0, "CursorLine", { bg = c.bg_alt })
hl(0, "CursorLineNr", { fg = c.coral, bold = true })
hl(0, "LineNr", { fg = c.fg_dim })
hl(0, "VertSplit", { fg = c.border })
hl(0, "WinSeparator", { fg = c.border })
hl(0, "Visual", { bg = c.selection, fg = c.bg })
hl(0, "VisualNOS", { bg = c.selection, fg = c.bg })
hl(0, "Search", { bg = c.gold, fg = c.bg })
hl(0, "IncSearch", { bg = c.coral, fg = c.bg })
hl(0, "CurSearch", { bg = c.coral, fg = c.bg })
hl(0, "Pmenu", { fg = c.fg, bg = c.bg_alt })
hl(0, "PmenuSel", { fg = c.bg, bg = c.coral, bold = true })
hl(0, "PmenuSbar", { bg = c.bg_alt })
hl(0, "PmenuThumb", { bg = c.comment })
hl(0, "StatusLine", { fg = c.fg, bg = c.bg_alt })
hl(0, "StatusLineNC", { fg = c.fg_dim, bg = c.bg_alt })
hl(0, "TabLine", { fg = c.fg_dim, bg = c.bg_alt })
hl(0, "TabLineSel", { fg = c.coral, bg = c.bg, bold = true })
hl(0, "TabLineFill", { bg = c.bg_alt })
hl(0, "MatchParen", { fg = c.coral, bold = true, underline = true })
hl(0, "Directory", { fg = c.sage_lt })
hl(0, "Title", { fg = c.rust, bold = true })
hl(0, "NonText", { fg = c.comment })
hl(0, "Whitespace", { fg = c.bg_alt })
hl(0, "EndOfBuffer", { fg = c.bg })
hl(0, "WildMenu", { fg = c.bg, bg = c.coral })
hl(0, "FoldColumn", { fg = c.comment, bg = c.bg })
hl(0, "Folded", { fg = c.fg_dim, bg = c.bg_alt, italic = true })

-- ===== Diagnostics =====
hl(0, "DiagnosticError", { fg = c.error })
hl(0, "DiagnosticWarn", { fg = c.warning })
hl(0, "DiagnosticInfo", { fg = c.info })
hl(0, "DiagnosticHint", { fg = c.hint })
hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = c.error })
hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = c.warning })
hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = c.info })
hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = c.hint })

-- ===== Diff =====
hl(0, "DiffAdd", { fg = c.add, bg = c.none })
hl(0, "DiffChange", { fg = c.gold, bg = c.none })
hl(0, "DiffDelete", { fg = c.error, bg = c.none })
hl(0, "DiffText", { fg = c.coral, bg = c.none, bold = true })

-- ===== Syntax (classic groups) =====
hl(0, "Comment", { fg = c.comment, italic = true })
hl(0, "Constant", { fg = c.rust })
hl(0, "String", { fg = c.tan })
hl(0, "Character", { fg = c.tan })
hl(0, "Number", { fg = c.gold })
hl(0, "Boolean", { fg = c.rust, bold = true })
hl(0, "Float", { fg = c.gold })
hl(0, "Identifier", { fg = c.fg })
hl(0, "Function", { fg = c.sage_lt, bold = true })
hl(0, "Statement", { fg = c.sage, bold = true })
hl(0, "Conditional", { fg = c.sage, bold = true })
hl(0, "Repeat", { fg = c.sage, bold = true })
hl(0, "Label", { fg = c.sage })
hl(0, "Operator", { fg = c.punct })
hl(0, "Keyword", { fg = c.sage, bold = true })
hl(0, "Exception", { fg = c.error, bold = true })
hl(0, "PreProc", { fg = c.rust })
hl(0, "Include", { fg = c.sage })
hl(0, "Define", { fg = c.sage })
hl(0, "Macro", { fg = c.rust })
hl(0, "Type", { fg = c.rust, bold = true })
hl(0, "StorageClass", { fg = c.rust })
hl(0, "Structure", { fg = c.rust })
hl(0, "Typedef", { fg = c.rust })
hl(0, "Special", { fg = c.coral })
hl(0, "SpecialChar", { fg = c.coral })
hl(0, "Tag", { fg = c.sage_lt })
hl(0, "Delimiter", { fg = c.punct })
hl(0, "SpecialComment", { fg = c.comment, italic = true })
hl(0, "Underlined", { underline = true })
hl(0, "Ignore", { fg = c.fg_dim })
hl(0, "Error", { fg = c.error, bold = true })
hl(0, "Todo", { fg = c.bg, bg = c.coral, bold = true })

-- ===== Treesitter =====
hl(0, "@variable", { fg = c.fg })
hl(0, "@variable.builtin", { fg = c.rust, italic = true })
hl(0, "@parameter", { fg = c.fg })
hl(0, "@constant", { fg = c.rust })
hl(0, "@constant.builtin", { fg = c.rust, bold = true })
hl(0, "@string", { fg = c.tan })
hl(0, "@string.escape", { fg = c.coral })
hl(0, "@number", { fg = c.gold })
hl(0, "@boolean", { fg = c.rust, bold = true })
hl(0, "@function", { fg = c.sage_lt, bold = true })
hl(0, "@function.call", { fg = c.sage_lt })
hl(0, "@method", { fg = c.sage_lt })
hl(0, "@constructor", { fg = c.rust })
hl(0, "@keyword", { fg = c.sage, bold = true })
hl(0, "@keyword.function", { fg = c.sage, bold = true })
hl(0, "@keyword.return", { fg = c.sage, bold = true })
hl(0, "@conditional", { fg = c.sage, bold = true })
hl(0, "@repeat", { fg = c.sage, bold = true })
hl(0, "@operator", { fg = c.punct })
hl(0, "@punctuation.bracket", { fg = c.punct })
hl(0, "@punctuation.delimiter", { fg = c.punct })
hl(0, "@comment", { fg = c.comment, italic = true })
hl(0, "@type", { fg = c.rust, bold = true })
hl(0, "@type.builtin", { fg = c.rust })
hl(0, "@property", { fg = c.sage_lt })
hl(0, "@field", { fg = c.sage_lt })
hl(0, "@tag", { fg = c.sage_lt })
hl(0, "@tag.attribute", { fg = c.tan })
hl(0, "@tag.delimiter", { fg = c.punct })
hl(0, "@namespace", { fg = c.rust })
hl(0, "@text.title", { fg = c.rust, bold = true })
hl(0, "@text.literal", { fg = c.tan })
hl(0, "@text.uri", { fg = c.coral, underline = true })

-- ===== LSP semantic tokens =====
hl(0, "@lsp.type.class", { fg = c.rust, bold = true })
hl(0, "@lsp.type.function", { fg = c.sage_lt })
hl(0, "@lsp.type.variable", { fg = c.fg })
hl(0, "@lsp.type.parameter", { fg = c.fg })

-- ===== Common plugins =====
-- Telescope
hl(0, "TelescopeBorder", { fg = c.border })
hl(0, "TelescopeSelection", { bg = c.bg_alt, fg = c.coral, bold = true })
hl(0, "TelescopePromptPrefix", { fg = c.coral })
hl(0, "TelescopeMatching", { fg = c.coral, bold = true })

-- nvim-cmp
hl(0, "CmpItemAbbrMatch", { fg = c.coral, bold = true })
hl(0, "CmpItemKindFunction", { fg = c.sage_lt })
hl(0, "CmpItemKindVariable", { fg = c.fg })
hl(0, "CmpItemKindKeyword", { fg = c.sage })

-- GitSigns
hl(0, "GitSignsAdd", { fg = c.add })
hl(0, "GitSignsChange", { fg = c.gold })
hl(0, "GitSignsDelete", { fg = c.error })

-- NvimTree / neo-tree
hl(0, "NvimTreeFolderIcon", { fg = c.sage_lt })
hl(0, "NvimTreeFolderName", { fg = c.fg })
hl(0, "NvimTreeOpenedFolderName", { fg = c.coral, bold = true })
hl(0, "NvimTreeRootFolder", { fg = c.rust, bold = true })
hl(0, "NvimTreeIndentMarker", { fg = c.comment })

-- WhichKey
hl(0, "WhichKey", { fg = c.coral, bold = true })
hl(0, "WhichKeyGroup", { fg = c.sage_lt })
hl(0, "WhichKeyDesc", { fg = c.fg })
hl(0, "WhichKeySeparator", { fg = c.comment })

return {}
