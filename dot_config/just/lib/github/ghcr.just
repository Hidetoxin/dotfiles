[doc('Fetch all the current repo tagged containers from `ghcr.io`.')]
[group('api')]
[group('ghcr')]
[group('github')]
ghcr-repo:
    ORG="$( \
        gh repo view \
          --jq '.owner.login' \
          --json 'owner' | \
        tr '[A-Z]' '[a-z]' \
    )" && \
    REPO="$( \
        gh repo view \
          --jq '.name' \
          --json 'name' | \
        tr '[A-Z]' '[a-z]' \
    )" && \
    gh api \
        "/orgs/${ORG}/packages/container/${REPO}%2F${REPO}-app/versions?filters[version_type]=tagged" | \
    jq \
        --raw-output \
        '.[].metadata.container.tags | select(length > 0)'

# vim: et ts=4 sts=4 sw=4 syntax=just
