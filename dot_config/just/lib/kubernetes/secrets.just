[doc('Get and decode all the secrets in the current `k8s` namespace.')]
[group('k8s')]
[group('secrets')]
k8s-get-secrets:
    SECRET_NAME="$( \
        kubectl get secrets --no-headers | \
        awk '{print $1}' | \
        fzf \
            --header 'Choose a `k8s` secret name' \
            --prompt 'k8s secret  ' \
            --preview "kubectl get secret {} -o json | jq -r '.data | map_values(@base64d)'" \
    )" && \
    kubectl get secret "${SECRET_NAME}" \
        --output 'json' |\
    jq '.data | map_values(@base64d)'

# vim: et ts=4 sts=4 sw=4 syntax=just
