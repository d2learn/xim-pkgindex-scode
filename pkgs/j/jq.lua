package = {
    -- base info
    name = "jq",
    description = "Command-line JSON processor",

    licenses = "MIT",
    repo = "https://github.com/jqlang/jq",

    -- xim pkg info
    type = "package",
    namespace = "scode",
    archs = { "x86_64" },
    status = "stable", -- dev, stable, deprecated

    -- xvm: xlings version management
    xvm_enable = true,

    xpm = {
        linux = {
            ["latest"] = { ref = "1.7.1" },
            ["1.7.1"] = {
                url = {
                    GLOBAL = "https://github.com/jqlang/jq/releases/download/jq-1.7.1/jq-1.7.1.tar.gz",
                    CN = "https://gitcode.com/xlings-res/scode-res/releases/download/jq/jq-1.7.1.tar.gz"
                },
                sha256 = nil,
            },
            ["1.7"] = {
                url = {
                    GLOBAL = "https://github.com/jqlang/jq/releases/download/jq-1.7/jq-1.7.tar.gz",
                    CN = "https://gitcode.com/xlings-res/scode-res/releases/download/jq/jq-1.7.tar.gz"
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