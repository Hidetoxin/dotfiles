[doc('Do `ssh` into a function app.')]
[group('azure')]
[group('function-app')]
az-fa-ssh:
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
            --resource-type 'Microsoft.Web/sites' \
            --resource-group "${RG}" | \
        fzf \
            --header 'Choose an `azure` function app' \
            --prompt 'function app  ' \
            --preview "az functionapp show --name {} --resource-group ${RG}" \
    )" && \
    az webapp ssh --name "${APP}" --resource-group "${RG}"
