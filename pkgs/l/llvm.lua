package = {
    -- base info
    name = "llvm",
    description = "The LLVM Compiler Infrastructure",

    licenses = "Apache-2.0",
    repo = "https://github.com/llvm/llvm-project",

    -- xim pkg info
    type = "package",
    namespace = "scode",
    archs = { "x86_64" },
    status = "stable", -- dev, stable, deprecated

    -- xvm: xlings version management
    xvm_enable = true,

    xpm = {
        linux = {
            ["latest"] = { ref = "18.1.8" },
            ["18.1.8"] = {
                url = {
                    GLOBAL =
                    "https://github.com/llvm/llvm-project/releases/download/llvmorg-18.1.8/llvm-project-18.1.8.src.tar.xz",
                    CN = "https://gitcode.com/xlings-res/scode-res/releases/download/llvm/llvm-project-18.1.8.src.tar.xz"
                },
                sha256 = nil,
            },
            ["17.0.6"] = {
                url = {
                    GLOBAL =
                    "https://github.com/llvm/llvm-project/releases/download/llvmorg-17.0.6/llvm-project-17.0.6.src.tar.xz",
                    CN = "https://gitcode.com/xlings-res/scode-res/releases/download/llvm/llvm-project-17.0.6.src.tar.xz"
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