[group('k8s')]
[group('argocd')]
[doc('Synchronize app on `argocd`')]
argocd-sync:
  APP_NAME="$(argocd app list \
    | sed '1d'\
    | awk '{print $1}' \
    | fzf --query 'argocd/' --preview 'argocd app get {}' \
  )" && \
  argocd app sync "${APP_NAME}"

[group('k8s')]
[group('argocd')]
[doc('List app resources on `argocd`')]
argo-ls-res:
  APP_NAME="$(argocd app list \
    | sed '1d'\
    | awk '{print $1}' \
    | fzf --query 'argocd/' --preview 'argocd app get {}' \
  )" && \
  argocd app resources "${APP_NAME}"

