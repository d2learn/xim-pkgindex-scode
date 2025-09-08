package = {
    -- base info
    name = "linux-headers",
    description = "Linux Kernel Header Files",

    licenses = "GPL",
    repo = "https://github.com/torvalds/linux",

    -- xim pkg info
    type = "package",
    namespace = "scode",
    archs = {"x86_64"},
    status = "stable", -- dev, stable, deprecated

    -- xvm: xlings version management
    xvm_enable = true,

    xpm = {
        linux = {
            ["latest"] = { ref = "5.11.1" },
            ["5.11.1"] = {
                url = "https://gitcode.com/xlings-res/scode-res/releases/download/linux-headers/linux-headers-5.11.1.tar.gz",
                sha256 = nil,
            },
        },
    },
}