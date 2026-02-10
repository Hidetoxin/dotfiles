[doc('Get the environment variables of a `container-app`.')]
[group('azure')]
[group('container-app')]
az-ca-env:
    RG="$( \
        az group list \
            --query '[].name' \
            --output 'tsv' | \
        fzf \
            --header 'Choose an `azure` resource group' \
            --prompt 'resource-group  ' \
            --preview 'az group show --resource-group {}' \
    )" && \
    APP="$( \
        az resource list \
            --query '[].name' \
            --output 'tsv' \
            --resource-type 'Microsoft.App/containerApps' \
            --resource-group "${RG}" | \
        fzf \
            --header 'Choose an `azure` container app' \
            --prompt 'container app  ' \
            --preview "az containerapp show --name {} --resource-group ${RG}" \
    )" && \
    az containerapp show \
        --name "${APP}" \
        --query "properties.template.containers[].env[].{kv: join('=', [name, value || secretRef])}" \
        --output='tsv' \
        --resource-group "${RG}" | \
    bat \
        --language 'sh'

[doc('Tail the logs of a `container-app`.')]
[group('azure')]
[group('container-app')]
[group('logs')]
az-ca-tail TAIL='100':
    RG="$( \
        az group list \
            --query '[].name' \
            --output 'tsv' | \
        fzf \
            --header 'Choose an `azure` resource group' \
            --prompt 'resource-group  ' \
            --preview 'az group show --resource-group {}' \
    )" && \
    APP="$( \
        az resource list \
            --query '[].name' \
            --output 'tsv' \
            --resource-type 'Microsoft.App/containerApps' \
            --resource-group "${RG}" | \
        fzf \
            --header 'Choose an `azure` container app' \
            --prompt 'container app  ' \
            --preview "az containerapp show --name {} --resource-group ${RG}" \
    )" && \
    az containerapp logs show \
        --name "${APP}" \
        --tail '{{ TAIL }}' \
        --format 'json' \
        --resource-group "${RG}" | \
    hl

[doc('View live logs of a `container-app`.')]
[group('azure')]
[group('container-app')]
[group('logs')]
az-ca-logs:
    RG="$( \
        az group list \
            --query '[].name' \
            --output 'tsv' | \
        fzf \
            --header 'Choose an `azure` resource group' \
            --prompt 'resource-group  ' \
            --preview 'az group show --resource-group {}' \
    )" && \
    APP="$( \
        az resource list \
            --query '[].name' \
            --output 'tsv' \
            --resource-type 'Microsoft.App/containerApps' \
            --resource-group "${RG}" | \
        fzf \
            --header 'Choose an `azure` container app' \
            --prompt 'container app  ' \
            --preview "az containerapp show --name {} --resource-group ${RG}" \
    )" && \
    az containerapp logs show \
        --follow \
        --name "${APP}" \
        --format 'text' \
        --resource-group "${RG}"

# vim: et ts=4 sts=4 sw=4 syntax=just
