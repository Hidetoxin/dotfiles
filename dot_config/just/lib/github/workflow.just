[group('github')]
[group('workflow')]
[doc('List all your `github` workflows.')]
wf-ls-all:
  ORG="$(gh org list \
    | tr '[A-Z]' '[a-z]' \
    | fzf --preview "gh repo list '{}' --json 'name' --jq '.[].name' | tr '[A-Z]' '[a-z]'" \
  )" && \
  REPO="$(gh repo list "${ORG}" --json 'nameWithOwner' --jq '.[].nameWithOwner' \
    | tr '[A-Z]' '[a-z]' \
    | fzf --preview "gh workflow list --all --repo '{}' --json path --jq '.[].path'" \
  )" && \
  WF="$(gh workflow list --all --repo "${REPO}" --json path --jq '.[].path' \
    | fzf --preview "gh run list --workflow='{}'" \
  )" && \
  gh run list --workflow="${WF}"
