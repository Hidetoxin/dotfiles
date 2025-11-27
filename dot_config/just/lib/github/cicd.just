[group('ci')]
[group('github')]
[group('workflow')]
[doc('List the `invoker-ci.yml` workflow with the current branch.')]
wf-ls-curr:
  REPO="$(gh repo view --jq '.nameWithOwner' --json 'nameWithOwner' | tr '[A-Z]' '[a-z]')" && \
  WF="$(gh workflow list --all --repo "${REPO}" --json path --jq '.[].path' \
    | fzf --preview "gh run list --workflow='{}'" \
  )" && \
  gh run list --workflow="${WF}"

[group('github')]
[group('workflow')]
[doc('Run the `invoker-ci.yml` workflow with the current branch.')]
wf-run-ci:
  REPO="$(gh repo view --jq '.nameWithOwner' --json 'nameWithOwner' | tr '[A-Z]' '[a-z]')" && \
  BRANCH="$(git branch --show-current)" && \
  gh workflow run \
    --ref "${BRANCH}" \
    --repo "${REPO}" \
    invoker-ci.yml

[group('github')]
[group('workflow')]
[doc('Run the `invoker-cd.yml` workflow with the current branch and current release.')]
wf-run-cd ENV:
  REL="$(gh release view --jq '.name' --json 'name')" && \
  REPO="$(gh repo view --jq '.nameWithOwner' --json 'nameWithOwner' | tr '[A-Z]' '[a-z]')" && \
  BRANCH="$(git branch --show-current)" && \
  gh workflow run \
    --ref "${BRANCH}" \
    --repo "${REPO}" \
    --raw-field versions="$(gh repo view --jq '.name' --json 'name')=${REL}" \
    --raw-field environmentName='{{ ENV }}' \
    invoker-cd.yml

[group('github')]
[group('workflow')]
[doc('Run the `invoker-release.yml` workflow with the current branch and current commit.')]
wf-run-rel REL:
  REPO="$(gh repo view --jq '.nameWithOwner' --json 'nameWithOwner' | tr '[A-Z]' '[a-z]')" && \
  BRANCH="$(git branch --show-current)" && \
  COMMIT="$(git rev-parse HEAD)" && \
  gh workflow run \
    --ref "${BRANCH}" \
    --repo "${REPO}" \
    --raw-field release_ver='{{ REL }}' \
    --raw-field release_commit="${COMMIT}" \
    invoker-release.yml
