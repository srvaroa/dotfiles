--------------------------
-- Custom awesome theme --
--------------------------

theme = {}

theme.font          = "Terminus 6"

theme.bg_normal     = "#000000"
theme.bg_focus      = "#222222"
theme.bg_urgent     = "#ff0000"
theme.bg_minimize   = "#444444"

theme.fg_normal     = "#666666"
theme.fg_focus      = "#aaaaaa"
theme.fg_urgent     = "#dd0000"
theme.fg_minimize   = "#000000"

theme.border_width  = "1"
theme.border_normal = "#000000"
theme.border_focus  = "#002200"
theme.border_marked = "#660000"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Display the taglist squares
theme.taglist_squares_sel   = "/home/galo/.config/awesome/varoa/taglist/squarefw.png"
theme.taglist_squares_unsel = "/home/galo/.config/awesome/varoa/taglist/squarew.png"

theme.tasklist_floating_icon = "/home/galo/.config/awesome/varoa/tasklist/floatingw.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = "/home/galo/.config/awesome/varoa/submenu.png"
theme.menu_height = "15"
theme.menu_width  = "100"

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = "/home/galo/.config/awesome/varoa/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = "/home/galo/.config/awesome/varoa/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = "/home/galo/.config/awesome/varoa/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = "/home/galo/.config/awesome/varoa/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = "/home/galo/.config/awesome/varoa/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = "/home/galo/.config/awesome/varoa/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = "/home/galo/.config/awesome/varoa/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = "/home/galo/.config/awesome/varoa/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = "/home/galo/.config/awesome/varoa/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = "/home/galo/.config/awesome/varoa/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = "/home/galo/.config/awesome/varoa/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = "/home/galo/.config/awesome/varoa/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = "/home/galo/.config/awesome/varoa/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = "/home/galo/.config/awesome/varoa/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = "/home/galo/.config/awesome/varoa/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = "/home/galo/.config/awesome/varoa/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = "/home/galo/.config/awesome/varoa/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = "/home/galo/.config/awesome/varoa/titlebar/maximized_focus_active.png"

-- You can use your own command to set your wallpaper
theme.wallpaper_cmd = { "awsetbg /home/galo/Dropbox/images/wallpapers/whaam.jpg" }

-- You can use your own layout icons like this:
theme.layout_fairh = "/home/galo/.config/awesome/varoa/layouts/fairhw.png"
theme.layout_fairv = "/home/galo/.config/awesome/varoa/layouts/fairvw.png"
theme.layout_floating  = "/home/galo/.config/awesome/varoa/layouts/floatingw.png"
theme.layout_magnifier = "/home/galo/.config/awesome/varoa/layouts/magnifierw.png"
theme.layout_max = "/home/galo/.config/awesome/varoa/layouts/maxw.png"
theme.layout_fullscreen = "/home/galo/.config/awesome/varoa/layouts/fullscreenw.png"
theme.layout_tilebottom = "/home/galo/.config/awesome/varoa/layouts/tilebottomw.png"
theme.layout_tileleft   = "/home/galo/.config/awesome/varoa/layouts/tileleftw.png"
theme.layout_tile = "/home/galo/.config/awesome/varoa/layouts/tilew.png"
theme.layout_tiletop = "/home/galo/.config/awesome/varoa/layouts/tiletopw.png"
theme.layout_spiral  = "/home/galo/.config/awesome/varoa/layouts/spiralw.png"
theme.layout_dwindle = "/home/galo/.config/awesome/varoa/layouts/dwindlew.png"

theme.awesome_icon = "/usr/share/awesome/icons/awesome16.png"

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
