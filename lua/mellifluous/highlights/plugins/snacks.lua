local M = {}

function M.set(hl, colors)
    local config = require("mellifluous.config").config
    local transparent = config.transparent_background.floating_windows
    local float_bg = transparent and "NONE" or hl.get("NormalFloat").bg
    local normal_bg = transparent and "NONE" or hl.get("Normal").bg

    -- Notifier
    hl.set("SnacksNotifierDebug", { fg = colors.fg, bg = normal_bg })
    hl.set("SnacksNotifierBorderDebug", { fg = colors.green, bg = normal_bg })
    hl.set("SnacksNotifierIconDebug", { fg = colors.green })
    hl.set("SnacksNotifierTitleDebug", { fg = colors.green })

    hl.set("SnacksNotifierError", { fg = colors.fg, bg = normal_bg })
    hl.set("SnacksNotifierBorderError", { fg = colors.red, bg = normal_bg })
    hl.set("SnacksNotifierIconError", { fg = colors.red })
    hl.set("SnacksNotifierTitleError", { fg = colors.red })

    hl.set("SnacksNotifierInfo", { fg = colors.fg, bg = normal_bg })
    hl.set("SnacksNotifierBorderInfo", { fg = colors.blue, bg = normal_bg })
    hl.set("SnacksNotifierIconInfo", { fg = colors.blue })
    hl.set("SnacksNotifierTitleInfo", { fg = colors.blue })

    hl.set("SnacksNotifierTrace", { fg = colors.fg, bg = normal_bg })
    hl.set("SnacksNotifierBorderTrace", { fg = colors.magenta, bg = normal_bg })
    hl.set("SnacksNotifierIconTrace", { fg = colors.magenta })
    hl.set("SnacksNotifierTitleTrace", { fg = colors.magenta })

    hl.set("SnacksNotifierWarn", { fg = colors.fg, bg = normal_bg })
    hl.set("SnacksNotifierBorderWarn", { fg = colors.yellow, bg = normal_bg })
    hl.set("SnacksNotifierIconWarn", { fg = colors.yellow })
    hl.set("SnacksNotifierTitleWarn", { fg = colors.yellow })

    -- Dashboard
    hl.set("SnacksDashboardDesc", { fg = colors.green })
    hl.set("SnacksDashboardFooter", { fg = colors.cyan, bold = true })
    hl.set("SnacksDashboardHeader", { fg = colors.cyan })
    hl.set("SnacksDashboardIcon", { fg = colors.green })
    hl.set("SnacksDashboardKey", { fg = colors.yellow })
    hl.set("SnacksDashboardSpecial", { fg = colors.red })
    hl.set("SnacksDashboardDir", { fg = colors.fg4 })

    -- Profiler & Footer
    hl.set("SnacksProfilerIconInfo", { bg = colors.bg3, fg = colors.green })
    hl.set("SnacksProfilerBadgeInfo", { bg = hl.get("CursorLine").bg, fg = colors.green })
    hl.set("SnacksFooterKey", { link = "SnacksProfilerIconInfo" })
    hl.set("SnacksFooterDesc", { link = "SnacksProfilerBadgeInfo" })
    hl.set("SnacksProfilerIconTrace", { bg = colors.green, fg = float_bg })
    hl.set("SnacksProfilerBadgeTrace", { bg = colors.green, fg = float_bg })

    -- Misc
    hl.set("SnacksIndent", { fg = hl.get("Number").fg, nocombine = true })
    hl.set("SnacksIndentScope", { fg = colors.cyan, nocombine = true })
    hl.set("SnacksZenIcon", { fg = colors.red })
    hl.set("SnacksInputIcon", { fg = colors.red })
    hl.set("SnacksInputBorder", { fg = colors.yellow })
    hl.set("SnacksInputTitle", { fg = colors.yellow })

    -- Picker
    hl.set("SnacksPickerInputBorder", { fg = colors.green, bg = float_bg })
    hl.set("SnacksPickerInputTitle", { fg = colors.cyan, bg = float_bg, bold = true })
    hl.set("SnacksPickerBoxTitle", { fg = colors.cyan, bg = float_bg })
    hl.set("SnacksPickerSelected", { fg = colors.magenta })
    hl.set("SnacksPickerToggle", { link = "SnacksProfilerBadgeInfo" })
    hl.set("SnacksPickerPickWinCurrent", { fg = colors.fg, bg = colors.magenta, bold = true })
    hl.set("SnacksPickerPickWin", { fg = colors.fg, bg = colors.red, bold = true })
end

return M
