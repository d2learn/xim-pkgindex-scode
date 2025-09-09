package = {
    homepage = "https://sourceforge.net/projects/libuuid",
    name = "libuuid",
    description = "Universally Unique Identifier system library and tools",
    authors = "The util-linux project",
    licenses = "LGPL-2.1",
    repo = "https://sourceforge.net/projects/libuuid",
    type = "lib",
    namespace = "scode",
    archs = { "x86_64" },
    status = "stable",
    categories = { "system", "uuid" },
    keywords = { "uuid", "libuuid", "unique-id", "util-linux" },
    xvm_enable = true,
    xpm = {
        linux = {
            ["latest"] = { ref = "2.39.3" },
            ["2.39.3"] = {
                url = "https://mirrors.edge.kernel.org/pub/linux/utils/util-linux/v2.39/util-linux-2.39.3.tar.xz",
                sha256 = nil,
            },
        },
    },
}