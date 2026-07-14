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

-- console width (fallback 80) so the single self-refreshing line never wraps
local function term_width()
    local w = tonumber(os.getenv("COLUMNS"))
    if w and w > 0 and w < 1000 then return w end
    -- os.getwinsize returns a 32767 sentinel when there is no tty; guard it.
    if type(os.getwinsize) == "function" then
        local sz = os.getwinsize()
        if type(sz) == "table" and sz.width and sz.width > 0 and sz.width < 1000 then
            return sz.width
        end
    end
    return 80
end

function install()

    -- git clean -fdx and discard all changes
    os.cd(pkgsdir)
    os.execv("git", {"clean", "-fdx"})
    os.execv("git", {"checkout", "."})

    local files = os.files(path.join(pkgsdir, "**.lua"))
    local template_content = io.readfile(template)
    local all_index_cnt = #files
    local built_index_cnt = 0
    local width = term_width()
    -- single self-refreshing line: only one line, print the package file,
    -- unless it errors (then break to a red line and abort the build)
    for _, file in ipairs(files) do
        built_index_cnt = built_index_cnt + 1
        if not file:endswith("pkgindex-update.lua") then
            local name = path.relative(file, pkgsdir)
            local ok, err = true, nil
            try {
                function()
                    -- append template content to the end of the file
                    io.writefile(file, io.readfile(file) .. template_content)
                end,
                catch { function(errors) ok = false; err = errors end }
            }
            if ok then
                -- keep the line within the console width (\r stays single-line)
                local prefix = string.format("[%d/%d] scode::", built_index_cnt, all_index_cnt)
                local budget = width - #prefix - 1
                if budget < 8 then budget = 8 end
                if #name > budget then name = ".." .. name:sub(#name - budget + 3) end
                cprintf("\r[${green}%d/%d${clear}] scode::%s\x1b[K", built_index_cnt, all_index_cnt, name)
                io.flush()
            else
                print("")  -- break the progress line before reporting the error
                cprint("[${red}%d/%d${clear}] scode::%s ERROR: %s", built_index_cnt, all_index_cnt, name, tostring(err))
                raise("pkgindex-build failed at " .. name)
            end
        end
    end
    print("")  -- finalize: keep the last progress line, newline for later logs
    return true
end

function uninstall()
    return true
end