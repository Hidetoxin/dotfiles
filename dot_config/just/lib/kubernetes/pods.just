[group('k8s')]
[group('pods')]
[group('auth')]
[doc('Login to the pods on the current namespace')]
k8s-pod-login:
  POD_ID="$(kubectl get pods --no-headers \
    | awk '{print $1}' \
    | fzf --preview "kubectl describe pod '{}'" \
  )" && \
  kubectl exec "${POD_ID}" --tty --stdin -- /bin/sh

[group('k8s')]
[group('pods')]
[group('exec')]
[doc('Login to the pods on the current namespace')]
k8s-pod-exec CMD:
  POD_ID="$(kubectl get pods --no-headers \
    | awk '{print $1}' \
    | fzf --preview "kubectl describe pod '{}'" \
  )" && \
  kubectl exec "${POD_ID}" --tty --stdin -- /bin/sh -c '{{ CMD }}'

[group('k8s')]
[group('pods')]
[group('logs')]
[doc('Login to the pods on the current namespace')]
k8s-pod-logs:
  POD_ID="$(kubectl get pods --no-headers \
    | awk '{print $1}' \
    | fzf --preview "kubectl describe pod '{}'" \
  )" && \
  kubectl logs "${POD_ID}" \
    | hl
