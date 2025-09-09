package = {
    homepage = "https://invisible-island.net/ncurses",
    name = "ncurses",
    description = "Terminal handling library with wide character support",
    authors = "Thomas E. Dickey",
    licenses = "MIT",
    repo = "https://github.com/mirror/ncurses",
    type = "lib",
    namespace = "scode",
    archs = { "x86_64" },
    status = "stable",
    categories = { "terminal", "ui" },
    keywords = { "ncurses", "curses", "terminal", "tui" },
    xvm_enable = true,
    xpm = {
        linux = {
            ["latest"] = { ref = "6.4" },
            ["6.4"] = {
                url = "https://invisible-mirror.net/archives/ncurses/ncurses-6.4.tar.gz",
                sha256 = nil,
            },
        },
    },
}