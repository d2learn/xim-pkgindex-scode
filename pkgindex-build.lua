package = {
    -- base info
    name = "pkgindex-update",
    description = "SCode Package Index Update Tool",

    authors = "sunrisepeak",
    license = "Apache-2.0",
    repo = "https://github.com/d2learn/xim-pkgindex-scode",

    -- xim pkg info
    type = "auto-config",
    namespace = "scode",

    xpm = {
        windows = { ["latest"] = { }, },
        linux = { ["latest"] = { }, },
        ubuntu = { ref = "linux" },
        archlinux = { ref = "linux" },
        manjaro = { ref = "linux" },
    },
}

local projectdir = os.scriptdir()
local pkgsdir = path.join(projectdir, "pkgs")
local template = path.join(projectdir, "template.lua")

function installed()
    return false
end

function install()

    -- git clean -fdx and discard all changes
    os.cd(pkgsdir)
    os.execv("git", {"clean", "-fdx"})
    os.execv("git", {"checkout", "."})

    local files = os.files(path.join(pkgsdir, "**.lua"))
    local template_content = io.readfile(template)
    local built_index_cnt = 0
    local all_index_cnt = #files
    for _, file in ipairs(files) do
        built_index_cnt = built_index_cnt + 1
        -- skip pkgindex-update.lua
        if not file:endswith("pkgindex-update.lua") then
            -- append template content to the end of the file
            cprint("[${green}%d/%d${clear}] scode::%s", built_index_cnt, all_index_cnt, file)
            io.writefile(file, io.readfile(file) .. template_content)
        else
            cprint("[${yellow}%d/%d${clear}] scode::%s (skip)", built_index_cnt, all_index_cnt, file)
        end
    end
    return true
end

function uninstall()
    return true
end