package = {
    homepage = "https://sourceware.org/bzip2/",
    name = "bzip2",
    description = "High-quality data compressor (bzip2 library and tools)",
    authors = "Julian Seward",
    licenses = "BSD-4-Clause",
    repo = "https://sourceware.org/bzip2/",
    type = "lib",
    namespace = "scode",
    archs = { "x86_64" },
    status = "stable",
    categories = { "compression" },
    keywords = { "bzip2", "bz2", "compression", "lib", "cli" },
    xvm_enable = true,
    xpm = {
        linux = {
            ["latest"] = { ref = "1.0.8" },
            ["1.0.8"] = {
                url = "https://sourceware.org/pub/bzip2/bzip2-1.0.8.tar.gz",
                sha256 = nil,
            },
        },
    },
}