[group('azure')]
[group('subscription')]
[doc('List all the `azure` subscriptions.')]
az-sub-ls:
  az account list --all --output 'table'
  
[group('azure')]
[group('subscription')]
[doc('Select an `azure` subscription.')]
az-sub-sel:
  SUB="$(\
    az account list \
      --all \
      --query '[].name' \
      --output 'tsv' | \
    fzf \
      --preview 'az account show --name {}' \
  )" && \
  az account set \
    --name "${SUB}"

[group('azure')]
[group('subscription')]
[doc('Show the current `azure` subscription.')]
az-sub-desc:
  az account show --output 'table'
