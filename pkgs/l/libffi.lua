package = {
    homepage = "https://sourceware.org/libffi/",

    name = "libffi",
    description = "A Portable Foreign Function Interface Library",

    authors = "Anthony Green, Tom Tromey, et al.",
    licenses = "https://github.com/libffi/libffi/blob/master/LICENSE",
    repo = "https://github.com/libffi/libffi",

    type = "lib",
    namespace = "scode",
    archs = {"x86_64"},
    status = "stable",
    categories = {"ffi", "system", "interoperability"},
    keywords = {"lib", "ffi", "foreign-function", "ctypes"},

    xvm_enable = true,

    xpm = {
        linux = {
            ["latest"] = { ref = "3.4.4" },
            ["3.4.4"] = {
                url = "https://github.com/libffi/libffi/releases/download/v3.4.4/libffi-3.4.4.tar.gz",
                sha256 = nil,
            },
        },
    },
}