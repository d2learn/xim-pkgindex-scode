package = {
    -- base info
    name = "redis",
    description = "In-memory data structure store, used as a database, cache and message broker",

    licenses = "BSD-3-Clause",
    repo = "https://github.com/redis/redis",

    -- xim pkg info
    type = "package",
    namespace = "scode",
    archs = { "x86_64" },
    status = "stable", -- dev, stable, deprecated

    -- xvm: xlings version management
    xvm_enable = true,

    xpm = {
        linux = {
            ["latest"] = { ref = "7.2.5" },
            ["7.2.5"] = {
                url = {
                    GLOBAL = "https://download.redis.io/releases/redis-7.2.5.tar.gz",
                    CN = "https://mirrors.tuna.tsinghua.edu.cn/redis/releases/redis-7.2.5.tar.gz"
                },
                sha256 = nil,
            },
            ["7.0.15"] = {
                url = {
                    GLOBAL = "https://download.redis.io/releases/redis-7.0.15.tar.gz",
                    CN = "https://mirrors.tuna.tsinghua.edu.cn/redis/releases/redis-7.0.15.tar.gz"
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