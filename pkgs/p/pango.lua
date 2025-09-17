package = {
    -- base info
    name = "pango",
    description = "A library for layout and rendering of internationalized text",

    authors = "The GNOME Project",
    licenses = "LGPL-2.1-or-later",
    docs = "https://www.gtk.org/docs/architecture/pango",

    -- xim pkg info
    type = "package",
    namespace = "scode",
    archs = { "x86_64" },
    status = "stable",
    categories = { "graphics", "text", "rendering" },
    keywords = { "pango", "text", "layout", "gtk", "internationalization" },

    -- xvm: xlings version management
    xvm_enable = true,

    xpm = {
        linux = {
            ["latest"] = { ref = "1.51.0" },
            ["1.51.0"] = {
                url = "https://download.gnome.org/sources/pango/1.51/pango-1.51.0.tar.xz",
                sha256 = nil,
            },
        },
    },
}