package = {
    homepage = "https://mirrors.edge.kernel.org/pub/linux/utils/util-linux/",
    name = "util-linux",
    description = "A large collection of essential low-level system utilities for Linux",
    authors = "The util-linux project",
    licenses = "GPL-2.0-or-later AND LGPL-2.1-or-later",
    repo = "https://github.com/util-linux/util-linux",
    type = "package",
    namespace = "fromsource",
    archs = { "x86_64" },
    status = "stable",
    categories = { "system", "core-utils", "uuid", "login", "storage" },
    keywords = {
        "util-linux", "uuidgen", "libuuid", "mount", "umount", "fdisk", "lsblk",
        "login", "kill", "agetty", "dmesg", "more", "hwclock"
    },
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