[doc('List your current repo `github` workflows.')]
[group('github')]
[group('workflow')]
wf-ls:
    REPO="$( \
        gh repo view \
            --jq '.nameWithOwner' \
            --json 'nameWithOwner' | \
        tr '[A-Z]' '[a-z]' \
    )" && \
    BRANCH="$(git branch --show-current)" && \
    WF="$( \
        gh workflow list \
            --jq '.[].path' \
            --json 'path' \
            --repo "${REPO}" | \
        fzf \
            --header 'Choose a github workflow' \
            --prompt 'workflow  ' \
            --preview "gh run list --json 'status,number,conclusion,headBranch,displayTitle,databaseId' --branch "${BRANCH}" --workflow {} | jq" \
    )" && \
    gh run list --branch "${BRANCH}" --workflow "${WF}"

[doc('View your repo `github` workflow runs.')]
[group('github')]
[group('workflow')]
wf-run-ls:
    REPO="$( \
        gh repo view \
            --jq '.nameWithOwner' \
            --json 'nameWithOwner' | \
        tr '[A-Z]' '[a-z]' \
    )" && \
    BRANCH="$(git branch --show-current)" && \
    WF="$( \
        gh workflow list \
            --jq '.[].path' \
            --json 'path' \
            --repo "${REPO}" | \
        fzf \
            --header 'Choose a github workflow' \
            --prompt 'workflow  ' \
            --preview "gh run list --json 'status,number,conclusion,headBranch,displayTitle,databaseId' --branch "${BRANCH}" --workflow {} | jq" \
    )" && \
    RUN="$( \
        gh run list \
            --jq '.[].databaseId' \
            --json 'databaseId' \
            --repo "${REPO}" \
            --branch "${BRANCH}" \
            --workflow "${WF}" | \
        fzf \
            --header 'Choose a github workflow' \
            --prompt 'workflow run  ' \
            --preview 'gh run view {}' \
    )" && \
    gh run view "${RUN}"

[doc('Download artifacts from `github` workflow runs.')]
[group('github')]
[group('workflow')]
wf-run-dl DIR='.':
    REPO="$( \
        gh repo view \
            --jq '.nameWithOwner' \
            --json 'nameWithOwner' | \
        tr '[A-Z]' '[a-z]' \
    )" && \
    BRANCH="$(git branch --show-current)" && \
    WF="$( \
        gh workflow list \
            --jq '.[].path' \
            --json 'path' \
            --repo "${REPO}" | \
        fzf \
            --header 'Choose a github workflow' \
            --prompt 'workflow  ' \
            --preview "gh run list --json 'status,number,conclusion,headBranch,displayTitle,databaseId' --branch "${BRANCH}" --workflow {} | jq" \
    )" && \
    RUN="$( \
        gh run list \
            --jq '.[].databaseId' \
            --json 'databaseId' \
            --repo "${REPO}" \
            --branch "${BRANCH}" \
            --workflow "${WF}" | \
        fzf \
            --header 'Choose a github workflow' \
            --prompt 'workflow run  ' \
            --preview 'gh run view {}' \
    )" && \
    gh run download "${RUN}" --dir '{{ DIR }}'

[doc('List all your `github` workflows.')]
[group('github')]
[group('workflow')]
wf-ls-all:
    ORG="$( \
        gh org list | \
        tr '[A-Z]' '[a-z]' | \
        fzf \
          --header 'Choose a github organization' \
          --prompt 'organization  ' \
          --preview 'gh repo list {} --json "name" --jq ".[].name" | tr "[A-Z]" "[a-z]"' \
    )" && \
    REPO="$( \
        gh repo list "${ORG}" \
            --jq '.[].nameWithOwner' \
            --json 'nameWithOwner' | \
        tr '[A-Z]' '[a-z]' | \
        fzf \
            --header 'Choose a github repository' \
            --prompt 'repository  ' \
            --preview 'gh workflow list --all --repo {} --json "path" --jq ".[].path"' \
    )" && \
    BRANCH="$(git branch --show-current)" && \
    WF="$( \
        gh workflow list \
            --jq '.[].path' \
            --json 'path' \
            --repo "${REPO}" | \
        fzf \
            --header 'Choose a github workflow' \
            --prompt 'workflow  ' \
            --preview "gh run list --json 'status,number,conclusion,headBranch,displayTitle,workflowDatabaseId' --branch "${BRANCH}" --workflow {} | jq" \
    )" && \
    gh run list --branch "${BRANCH}" --workflow "${WF}"

# vim: et ts=4 sts=4 sw=4 syntax=just
