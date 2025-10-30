package = {
    -- base info
    name = "curl",
    description = "Command line tool and library for transferring data with URL syntax",

    homepage = "https://curl.se",
    repo = "https://github.com/curl/curl",
    licenses = "curl",
    authors = "Daniel Stenberg and contributors",

    -- xim pkg info
    type = "package",
    namespace = "scode",
    archs = { "x86_64" },
    status = "stable",
    categories = { "networking", "http", "library" },
    keywords = { "curl", "http", "https", "ftp", "transfer", "library" },

    -- xvm: xlings version management
    xvm_enable = true,

    xpm = {
        linux = {
            ["latest"] = { ref = "8.9.1" },
            ["8.9.1"] = {
                url = "https://curl.se/download/curl-8.9.1.tar.gz",
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
