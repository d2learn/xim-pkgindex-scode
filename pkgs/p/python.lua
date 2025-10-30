package = {
    -- base info
    name = "python",
    description = "Python Programming Language",

    licenses = "PSF-2.0",
    repo = "https://github.com/python/cpython",

    -- xim pkg info
    type = "package",
    namespace = "scode",
    archs = { "x86_64" },
    status = "stable", -- dev, stable, deprecated

    -- xvm: xlings version management
    xvm_enable = true,

    xpm = {
        linux = {
            ["latest"] = { ref = "3.12.7" },
            ["3.12.7"] = {
                url = {
                    GLOBAL = "https://www.python.org/ftp/python/3.12.7/Python-3.12.7.tar.xz",
                    CN = "https://mirrors.tuna.tsinghua.edu.cn/python/3.12.7/Python-3.12.7.tar.xz"
                },
                sha256 = nil,
            },
            ["3.11.10"] = {
                url = {
                    GLOBAL = "https://www.python.org/ftp/python/3.11.10/Python-3.11.10.tar.xz",
                    CN = "https://mirrors.tuna.tsinghua.edu.cn/python/3.11.10/Python-3.11.10.tar.xz"
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