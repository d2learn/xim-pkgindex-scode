package = {
    -- base info
    name = "linux",
    description = "Linux Kernel Source Tree",

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
                url = "https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.11.1.tar.gz",
                sha256 = nil,
            },
        },
        windows = { ref = "linux" },
        macos = { ref = "linux" },
    },
}