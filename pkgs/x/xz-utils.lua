package = {
    homepage = "https://tukaani.org/xz/",

    name = "xz-utils",
    description = "XZ Utils: lossless data compression software with liblzma library",

    authors = "Lasse Collin",
    licenses = "0BSD",

    type = "package",
    namespace = "scode",
    archs = {"x86_64"},
    status = "stable",
    categories = {"compression"},
    keywords = {"lib", "lzma", "xz", "compression"},

    xvm_enable = true,

    xpm = {
        linux = {
            ["latest"] = { ref = "5.4.5" },
            ["5.4.5"] = {
                url = "https://tukaani.org/xz/xz-5.4.5.tar.gz",
                sha256 = nil,
            },
        },
    },
}