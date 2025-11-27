[group('rg')]
[group('azure')]
[doc('Show the current subscription `rg`s.')]
az-rg-ls NAME='':
  az group list \
    --query '[].name' \
    --output 'tsv' | \
  fzf \
    --query '{{ NAME }}' \
    --preview 'az group show --resource-group {}'

[group('rg')]
[group('azure')]
[doc('Show the selected `rg` resources.')]
az-rg-res NAME='':
  RG="$(\
    az group list \
      --query '[].name' \
      --output 'tsv' | \
    fzf \
      --query '{{ NAME }}' \
      --preview 'az group show --resource-group {}' \
  )" && \
  az resource list \
    --output 'table' \
    --resource-group "${RG}"

[group('rg')]
[group('azure')]
[confirm('Are you sure you want to delete the selected `rg`? Y/n')]
[doc('Delete the selected `rg` resources.')]
az-rg-del NAME='':
  RG="$(\
    az group list \
      --query '[].name' \
      --output 'tsv' | \
    fzf \
      --query '{{ NAME }}' \
      --preview 'az group show --resource-group {}' \
  )" && \
  az group delete \
    --yes \
    --no-wait \
    --name "${RG}"
