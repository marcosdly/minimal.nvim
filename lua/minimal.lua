local util = require "minimal.util"

return {
    setup = util.make_setup_function(require("minimal.themes.minimal").highlight_groups),
}
