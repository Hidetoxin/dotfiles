[group('azure')]
[group('vnet')]
[doc('List all `vnet`s on a subscription.')]
az-vnet-ls:
  az network vnet list --output 'table'

[group('azure')]
[group('vnet')]
[doc('Describe a `vnet` on a subscription.')]
az-vnet-desc:
  VNET="$(az network vnet list --output 'json' \
    | jq --raw-output '.[] | "\(.name) | \(.resourceGroup)"' \
    | fzf \
        --preview 'az network vnet show --name "$(echo {} | awk "{print \$1}")" --resource-group "$(echo {} | awk "{print \$3}")" --output json' \
  )" && \
  az network vnet show \
    --name "$(echo ${VNET} | awk "{print \$1}")" \
    --output 'json' \
    --resource-group "$(echo ${VNET} | awk "{print \$3}")" \
  | fx

[group('azure')]
[group('snet')]
[doc('List all `snet`s on a subscription `vnet`.')]
az-snet-ls:
  VNET="$(az network vnet list --output 'json' \
    | jq --raw-output '.[] | "\(.name) | \(.resourceGroup)"' \
    | fzf \
        --preview 'az network vnet show --name "$(echo {} | awk "{print \$1}")" --resource-group "$(echo {} | awk "{print \$3}")" --output json' \
  )" && \
  az network vnet subnet list \
    --output 'table' \
    --vnet-name "$(echo ${VNET} | awk "{print \$1}")" \
    --resource-group "$(echo ${VNET} | awk "{print \$3}")"

[group('azure')]
[group('snet')]
[doc('Describe a `snet` on a subscription `vnet`.')]
az-snet-desc:
  VNET="$(az network vnet list --output 'json' \
    | jq --raw-output '.[] | "\(.name) | \(.resourceGroup)"' \
    | fzf \
        --preview 'az network vnet show --name "$(echo {} | awk "{print \$1}")" --resource-group "$(echo {} | awk "{print \$3}")" --output json' \
  )" && \
  RG="$(echo ${VNET} | awk "{print \$3}")" && \
  VNET="$(echo ${VNET} | awk "{print \$1}")" && \
  SNET="$(az network vnet subnet list \
    --output 'json' \
    --vnet-name "${VNET}" \
    --resource-group "${RG}" \
    | jq --raw-output '.[].name' \
    | fzf --preview 'az network vnet show --name {} --resource-group "${RG}" --output json' \
  )" && \
  az network vnet show \
    --name "${VNET}" \
    --output 'json' \
    --resource-group "${RG}" \
  | fx
