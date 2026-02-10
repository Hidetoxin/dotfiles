[doc('Login to the pods on the current namespace.')]
[group('auth')]
[group('k8s')]
[group('pods')]
k8s-pod-login CMD='/bin/sh':
    POD_ID="$( \
        kubectl get pods --no-headers | \
        awk '{print $1}' | \
        fzf \
            --header 'Choose a `k8s` pod' \
            --prompt 'k8s pod  ' \
            --preview 'kubectl describe pod {}' \
    )" && \
    kubectl exec "${POD_ID}" --tty --stdin -- '{{ CMD }}'

[doc('Login to the pods on the current namespace.')]
[group('exec')]
[group('k8s')]
[group('pods')]
k8s-pod-exec CMD:
    POD_ID="$( \
        kubectl get pods --no-headers | \
        awk '{print $1}' | \
        fzf \
            --header 'Choose a `k8s` pod' \
            --prompt 'k8s pod  ' \
            --preview 'kubectl describe pod {}' \
    )" && \
    kubectl exec "${POD_ID}" --tty --stdin -- /bin/sh -c '{{ CMD }}'

[doc('Login to the pods on the current namespace.')]
[group('k8s')]
[group('logs')]
[group('pods')]
k8s-pod-logs:
    POD_ID="$( \
        kubectl get pods --no-headers | \
        awk '{print $1}' | \
        fzf \
            --header 'Choose a `k8s` pod' \
            --prompt 'k8s pod  ' \
            --preview 'kubectl describe pod {}' \
    )" && \
    kubectl logs "${POD_ID}" | hl

# vim: et ts=4 sts=4 sw=4 syntax=just
