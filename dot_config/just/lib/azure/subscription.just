[group('azure')]
[group('subscription')]
[doc('Select an `azure` subscription.')]
az-sub-sel:
  az account set --subscription "$( \
    az account list --all \
    | jq --raw-output '.[].name' \
    | fzf --preview "az account show --output 'json' --subscription '{}'" \
  )"

[group('azure')]
[group('subscription')]
[doc('List the current `azure` subscription.')]
az-sub-ls:
  az account show --output 'table'
