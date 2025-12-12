[doc('List the latest release.')]
[group('github')]
[group('release')]
gh-rel:
    gh release view --jq '.name' --json 'name'

[doc('List all releases.')]
[group('github')]
[group('release')]
gh-rels:
    gh release list --jq '.[].name' --json 'name'

[doc('List the latest release.')]
[group('github')]
[group('release')]
gh-rel-ls REL='':
    REL="$( \
        gh release list \
            --jq '.[].name' \
            --json 'name' | \
        fzf \
            --query '{{ REL }}' \
            --header 'Choose a release' \
            --prompt 'release  ' \
            --preview 'gh release view {}' \
    )" && \
    gh release view "${REL}"

[doc('Download a release.')]
[group('github')]
[group('release')]
gh-rel-dl REL='':
    REL="$( \
        gh release list \
            --jq '.[].name' \
            --json 'name' | \
        fzf \
            --query '{{ REL }}' \
            --header 'Choose a release' \
            --prompt 'release  ' \
            --preview 'gh release view {}' \
    )" && \
    gh release download "${REL}"

[doc('Delete a release.')]
[group('github')]
[group('release')]
gh-rel-del REL='':
    REL="$( \
      gh release list \
          --jq '.[].name' \
          --json 'name' | \
      fzf \
          --query '{{ REL }}' \
          --header 'Choose a release' \
          --prompt 'release  ' \
          --preview 'gh release view {}' \
    )" && \
    gh release delete "${REL}" --cleanup-tag --yes

# vim: et ts=4 sts=4 sw=4 syntax=just
