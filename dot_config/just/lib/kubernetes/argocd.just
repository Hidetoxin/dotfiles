[doc('Synchronize app on `argocd`.')]
[group('argocd')]
[group('k8s')]
argocd-sync:
    APP_NAME="$( \
        argocd app list | \
        sed '1d' | \
        awk '{print $1}' | \
        fzf \
            --query 'argocd/' \
            --header 'Choose an `argo` application' \
            --prompt 'argo app  ' \
            --preview 'argocd app get {}' \
    )" && \
    argocd app sync "${APP_NAME}"

[doc('List app resources on `argocd`.')]
[group('argocd')]
[group('k8s')]
argo-ls-res:
    APP_NAME="$( \
        argocd app list | \
        sed '1d' | \
        awk '{print $1}' | \
        fzf \
            --query 'argocd/' \
            --header 'Choose an `argo` application' \
            --prompt 'argo app  ' \
            --preview 'argocd app get {}' \
    )" && \
    argocd app resources "${APP_NAME}"

# vim: et ts=4 sts=4 sw=4 syntax=just
