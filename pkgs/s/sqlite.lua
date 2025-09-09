package = {
    homepage = "https://sqlite.org",
    name = "sqlite",
    description = "SQLite: Small, fast SQL database engine",
    authors = "D. Richard Hipp",
    licenses = "PD",
    repo = "https://sqlite.org",
    type = "lib",
    namespace = "scode",
    archs = { "x86_64" },
    status = "stable",
    categories = { "database" },
    keywords = { "sqlite", "sqlite", "sql", "embedded-database" },
    xvm_enable = true,
    xpm = {
        linux = {
            ["latest"] = { ref = "3.45.2" },
            ["3.45.2"] = {
                url = "https://www.sqlite.org/2024/sqlite-autoconf-3450200.tar.gz",
                sha256 = nil,
            },
        },
    },
}