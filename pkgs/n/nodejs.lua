package = {
    -- base info
    name = "nodejs",
    description = "JavaScript runtime built on Chrome's V8 JavaScript engine",

    licenses = "MIT",
    repo = "https://github.com/nodejs/node",

    -- xim pkg info
    type = "package",
    namespace = "scode",
    archs = { "x86_64" },
    status = "stable", -- dev, stable, deprecated

    -- xvm: xlings version management
    xvm_enable = true,

    xpm = {
        linux = {
            ["latest"] = { ref = "22.17.1" },
            ["22.17.1"] = {
                url = {
                    GLOBAL = "https://nodejs.org/dist/v22.17.1/node-v22.17.1.tar.gz",
                    CN = "https://mirrors.tuna.tsinghua.edu.cn/nodejs-release/v22.17.1/node-v22.17.1.tar.gz"
                },
                sha256 = nil,
            },
            ["20.18.0"] = {
                url = {
                    GLOBAL = "https://nodejs.org/dist/v20.18.0/node-v20.18.0.tar.gz",
                    CN = "https://mirrors.tuna.tsinghua.edu.cn/nodejs-release/v20.18.0/node-v20.18.0.tar.gz"
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