[doc('Run the `ci` workflow with the current branch.')]
[group('github')]
[group('single-repo')]
[group('workflow')]
cicd-ci WF='invoker-ci':
    REPOWNER="$( \
        gh repo view \
          --jq '.nameWithOwner' \
          --json 'nameWithOwner' | \
        tr '[A-Z]' '[a-z]' \
    )" && \
    BRANCH="$(git branch --show-current)" && \
    gh workflow run \
        --ref "${BRANCH}" \
        --repo "${REPOWNER}" \
        '{{ WF }}.yml'

[doc('Run the `invoker-cd.yml` workflow with the current branch and current release.')]
[group('github')]
[group('single-repo')]
[group('workflow')]
cicd-cd ENV='dev02' WF='invoker-cd':
    REL="$( \
        gh release view \
          --jq '.name' \
          --json 'name' \
    )" && \
    REPO="$( \
        gh repo view \
          --jq '.name' \
          --json 'name' | \
        tr '[A-Z]' '[a-z]' \
    )" && \
    REPOWNER="$( \
        gh repo view \
          --jq '.nameWithOwner' \
          --json 'nameWithOwner' | \
        tr '[A-Z]' '[a-z]' \
    )" && \
    BRANCH="$(git branch --show-current)" && \
    gh workflow run \
        --ref "${BRANCH}" \
        --repo "${REPOWNER}" \
        --raw-field versions="${REPO}=${REL}" \
        --raw-field environmentName='{{ ENV }}' \
        '{{ WF }}.yml'

[doc('Run the `invoker-release.yml` workflow with the current branch.')]
[group('github')]
[group('single-repo')]
[group('workflow')]
cicd-rel REL='3000.0.0' WF='invoker-release':
    BRANCH="$(git branch --show-current)" && \
    REPOWNER="$( \
        gh repo view \
          --jq '.nameWithOwner' \
          --json 'nameWithOwner' | \
        tr '[A-Z]' '[a-z]' \
    )" && \
    RUN="$( \
        gh run list \
          --jq '.[].databaseId' \
          --json 'databaseId' \
          --repo "${REPOWNER}" \
          --branch "${BRANCH}" \
          --workflow 'invoker-ci.yml' | \
        fzf \
          --header 'Choose a workflow run' \
          --prompt 'workflow run  ' \
          --preview 'gh run view {}' \
    )" && \
    COMMIT="$( \
        gh run view \
          --jq '.headSha' \
          --json 'headSha' \
          "${RUN}" | \
        fzf \
          --header 'Choose a commit' \
          --prompt 'commit sha  ' \
          --preview 'git show {}' \
    )" && \
    gh workflow run \
        --ref "${BRANCH}" \
        --repo "${REPOWNER}" \
        --raw-field release_ver='{{ REL }}' \
        --raw-field release_commit="$(git rev-parse HEAD)" \
        '{{ WF }}.yml'

# vim: et ts=4 sts=4 sw=4 syntax=just
