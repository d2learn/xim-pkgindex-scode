package = {
    -- base info
    name = "ffmpeg",
    description = "A complete, cross-platform solution to record, convert and stream audio and video",

    licenses = "LGPL-2.1",
    repo = "https://github.com/FFmpeg/FFmpeg",

    -- xim pkg info
    type = "package",
    namespace = "scode",
    archs = { "x86_64" },
    status = "stable", -- dev, stable, deprecated

    -- xvm: xlings version management
    xvm_enable = true,

    xpm = {
        linux = {
            ["latest"] = { ref = "7.1" },
            ["7.1"] = {
                url = {
                    GLOBAL = "https://ffmpeg.org/releases/ffmpeg-7.1.tar.xz",
                    CN = "https://mirrors.tuna.tsinghua.edu.cn/ffmpeg/releases/ffmpeg-7.1.tar.xz"
                },
                sha256 = nil,
            },
            ["6.1.1"] = {
                url = {
                    GLOBAL = "https://ffmpeg.org/releases/ffmpeg-6.1.1.tar.xz",
                    CN = "https://mirrors.tuna.tsinghua.edu.cn/ffmpeg/releases/ffmpeg-6.1.1.tar.xz"
                },
                sha256 = nil,
            },
        },
    },
}
