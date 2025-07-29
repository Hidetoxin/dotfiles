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
  gh workflow run \
    --ref "$(git branch --show-current)" \
    --repo "$(gh repo view --jq '.nameWithOwner' --json 'nameWithOwner' | tr '[A-Z]' '[a-z]')" \
    invoker-ci.yml

[group('github')]
[group('workflow')]
[doc('Run the `invoker-cd.yml` workflow with the current branch and current release.')]
wf-run-cd ENV:
  gh workflow run \
    --ref "$(git branch --show-current)" \
    --repo "$(gh repo view --jq '.nameWithOwner' --json 'nameWithOwner' | tr '[A-Z]' '[a-z]')" \
    --raw-field versions="$(gh repo view --jq '.name' --json 'name')=$(gh release view --jq '.name' --json 'name')" \
    --raw-field environmentName='{{ ENV }}' \
    invoker-cd.yml

[group('github')]
[group('workflow')]
[doc('Run the `invoker-release.yml` workflow with the current branch and current commit.')]
wf-run-rel REL:
  gh workflow run \
    --ref "$(git branch --show-current)" \
    --repo "$(gh repo view --jq '.nameWithOwner' --json 'nameWithOwner' | tr '[A-Z]' '[a-z]')" \
    --raw-field release_ver='{{ REL }}' \
    --raw-field release_commit="$(git rev-parse HEAD)" \
    invoker-release.yml
