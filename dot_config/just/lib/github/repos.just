[doc('Clone a repo of my orgs by using `ghq`.')]
[group('github')]
[group('repos')]
gh-ghq LIMIT='200':
    ORG="$(gh org list --limit '{{ LIMIT }}' | tr '[A-Z]' '[a-z]' | fzf)" && \
    REPO="$( \
        gh repo list "${ORG}" \
            --jq '.[].name' \
            --json 'name' \
            --limit '{{ LIMIT }}' | \
        tr '[A-Z]' '[a-z]' | \
        fzf \
          --header 'Choose a repository' \
          --prompt 'gh repo  ' \
    )" && \
    ghq get "ssh://git@mbpm4m.github.com/${ORG}/${REPO}.git"

[doc('Search a repo on a `github` organziation.')]
[group('github')]
[group('repos')]
gh-repo-srch LIMIT='200':
    ORG="$(gh org list --limit '{{ LIMIT }}' | tr '[A-Z]' '[a-z]' | fzf)" && \
    REPO="$( \
        gh repo list "${ORG}" \
            --jq '.[].name' \
            --json 'name' \
            --limit '{{ LIMIT }}' | \
        tr '[A-Z]' '[a-z]' | \
        fzf \
          --header 'Choose a repository' \
          --prompt 'gh repo  ' \
    )" && \
    gh-s "${REPO}" --user "${ORG}"

# vim: et ts=4 sts=4 sw=4 syntax=just
