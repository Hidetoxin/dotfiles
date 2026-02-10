[doc('Fetch all the current repo tagged containers from `ghcr.io`.')]
[group('api')]
[group('ghcr')]
[group('github')]
ghcr-pkgs:
    TYPE="$( \
        gum choose \
            --cursor ' > ' \
            --header 'Choose a package type' \
            --selected 'container' \
            'npm' 'nuget' 'maven' 'rubygems' 'container' \
    )" && \
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
    PKG="$( \
        gh api "/orgs/${ORG}/packages?package_type=${TYPE}" \
            --jq '.[].name' | \
        fzf \
            --query "${REPO}" \
            --header 'Choose a package' \
            --prompt 'pkg name  ' | \
        sed 's/\//%2F/g' \
    )" && \
    gh api "/orgs/${ORG}/packages/${TYPE}/${PKG}/versions" \
        --jq '[.[].metadata.container.tags[] | select(test("^v?[0-9]+\\.[0-9]+\\.[0-9]+$"))] | .[]' \
        --paginate | \
    sort \
        --reverse \
        --version-sort | \
    fzf \
        --header 'Choose a semver' \
        --prompt 'semver 󰰫 '

# vim: et ts=4 sts=4 sw=4 syntax=just
