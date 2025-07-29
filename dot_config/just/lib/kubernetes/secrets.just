[group('k8s')]
[group('secrets')]
[doc('Get and decode all the secrets in the current `k8s` namespace')]
k8s-get-secrets:
  SECRET_NAME="$(kubectl get secrets --no-headers \
    | awk '{print $1}' \
    | fzf --preview "kubectl get secret {} -o json | jq -r '.data | map_values(@base64d)'" \
  )" && \
  kubectl get secret "${SECRET_NAME}" \
    --namespace '{{ k8s_ns }}' \
    --output 'json' \
  | jq '.data | map_values(@base64d)'
