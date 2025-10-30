package = {
    -- base info
    name = "git",
    description = "Fast Version Control System",

    licenses = "GPL-2.0",
    repo = "https://github.com/git/git",

    -- xim pkg info
    type = "package",
    namespace = "scode",
    archs = { "x86_64" },
    status = "stable", -- dev, stable, deprecated

    -- xvm: xlings version management
    xvm_enable = true,

    xpm = {
        linux = {
            ["latest"] = { ref = "2.45.2" },
            ["2.45.2"] = {
                url = {
                    GLOBAL = "https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.45.2.tar.gz",
                    CN = "https://mirrors.tuna.tsinghua.edu.cn/git/git-2.45.2.tar.gz"
                },
                sha256 = nil,
            },
            ["2.44.0"] = {
                url = {
                    GLOBAL = "https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.44.0.tar.gz",
                    CN = "https://mirrors.tuna.tsinghua.edu.cn/git/git-2.44.0.tar.gz"
                },
                sha256 = nil,
            },
        },
    },
}
