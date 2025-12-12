[doc('Get the `crossplane` providers.')]
[group('crossplane')]
[group('k8s')]
crossplane-provs APP_NAME:
    kubectl get providerconfig --namespace 'crossplane' | rg '{{ APP_NAME }}'

[doc('Get the `crossplane` resource providers logs.')]
[group('crossplane')]
[group('k8s')]
[group('logs')]
crossplane-provs-res-logs APP_NAME:
    POD_ID="$( \
        kubectl get pods --namespace 'crossplane' | \
        sed '1d' | \
        awk '{print $1}' | \
        fzf \
            --header 'k8s pod  ' \
            --prompt 'Choose a `k8s` pod' \
            --preview 'kubectl describe pod {} --namespace "crossplane"' \
    )" && \
    kubectl logs "${POD_ID}" \
        --namespace 'crossplane' | \
    hl \
        --level='i' \
        --filter 'resourceName~={{ APP_NAME }}'

# vim: et ts=4 sts=4 sw=4 syntax=just
