# Caddy "Fat" DNS

Caddy is a webserver with automatic TLS certificate creation via ZeroSSL and LetsEncrypt. The default method of domain verification is via http requests to a server on the domain. The alternative method uses DNS TXT records. Caddy doesn't support DNS verification out of the box but there are modules for various DNS providers which require a rebuild of Caddy.

### Usage:
Use the same docker instructions with Caddy docker but replace `caddy` with `danielmcdonough/caddy-dns:latest`.

### Building:
Alternatively, you can build the image yourself `docker build -t caddy-dns:latest .` in the git directory.

#### Docker compose:
One can also build it locally using docker compose. [Watchtower](https://containrrr.dev/watchtower/) has a tendency to fail on local builds.
```
  caddy:
    image: caddy-dns
    build: ./caddy-fat-dns
```
---

**This [Caddy v2](https://github.com/caddyserver/caddy-docker) build contains the following modules:**

[github.com/caddy-dns/cloudflare](https://github.com/caddy-dns/cloudflare)

[github.com/caddy-dns/linode](https://github.com/caddy-dns/linode)

[github.com/caddy-dns/namecheap](https://github.com/caddy-dns/namecheap)

[github.com/caddy-dns/godaddy](https://github.com/caddy-dns/godaddy)

[github.com/caddy-dns/duckdns](https://github.com/caddy-dns/duckdns)

[github.com/caddy-dns/vultr](https://github.com/caddy-dns/vultr)

[github.com/caddy-dns/hetzner](github.com/caddy-dns/hetzner)

[github.com/caddy-dns/ovh](github.com/caddy-dns/ovh)

This repo will build and push to latest every night if the source caddy:builder image has changed.