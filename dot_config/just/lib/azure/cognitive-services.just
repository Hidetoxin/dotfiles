[doc('List the `soft-deleted` cognitive services.')]
[group('azure')]
[group('cognitive-services')]
az-cs-ls:
    az cognitiveservices account list-deleted --output 'table'

# [group('cognitive-services')]
# [group('azure')]
# [doc('Prune  the `soft-deleted` cognitive services.')]
# az-cs-prune:
#   SVC="$(\
#     az cognitiveservices account list-deleted \
#       --query '' | \
#     fzf \
#   )"
#   az cognitiveservices account purge \
#     --name "${SVC}" \
#     --resource-group "${RG}"
# vim: et ts=4 sts=4 sw=4 syntax=just
