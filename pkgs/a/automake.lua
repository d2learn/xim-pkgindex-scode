package = {
    name = "automake",
    description = "A tool for automatically generating Makefile.in files",
    homepage = "https://www.gnu.org/software/automake/",
    repo = "https://git.savannah.gnu.org/git/automake.git",
    authors = "GNU Automake Team",
    licenses = "GPL-2.0-or-later",
    type = "package",
    namespace = "scode",
    archs = { "x86_64" },
    status = "stable",
    categories = { "build", "autotools", "makefiles" },
    keywords = { "automake", "aclocal", "makefile", "autoconf" },

    xvm_enable = true,

    xpm = {
        linux = {
            ["latest"] = { ref = "1.16.5" },
            ["1.16.5"] = {
                url = "https://ftpmirror.gnu.org/gnu/automake/automake-1.16.5.tar.gz",
                sha256 = nil 
            },
        },
    },
}