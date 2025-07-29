[group('deployment')]
[group('azure')]
[doc('List the deployments on a resource group.')]
az-dep-ls:
  RG="$(az group list \
  | jq --raw-output '.[].name' \
  | fzf --preview 'az deployment group list --output table --resource-group {}' \
  )" && \
  az deployment group list --output 'table' --resource-group "${RG}"

[group('deployment')]
[group('azure')]
[doc('Describe the deployments on a resource group.')]
az-dep-desc:
  RG="$(az group list \
  | jq --raw-output '.[].name' \
  | fzf --preview 'az deployment group list --output table --resource-group {}' \
  )" && \
  DEP="$(az deployment group list \
    --output 'json' \
    --resource-group "${RG}" \
  | jq --raw-output '.[].name' \
  | fzf \
  )" && \
  az deployment group show \
    --name "${DEP}" \
    --resource-group "${RG}" \
  | fx

[group('deployment-scripts')]
[group('azure')]
[doc('List the deployment-scripts on a resource group.')]
az-ds-ls:
  RG="$(az group list \
  | jq --raw-output '.[].name' \
  | fzf --preview 'az deployment-scripts list --output table --resource-group {}' \
  )" && \
  az deployment-scripts list --resource-group "${RG}" --output 'table'

[group('deployment-scripts')]
[group('azure')]
[doc('List the deployment-scripts on a resource group.')]
az-ds-desc:
  RG="$(az group list \
  | jq --raw-output '.[].name' \
  | fzf --preview 'az deployment-scripts list --output table --resource-group {}' \
  )" && \
  DS="$(az deployment-scripts list \
    --output 'json' \
    --resource-group "${RG}" \
  | jq --raw-output '.[].name' \
  | fzf \
  )" && \
  az deployment-scripts show \
    --name "${DS}" \
    --output 'json' \
    --resource-group "${RG}" \
  | $"$PAGER"

[group('deployment-scripts')]
[group('azure')]
[doc('List the deployment-scripts on a resource group.')]
az-ds-cat:
  RG="$(az group list \
  | jq --raw-output '.[].name' \
  | fzf --preview 'az deployment-scripts list --output table --resource-group {}' \
  )" && \
  DS="$(az deployment-scripts list \
    --output 'json' \
    --resource-group "${RG}" \
  | jq --raw-output '.[].name' \
  | fzf \
  )" && \
  az deployment-scripts show \
    --name "${DS}" \
    --output 'json' \
    --resource-group "${RG}" \
  | jq --raw-output '.scriptContent' \
  | "$PAGER"

[group('deployment-scripts')]
[group('azure')]
[doc('List the deployment-scripts logs on a resource group.')]
az-ds-log:
  RG="$(az group list \
  | jq --raw-output '.[].name' \
  | fzf --preview 'az deployment-scripts list --output table --resource-group {}' \
  )" && \
  DS="$(az deployment-scripts list \
    --output 'json' \
    --resource-group "${RG}" \
  | jq --raw-output '.[].name' \
  | fzf \
  )" && \
  az deployment-scripts show-log \
    --name "${DS}" \
    --output 'json' \
    --resource-group "${RG}" \
  | jq --raw-output '.value[].log' \
  | hl
