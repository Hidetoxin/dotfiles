[doc('Show the current subscription `rg`s.')]
[group('azure')]
[group('rg')]
az-rg-ls NAME:
    az group list \
        --query '[].name' \
        --output 'tsv' | \
    fzf \
        --query '{{ NAME }}' \
        --header 'Choose a resource group to preview' \
        --prompt 'resource-group  ' \
        --preview 'az group show --resource-group {}'

[doc('Show the selected `rg` resources.')]
[group('azure')]
[group('rg')]
az-rg-ll NAME:
    RG="$( \
        az group list \
            --query '[].name' \
            --output 'tsv' | \
        fzf \
            --query '{{ NAME }}' \
            --header 'Choose a resource group for listing their resources' \
            --prompt 'resource-group  ' \
            --preview 'az group show --resource-group {}' \
    )" && \
    az resource list \
        --output 'table' \
        --resource-group "${RG}"

[confirm('Are you sure you want to delete the selected `rg`? Y/n')]
[doc('Delete the selected `rg` resources.')]
[group('azure')]
[group('rg')]
az-rg-del NAME:
    RG="$( \
        az group list \
            --query '[].name' \
            --output 'tsv' | \
        fzf \
            --query '{{ NAME }}' \
            --header 'Choose a resource group for deletion' \
            --prompt 'resource-group  ' \
            --preview 'az group show --resource-group {}' \
    )" && \
    az group delete \
        --yes \
        --no-wait \
        --name "${RG}"

# vim: et ts=4 sts=4 sw=4 syntax=just
