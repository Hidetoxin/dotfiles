[doc('Update and build the `helm` dependencies')]
[group('helm')]
[group('k8s')]
helm-update:
    helm dependency update && \
    helm dependency build

# vim: et ts=4 sts=4 sw=4 syntax=just
