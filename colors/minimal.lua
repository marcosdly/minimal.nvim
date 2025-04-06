require "minimal.config"

local util = require "minimal.util"
local theme = require("minimal.themes.minimal").highlight_groups

util.load_theme_table(theme)
