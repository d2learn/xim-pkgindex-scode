package = {
    -- base info
    name = "rust",
    description = "Safe, concurrent, practical language",

    licenses = "Apache-2.0 OR MIT",
    repo = "https://github.com/rust-lang/rust",

    -- xim pkg info
    type = "package",
    namespace = "scode",
    archs = { "x86_64" },
    status = "stable", -- dev, stable, deprecated

    -- xvm: xlings version management
    xvm_enable = true,

    xpm = {
        linux = {
            ["latest"] = { ref = "1.89.0" },
            ["1.89.0"] = {
                url = {
                    GLOBAL = "https://static.rust-lang.org/dist/rustc-1.89.0-src.tar.gz",
                    CN = "https://mirrors.tuna.tsinghua.edu.cn/rust-lang/dist/rustc-1.89.0-src.tar.gz"
                },
                sha256 = nil,
            },
            ["1.88.1"] = {
                url = {
                    GLOBAL = "https://static.rust-lang.org/dist/rustc-1.88.1-src.tar.gz",
                    CN = "https://mirrors.tuna.tsinghua.edu.cn/rust-lang/dist/rustc-1.88.1-src.tar.gz"
                },
                sha256 = nil,
            },
        },
    },
}


-- package = { ... }

package.type = "package"
package.namespace = "scode"

import("xim.libxpkg.pkginfo")
import("xim.libxpkg.xvm")
import("xim.libxpkg.log")

function installed()
    local old_value = xvm.log_tag(false)
    local ret = xvm.has("scode-" .. package.name)
    xvm.log_tag(old_value)
    return ret
end

function install()

    local srcdir = pkginfo.install_file()
        :replace(".tar.gz", "")
        :replace(".zip", "")
        :replace(".tar.xz", "")

    os.tryrm(pkginfo.install_dir())
    os.trymv(srcdir, pkginfo.install_dir())

    xvm.add("scode-" .. package.name)

    log.warn("intall to: %s - ${green}ok", pkginfo.install_dir())

    return true
end

function uninstall()
    xvm.remove("scode-" .. package.name)
    return true
end