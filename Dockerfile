FROM tootsuite/mastodon:latest
COPY --chown=mastodon:mastodon --chmod=0755 db-migration-and-web-start.sh .
COPY --chown=mastodon:mastodon --chmod=0755 sidekiq-start.sh .
COPY --chown=mastodon:mastodon --chmod=0755 streaming-start.sh .
