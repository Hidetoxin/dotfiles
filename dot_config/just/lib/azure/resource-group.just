[group('rg')]
[group('azure')]
[doc('Show the current subscription `rg`s.')]
az-rg-ls NAME='':
  az group list \
  | jq --raw-output '.[].name' \
  | fzf --query '{{ NAME }}'

[group('rg')]
[group('azure')]
[doc('Show the selected `rg` resources.')]
az-rg-res NAME='':
  RG="$(az group list \
  | jq --raw-output '.[].name' \
  | fzf --query '{{ NAME }}' \
  )" && \
  az resource list \
    --output 'table' \
    --resource-group "${RG}"

[group('rg')]
[group('azure')]
[confirm('Are you sure you want to delete the selected `rg`? Y/n')]
[doc('Delete the selected `rg` resources.')]
az-rg-del NAME='':
  RG="$(az group list \
  | jq --raw-output '.[].name' \
  | fzf --query '{{ NAME }}' \
  )" && \
  az group delete --yes --no-wait --name "${RG}"
