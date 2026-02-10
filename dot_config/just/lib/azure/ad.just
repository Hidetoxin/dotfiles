[doc('List all `azure` ad users.')]
[group('ad')]
[group('azure')]
az-usr-ls:
    az ad user list --query '[].{UPN:userPrincipalName, Name:displayName}' --output 'table'

[doc('List all `azure` ad users and filter by `upn`.')]
[group('ad')]
[group('azure')]
az-usr-ll usr:
    ADUSR="$( \
        az ad user list \
            --query '[].{UPN:userPrincipalName, Name:displayName}' \
            --output 'tsv' | \
        fzf \
            --query '{{ usr }}' \
            --header 'Choose an `azure` user' \
            --prompt 'ad-user  ' \
            --preview 'az ad user get-member-groups --id {1} --security-enabled-only true' \
            --accept-nth 1 \
    )" && \
    az ad user show --id "${ADUSR}" --output 'json'

[doc('Create a new `azure` ad user.')]
[group('ad')]
[group('azure')]
az-usr-mk upn='' name='':
    UPN="$(gum input --value '{{ upn }}' --placeholder "Type the users's azure upn")" && \
    NAME="$(gum input  --value '{{ name }}' --placeholder "Type the user's display name")" && \
    PASS="$(pwgen 10 1)" && \
    INFO="$(mktemp)" && \
    az ad user create \
        --password "${PASS}" \
        --display-name "${NAME}" \
        --user-principal-name "${UPN}" \
        --force-change-password-next-sign-in true && \
    gum log --time 'rfc822' --level 'info' --structured "UPN:${UPN}" && \
    gum log --time 'rfc822' --level 'info' --structured "NAME:${NAME}" && \
    gum log --time 'rfc822' --level 'info' --structured "PASS:${PASS}" && \
    echo "Hello," >> "${INFO}" && \
    echo "Below are your 'azure' account login credentials:" >> "${INFO}" && \
    echo "url: 'https://portal.azure.com'" >> "${INFO}" && \
    echo "user: '${UPN}'" >> "${INFO}" && \
    echo "pass: ;${PASS}'" >> "${INFO}" && \ 
    cat "${INFO}" | sed "s/'/\`/g" | pbcopy && \
    rm "${INFO}"

[doc('Add an `azure` user to the selected ad groups.')]
[group('ad')]
[group('azure')]
az-usr-grp usr='':
    USRID="$(az ad user show --id '{{ usr }}' --query 'id' --output 'tsv')" && \
    az ad group list --query '[].{name:displayName, id:id}' --output 'tsv' | \
    fzf \
        --multi \
        --header 'Choose an `azure` user group' \
        --prompt 'ad-user-group  ' \
        --preview 'az ad group show --group {2}' \
        --accept-nth 2 | \
    xargs -I{} \
        az ad group member add --group '{}' --member-id "${USRID}"

[doc('Reset an `azure` ad user password.')]
[group('ad')]
[group('azure')]
az-usr-pwd usr='':
    PASS="$(pwgen 10 1)" && \
    az ad user update \
        --id '{{ usr }}' \
        --password "${PASS}" \
        --force-change-password-next-sign-in true && \
    gum log --time 'rfc822' --level 'info' --structured "PASS:${PASS}"

[doc('List all `azure` ad groups.')]
[group('ad')]
[group('azure')]
az-grp-ls:
    az ad group list --query '[].{name:displayName, id:id}' --output 'table'

[doc('List all `azure` ad groups and filter by name.')]
[group('ad')]
[group('azure')]
az-grp-ll group='':
    az ad group list --query '[].{name:displayName, id:id}' --output 'tsv' | \
    fzf \
        --query '{{ group }}' \
        --header 'Choose an `azure` user group' \
        --prompt 'ad-user-group  ' \
        --preview 'az ad group show --group {2}'

# vim: et ts=4 sts=4 sw=4 syntax=just
