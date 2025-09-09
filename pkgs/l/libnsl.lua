package = {
    homepage = "https://github.com/thkukuk/libnsl",
    name = "libnsl",
    description = "Network Services Library (NIS/YP support)",
    authors = "Thorsten Kukuk",
    licenses = "LGPL-2.1",
    repo = "https://github.com/thkukuk/libnsl",
    type = "lib",
    namespace = "scode",
    archs = { "x86_64" },
    status = "stable",
    categories = { "network", "system" },
    keywords = { "nsl", "yp", "nis", "rpc" },
    xvm_enable = true,
    xpm = {
        linux = {
            ["latest"] = { ref = "2.0.0" },
            ["2.0.0"] = {
                url = "https://github.com/thkukuk/libnsl/releases/download/v2.0.0/libnsl-2.0.0.tar.gz",
                sha256 = nil,
            },
        },
    },
}