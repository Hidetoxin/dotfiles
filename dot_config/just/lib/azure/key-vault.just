[doc('Show the current subscription `kv`s.')]
[group('azure')]
[group('kv')]
az-kv-ls NAME='':
    KV="$( \
      az keyvault list \
          --query '[].name' \
          --output 'tsv' | \
      fzf \
          --query '{{ NAME }}' \
          --header 'Choose a keyvault to show' \
          --prompt 'keyvault  ' \
          --preview 'az keyvault show --name {}' \
    )" && \
    az keyvault secret list --output 'table' --vault-name "${KV}"

[doc('Show the current subscription `kv`s.')]
[group('azure')]
[group('kv')]
az-kv-ll:
    KV="$( \
      az keyvault list \
          --query '[].name' \
          --output 'tsv' | \
      fzf \
          --header 'Choose a keyvault' \
          --prompt 'keyvault  ' \
          --preview 'az keyvault show --name {}' \
    )" && \
    SEC="$( \
      az keyvault secret list \
          --query '[].name' \
          --output 'tsv' \
          --vault-name "${KV}" | \
      fzf \
          --header 'Choose a keyvault secret to view' \
          --prompt 'secret  ' \
          --preview "az keyvault secret show --name '{}' --vault-name '${KV}'" \
    )" && \
    az keyvault secret show \
        --name "${SEC}" \
        --output 'table' \
        --vault-name "${KV}"

[doc('Add a secret to the selected keyvault.')]
[group('azure')]
[group('kv')]
az-kv-add KEY='' VALUE='':
    KV="$( \
      az keyvault list \
          --query '[].name' \
          --output 'tsv' | \
      fzf \
          --header 'Choose a keyvault' \
          --prompt 'keyvault  ' \
          --preview 'az keyvault show --name {}' \
    )" && \
    az keyvault secret set \
        --name '{{ KEY }}' \
        --value '{{ VALUE }}' \
        --vault-name "${KV}"

# vim: et ts=4 sts=4 sw=4 syntax=just
