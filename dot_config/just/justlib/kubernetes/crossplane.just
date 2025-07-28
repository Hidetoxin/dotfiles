[group('k8s')]
[group('crossplane')]
[doc('Get the `crossplane` providers')]
crossplane-provs:
  kubectl get providerconfig --namespace 'crossplane' | rg '{{ app_name }}'

[group('k8s')]
[group('logs')]
[group('crossplane')]
[doc('Get the `crossplane` resource providers logs')]
crossplane-provs-res-logs:
  POD_ID="$(kubectl get pods --namespace 'crossplane' \
    | sed '1d' \
    | awk '{print $1}' \
    | fzf --preview "kubectl describe pod {} --namespace 'crossplane'" \
  )" && \
  kubectl logs "${POD_ID}" --namespace 'crossplane' \
    | hl --level='i' --filter 'resourceName~={{ app_name }}'
