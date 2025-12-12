[doc('List all the `azure` subscriptions.')]
[group('azure')]
[group('subscription')]
az-sub-ls:
    az account list --all --output 'table'

[doc('Select an `azure` subscription.')]
[group('azure')]
[group('subscription')]
az-sub-sel:
    SUB="$(\
        az account list \
            --all \
            --query '[].name' \
            --output 'tsv' | \
        fzf \
            --header 'Choose an `azure` subscription' \
            --prompt 'subscription  ' \
            --preview 'az account show --name {}' \
    )" && \
    az account set --name "${SUB}"

[doc('Show the current `azure` subscription.')]
[group('azure')]
[group('subscription')]
az-sub-desc:
    az account show --output 'table'

# vim: et ts=4 sts=4 sw=4 syntax=just
