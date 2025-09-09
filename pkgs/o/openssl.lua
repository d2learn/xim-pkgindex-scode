package = {
    homepage = "https://www.openssl.org",
    name = "openssl",
    description = "SSL and TLS cryptographic library",
    authors = "OpenSSL Project",
    licenses = "Apache-2.0",
    repo = "https://github.com/openssl/openssl",
    type = "lib",
    namespace = "scode",
    archs = { "x86_64" },
    status = "stable",
    categories = { "security", "crypto" },
    keywords = { "openssl", "ssl", "tls", "crypto" },
    xvm_enable = true,
    xpm = {
        linux = {
            ["latest"] = { ref = "3.1.5" },
            ["3.1.5"] = {
                url = "https://www.openssl.org/source/openssl-3.1.5.tar.gz",
                sha256 = nil,
            },
        },
    },
}