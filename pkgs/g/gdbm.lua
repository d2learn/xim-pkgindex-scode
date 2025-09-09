package = {
    homepage = "https://www.gnu.org/software/gdbm/",
    name = "gdbm",
    description = "GNU database manager (key-value store)",
    authors = "GNU Project",
    licenses = "GPL-3.0",
    repo = "https://ftp.gnu.org/gnu/gdbm/",
    type = "lib",
    namespace = "scode",
    archs = { "x86_64" },
    status = "stable",
    categories = { "database" },
    keywords = { "gdbm", "dbm", "gnu", "kvstore" },
    xvm_enable = true,
    xpm = {
        linux = {
            ["latest"] = { ref = "1.23" },
            ["1.23"] = {
                url = "https://ftp.gnu.org/gnu/gdbm/gdbm-1.23.tar.gz",
                sha256 = nil,
            },
        },
    },
}