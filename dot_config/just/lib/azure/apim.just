[group('apim')]
[group('azure')]
[doc('List `APIM`s under a resource-group under the current subscription.')]
az-apim-ls:
  SUB="$(az account show --query 'name' --output 'tsv')" && \
  RG="$(\
    az group list \
      --query '[].name' \
      --output 'tsv' | \
    fzf \
      --query "${SUB}" \
      --prompt 'resource-group  ' \
      --preview 'az group show --resource-group {}' \
  )" && \
  az apim list \
    --output 'table' \
    --resource-group "${RG}"

[group('apim')]
[group('azure')]
[doc('List all `API`s under an `APIM` service under the current subscription.')]
az-apim-svc-ls:
  SUB="$(az account show --query 'name' --output 'tsv')" && \
  RG="$(\
    az group list \
      --query '[].name' \
      --output 'tsv' | \
    fzf \
      --query "${SUB}" \
      --prompt 'resource-group  ' \
      --preview 'az group show --resource-group {}' \
  )" && \
  SVC="$(\
    az apim list \
      --query '[].name' \
      --output 'tsv' \
      --resource-group "${RG}" | \
    fzf \
      --prompt 'apim-instances  ' \
      --preview "az apim show --name {} --resource-group ${RG}" \
  )" && \
  az apim api list \
    --query '[].{name:name, isCurrent:isCurrent, path:path, serviceUrl:serviceUrl}' \
    --output 'table' \
    --service-name "${SVC}" \
    --resource-group "${RG}"

[group('apim')]
[group('azure')]
[doc('List all `API`s operations under an `APIM` service under the current subscription.')]
az-apim-api-ls:
  SUB="$(az account show --query 'name' --output 'tsv')" && \
  RG="$(\
    az group list \
      --query '[].name' \
      --output 'tsv' | \
    fzf \
      --query "${SUB}" \
      --prompt 'resource-group  ' \
      --preview 'az group show --resource-group {}' \
  )" && \
  SVC="$(\
    az apim list \
      --query '[].name' \
      --output 'tsv' \
      --resource-group "${RG}" | \
    fzf \
      --prompt 'apim-instances  ' \
      --preview "az apim show --name {} --resource-group ${RG}" \
  )" && \
  API="$(\
    az apim api list \
      --query '[].name' \
      --output 'tsv' \
      --service-name "${SVC}" \
      --resource-group "${RG}" | \
    fzf \
      --prompt 'api-name  ' \
      --preview "az apim api show --api-id {} --service-name ${SVC} --resource-group ${RG}" \
  )" && \
  az apim api operation list \
    --api-id "${API}" \
    --output 'table' \
    --service-name "${SVC}" \
    --resource-group "${RG}"

[group('apim')]
[group('azure')]
[doc('Show an `API`s operation under an `APIM` service under the current subscription.')]
az-apim-api-desc:
  SUB="$(az account show --query 'name' --output 'tsv')" && \
  RG="$(\
    az group list \
      --query '[].name' \
      --output 'tsv' | \
    fzf \
      --query "${SUB}" \
      --prompt 'resource-group  ' \
      --preview 'az group show --resource-group {}' \
  )" && \
  SVC="$(\
    az apim list \
      --query '[].name' \
      --output 'tsv' \
      --resource-group "${RG}" | \
    fzf \
      --prompt 'apim-instances  ' \
      --preview "az apim show --name {} --resource-group ${RG}" \
  )" && \
  API="$(\
    az apim api list \
      --query '[].name' \
      --output 'tsv' \
      --service-name "${SVC}" \
      --resource-group "${RG}" | \
    fzf \
      --prompt 'api-name  ' \
      --preview "az apim api show --api-id {} --service-name ${SVC} --resource-group ${RG}" \
  )" && \
  OP="$(\
    az apim api operation list \
      --query '[].name' \
      --output 'tsv' \
      --api-id "${API}" \
      --service-name "${SVC}" \
      --resource-group "${RG}" | \
    fzf \
      --prompt 'api-operations  ' \
      --preview "az apim operation show --api-id ${API} --operation-id {} --service-name ${SVC} --resource-group ${RG}" \
  )" && \
  az apim api operation show \
    --api-id "${API}" \
    --output 'table' \
    --operation-id "${OP}" \
    --service-name "${SVC}" \
    --resource-group "${RG}"

[group('apim')]
[group('azure')]
[doc('List all `API`s products under an `APIM` service under the current subscription.')]
az-apim-prod-ls:
  SUB="$(az account show --query 'name' --output 'tsv')" && \
  RG="$(\
    az group list \
      --query '[].name' \
      --output 'tsv' | \
    fzf \
      --query "${SUB}" \
      --prompt 'resource-group  ' \
      --preview 'az group show --resource-group {}' \
  )" && \
  SVC="$(\
    az apim list \
      --query '[].name' \
      --output 'tsv' \
      --resource-group "${RG}" | \
    fzf \
      --prompt 'apim-instances  ' \
      --preview "az apim show --name {} --resource-group ${RG}" \
  )" && \
  az apim product list \
    --output 'table' \
    --query '[].{name:name, state:state, subscriptionRequired:subscriptionRequired, subscriptionsLimit:subscriptionsLimit}' \
    --service-name "${SVC}" \
    --resource-group "${RG}"

[group('apim')]
[group('azure')]
[doc('Show an `API`s product under an `APIM` service under the current subscription.')]
az-apim-prod-desc:
  SUB="$(az account show --query 'name' --output 'tsv')" && \
  RG="$(\
    az group list \
      --query '[].name' \
      --output 'tsv' | \
    fzf \
      --query "${SUB}" \
      --prompt 'resource-group  ' \
      --preview 'az group show --resource-group {}' \
  )" && \
  SVC="$(\
    az apim list \
      --query '[].name' \
      --output 'tsv' \
      --resource-group "${RG}" | \
    fzf \
      --prompt 'apim-instances  ' \
      --preview "az apim show --name {} --resource-group ${RG}" \
  )" && \
  PROD="$(\
    az apim product list \
      --query '[].name' \
      --output 'tsv' \
      --service-name "${SVC}" \
      --resource-group "${RG}" | \
    fzf \
      --prompt 'apim-product  ' \
      --preview "az apim product show --product-id {} --service-name ${SVC} --resource-group ${RG}" \
  )" && \
  az apim product show \
    --output 'table' \
    --product-id "${PROD}" \
    --service-name "${SVC}" \
    --resource-group "${RG}"
