package = {
    homepage = "https://zlib.net",

    -- base info
    name = "zlib",
    description = "A Massively Spiffy Yet Delicately Unobtrusive Compression Library",

    authors = "Jean-loup Gailly, Mark Adler",
    licenses = "https://zlib.net/zlib_license.html",

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
                -- zlib.net rotates the canonical /zlib-<ver>.tar.gz to
                -- /fossils/ on each new release, so direct downloads of older
                -- tarballs 404. GitHub releases are immutable.
                url = "https://github.com/madler/zlib/releases/download/v1.3.1/zlib-1.3.1.tar.gz",
                sha256 = "9a93b2b7dfdac77ceba5a558a580e74667dd6fede4585b91eefb60f03b72df23",
            },
        },
    },
}