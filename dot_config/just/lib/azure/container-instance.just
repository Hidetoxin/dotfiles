[group('azure')]
[group('container-instance')]
[doc('Connect to a container instance')]
az-ci-conn CMD='/bin/sh' NAME='':
  CI="$(az resource list \
    --output 'json' \
    --resource-type 'Microsoft.containerinstance/containerGroups' \
  | jq --raw-output '.[] | "\(.name) | \(.resourceGroup)"' \
  | fzf \
      --query '{{ NAME }}' \
      --preview 'az container show --name "$(echo {} | awk "{print \$1}")" --resource-group "$(echo {} | awk "{print \$3}")"' \
  )" && \
  az container exec \
    --name "$(echo "${CI}" | awk '{print $1}')" \
    --exec-command '{{ CMD }}' \
    --resource-group "$(echo "${CI}" | awk '{print $3}')"
