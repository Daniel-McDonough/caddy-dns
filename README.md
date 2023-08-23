# Caddy "Fat" DNS

Caddy is a webserver with automatic TLS certificate creation via ZeroSSL and LetsEncrypt. The default method of domain verification is via http requests to a server on the domain. The alternative method uses DNS TXT records. Caddy doesn't support DNS verification out of the box but there are modules for various DNS providers which require a rebuild of Caddy.

This [Caddy v2](https://github.com/caddyserver/caddy-docker) build contains the following modules:

[github.com/caddy-dns/cloudflare](https://github.com/caddy-dns/cloudflare)

[github.com/caddy-dns/linode](https://github.com/caddy-dns/linode)

[github.com/caddy-dns/namecheap](https://github.com/caddy-dns/namecheap)

[github.com/caddy-dns/godaddy](https://github.com/caddy-dns/godaddy)

[github.com/caddy-dns/duckdns](https://github.com/caddy-dns/duckdns)

[github.com/caddy-dns/vultr](https://github.com/caddy-dns/vultr)

[github.com/caddy-dns/hetzner](github.com/caddy-dns/hetzner)

[github.com/caddy-dns/ovh](github.com/caddy-dns/ovh)

This repo will build and push to latest every night if the source caddy:builder image has changed.