[doc('Connect to a container instance.')]
[group('azure')]
[group('container-inst')]
az-ci-conn CMD='/bin/sh' NAME='':
    CI="$( \
        az resource list \
            --query '[].{name:name, resourceGroup:resourceGroup}' \
            --output 'tsv' \
            --resource-type 'Microsoft.containerinstance/containerGroups' | \
        fzf \
            --query '{{ NAME }}' \
            --header 'Choose a container to connect' \
            --prompt 'containers  ' \
            --preview 'az container show --name "$(echo {} | awk "{print \$1}")" --resource-group "$(echo {} | awk "{print \$3}")"' \
    )" && \
    RG="$(echo "${CI}" | awk '{print $3}')" && \
    CONTAINER="$(echo "${CI}" | awk '{print $1}')" && \
    az container exec \
        --name "${CONTAINER}" \
        --exec-command '{{ CMD }}' \
        --resource-group "${RG}"

# vim: et ts=4 sts=4 sw=4 syntax=just
