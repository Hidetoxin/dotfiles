[group('cognitive-services')]
[group('azure')]
[doc('List the `soft-deleted` cognitive services.')]
az-cs-ls:
  az cognitiveservices account list-deleted \
    --output 'table'

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
