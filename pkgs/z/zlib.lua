package = {
    homepage = "https://zlib.net",

    -- base info
    name = "zlib",
    description = "A Massively Spiffy Yet Delicately Unobtrusive Compression Library",

    authors = "Jean-loup Gailly, Mark Adler",
    licenses = "https://zlib.net/zlib_license.html",
    repo = "https://github.com/torvalds/linux",

    -- xim pkg info
    type = "package",
    namespace = "scode",
    archs = {"x86_64"},
    status = "stable", -- dev, stable, deprecated
    categories = {"compression"},
    keywords = {"lib", "devel", "compression", "zlib"},

    -- xvm: xlings version management
    xvm_enable = true,

    xpm = {
        linux = {
            ["latest"] = { ref = "1.3.1" },
            ["1.3.1"] = {
                url = "https://zlib.net/zlib-1.3.1.tar.gz",
                sha256 = nil,
            },
        },
    },
}