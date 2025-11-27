[group('github')]
[group('repos')]
[doc('Clone a repo of my orgs by using `ghq`.')]
gh-ghq LIMIT='200':
  ORG="$(gh org list --limit '{{ LIMIT }}' | tr '[A-Z]' '[a-z]' | fzf)" && \
  REPO="$( \
    gh repo list "${ORG}" \
      --jq '.[].name' \
      --json 'name' \
      --limit '{{ LIMIT }}' | \
    tr '[A-Z]' '[a-z]' | \
    fzf \
  )" && \
  ghq get "ssh://git@mbpm4m.github.com/${ORG}/${REPO}.git"

[group('github')]
[group('repos')]
[doc('Search a repo on a `github` organziation.')]
gh-repo-srch LIMIT='200':
  ORG="$(gh org list --limit '{{ LIMIT }}' | tr '[A-Z]' '[a-z]' | fzf)" && \
  REPO="$( \
    gh repo list "${ORG}" \
      --jq '.[].name' \
      --json 'name' \
      --limit '{{ LIMIT }}' | \
    tr '[A-Z]' '[a-z]' | \
    fzf \
  )" && \
  gh-s "${REPO}" --user "${ORG}"
