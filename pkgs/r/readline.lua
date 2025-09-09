package = {
    homepage = "https://tiswww.case.edu/php/chet/readline/rltop.html",

    name = "readline",
    description = "GNU Readline Library for command-line editing and history",

    authors = "Chet Ramey",
    licenses = "GPL-3.0",
    repo = "https://git.savannah.gnu.org/git/readline.git",

    type = "lib",
    namespace = "scode",
    archs = {"x86_64"},
    status = "stable",
    categories = {"terminal", "cli", "system"},
    keywords = {"readline", "cli", "terminal", "lib"},

    xvm_enable = true,

    xpm = {
        linux = {
            ["latest"] = { ref = "8.2" },
            ["8.2"] = {
                url = "https://ftpmirror.gnu.org/gnu/readline/readline-8.2.tar.gz",
                sha256 = nil,
            },
        },
    },
}