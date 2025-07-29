[group('github')]
[group('release')]
[doc('List the latest release.')]
gh-rel:
  gh release view --jq '.name' --json 'name'

[group('github')]
[group('release')]
[doc('List all releases.')]
gh-rels:
  gh release list --jq '.[].name' --json 'name'

[group('github')]
[group('release')]
[confirm('Are you sure you want to delete a release?  Y/n')]
[doc('Delete a release.')]
gh-rel-del REL='':
  REL="$(gh release list \
    --jq '.[].name' \
    --json 'name' \
  | fzf --query '{{ REL }}' \
  )" && \
  gh release delete "${REL}" --cleanup-tag --yes
