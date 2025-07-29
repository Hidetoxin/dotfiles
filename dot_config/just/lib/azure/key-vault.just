[group('kv')]
[group('azure')]
[doc('Show the current subscription `kv`s.')]
az-kv-ls NAME='':
  az keyvault list --output 'json' \
   | jq --raw-output '.[] | "\(.name) | \(.resourceGroup)"' \
   | fzf \
      --query '{{ NAME }}' \
      --preview 'az keyvault show --name "$(echo {} | awk "{print \$1}")" --resource-group "$(echo {} | awk "{print \$3}")"'

[group('kv')]
[group('azure')]
[doc('List secrets from the current subscription `kv`s.')]
az-kv-sec-ls:
  KV="$(az keyvault list --output 'json' \
   | jq --raw-output '.[] | "\(.name) | \(.resourceGroup)"' \
   | fzf \
      --preview 'az keyvault show --name "$(echo {} | awk "{print \$1}")" --resource-group "$(echo {} | awk "{print \$3}")"' \
  )" && \
  KV="$(echo "${KV}" | awk '{print $1}')" && \
  az keyvault secret list --output 'json' --vault-name "${KV}" \
    | jq --raw-output '.[].name' \
    | fzf --preview 'az keyvault secret show --name {} --vault-name "${KV}" --output table'

[group('kv')]
[group('azure')]
[doc('Get a secret from the current subscription `kv`s.')]
az-kv-sec-get:
  KV="$(az keyvault list --output 'json' \
   | jq --raw-output '.[] | "\(.name) | \(.resourceGroup)"' \
   | fzf \
      --preview 'az keyvault show --name "$(echo {} | awk "{print \$1}")" --resource-group "$(echo {} | awk "{print \$3}")"' \
  )" && \
  KV="$(echo "${KV}" | awk '{print $1}')" && \
  SEC="$(az keyvault secret list --output 'json' --vault-name "${KV}" \
    | jq --raw-output '.[].name' \
    | fzf --preview 'az keyvault secret show --name {} --vault-name "${KV}" --output table' \
  )" && \
  az keyvault secret show --name "${SEC}" --vault-name "${KV}" --output 'table'
