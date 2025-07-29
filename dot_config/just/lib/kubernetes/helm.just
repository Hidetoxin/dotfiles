[group('helm')]
[doc('Lint and render the `helm` templates for the chart')]
helm-render:
  helm lint '{{ justfile_directory() }}' && \
  helm template --values "$(ls -1 values*.yaml | fzf)" '{{ justfile_directory() }}' \
    || bat --language 'yaml'

[group('k8s')]
[group('helm')]
[doc('Update and build the `helm` dependencies')]
helm-update:
  [ "$(scutil --dns | rg --regexp='corp.collectors.com' | wc -l)" -gt 0 ] && \
  helm dependency update && \
  helm dependency build || \
  echo 'You need to be connected to the `VPN` to be able to run this command.'
