# [group('aws')]
# [group('secretsmanager')]
# [doc('List `secretsmanager` secrets')]
# ls-secrets:
#    aws secretsmanager list-secrets | jq --raw-output '.[].SecretList[].Name'
#    aws secretsmanager get-secret-value --secret-id 'DBSecret_Test'|jq -r '.SecretString'
