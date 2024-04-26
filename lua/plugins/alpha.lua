return {
  "goolord/alpha-nvim",

  opts = function()
    local dashboard = require("alpha.themes.dashboard")
    local logo = [[
.·:''''''''''''''''''''''''''''''''''''''''''''''''''''''':·.
: :                                                       : :
: :                                                       : :
: :     _                                 _               : :
: :    (_)  ___   _   _          __   __ (_)  _ __ ___    : :
: :    | | / __| | | | |  _____  \ \ / / | | | '_ ` _ \   : :
: :    | | \__ \ | |_| | |_____|  \ V /  | | | | | | | |  : :
: :   _/ | |___/  \__, |           \_/   |_| |_| |_| |_|  : :
: :  |__/         |___/                                   : :
: :                                                       : :
: :                                                       : :
'·:.......................................................:·'
  ]]

    dashboard.section.header.val = vim.split(logo, "\n")
  -- stylua: ignore
  dashboard.section.buttons.val = {
    dashboard.button("f", " " .. " Find file",       "<cmd> Telescope find_files <cr>"),
    dashboard.button("n", " " .. " New file",        "<cmd> ene <BAR> startinsert <cr>"),
    dashboard.button("r", " " .. " Recent files",    "<cmd> Telescope oldfiles <cr>"),
    dashboard.button("g", " " .. " Find text",       "<cmd> Telescope live_grep <cr>"),
    dashboard.button("c", " " .. " Config",          "<cmd> lua require('lazyvim.util').telescope.config_files()() <cr>"),
    dashboard.button("s", " " .. " Restore Session", [[<cmd> lua require("persistence").load() <cr>]]),
    dashboard.button("x", " " .. " Lazy Extras",     "<cmd> LazyExtras <cr>"),
    dashboard.button("l", "󰒲 " .. " Lazy",            "<cmd> Lazy <cr>"),
    dashboard.button("q", " " .. " Quit",            "<cmd> qa <cr>"),
  }
    for _, button in ipairs(dashboard.section.buttons.val) do
      button.opts.hl = "AlphaButtons"
      button.opts.hl_shortcut = "AlphaShortcut"
    end
    dashboard.section.header.opts.hl = "AlphaHeader"
    dashboard.section.buttons.opts.hl = "AlphaButtons"
    dashboard.section.footer.opts.hl = "AlphaFooter"
    dashboard.opts.layout[1].val = 8
    return dashboard
  end,
}
