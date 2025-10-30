package = {
    -- base info
    name = "gcc",
    description = "GNU Compiler Collection",

    licenses = "GPL-3.0",
    repo = "https://gcc.gnu.org/git/gcc.git",

    -- xim pkg info
    type = "package",
    namespace = "scode",
    archs = { "x86_64" },
    status = "stable", -- dev, stable, deprecated

    -- xvm: xlings version management
    xvm_enable = true,

    xpm = {
        linux = {
            ["latest"] = { ref = "13.3.0" },
            ["13.3.0"] = {
                url = {
                    GLOBAL = "https://ftp.gnu.org/gnu/gcc/gcc-13.3.0/gcc-13.3.0.tar.xz",
                    CN = "https://mirrors.tuna.tsinghua.edu.cn/gnu/gcc/gcc-13.3.0/gcc-13.3.0.tar.xz"
                },
                sha256 = nil,
            },
            ["12.4.0"] = {
                url = {
                    GLOBAL = "https://ftp.gnu.org/gnu/gcc/gcc-12.4.0/gcc-12.4.0.tar.xz",
                    CN = "https://mirrors.tuna.tsinghua.edu.cn/gnu/gcc/gcc-12.4.0/gcc-12.4.0.tar.xz"
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