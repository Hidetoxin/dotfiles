[group('github')]
[group('repos')]
[doc('Search a repo on a `github` organziation.')]
gh-repo-search REPO='':
  ORG="$(gh org list --limit 100 \
    | fzf \
  )" && \
  gh-s '{{ REPO }}' --user "${ORG}"
