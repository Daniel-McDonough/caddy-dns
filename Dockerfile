
FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare --with github.com/caddy-dns/linode --with github.com/caddy-dns/namecheap --with github.com/caddy-dns/godaddy --with github.com/caddy-dns/duckdns --with github.com/caddy-dns/vultr --with github.com/caddy-dns/hetzner --with github.com/caddy-dns/ovh

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
