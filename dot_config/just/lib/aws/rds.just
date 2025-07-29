[group('aws')]
[group('rds')]
[doc('List `rds` clusters for the app')]
ls-rds-cluster NAME:
  aws rds describe-db-clusters \
      --query "DBClusters[?starts_with(Engine, 'aurora') && contains(DBClusterIdentifier, '{{ NAME }}')].DBClusterIdentifier" \
      --output 'json' \
    | jq --raw-output '.[]'

[group('aws')]
[group('rds')]
[doc('Describe `rds` clusters for the app')]
desc-rds-cluster NAME:
  RDS="$(aws rds describe-db-clusters \
    --query "DBClusters[?starts_with(Engine, 'aurora') && contains(DBClusterIdentifier, '{{ NAME }}')].DBClusterIdentifier" \
    --output 'json' \
  | jq --raw-output '.[]' \
  )" && \
  aws rds describe-db-clusters \
    --output 'json' \
    --db-cluster-identifier "${RDS}" \
  | fx

[group('aws')]
[group('rds')]
[doc('List `rds` instances for the app')]
ls-rds-insts NAME:
  aws rds describe-db-instances \
    --query "DBInstances[?starts_with(Engine, 'aurora') && contains(DBInstanceIdentifier, '{{ NAME }}')].DBInstanceIdentifier" \
    --output 'json' \
  | jq --raw-output '.[]'

[group('aws')]
[group('rds')]
[doc('Describe `rds` clusters instances for the app')]
desc-rds-insts NAME:
  RDS="$(aws rds describe-db-instances \
    --query "DBInstances[?starts_with(Engine, 'aurora') && contains(DBInstanceIdentifier, '{{ NAME }}')].DBInstanceIdentifier" \
    --output 'json' \
  | jq --raw-output '.[]' \
  | fzf \
  )" && \
  aws rds describe-db-instances \
    --output 'json' \
    --db-instance-identifier "${RDS}" \
  | fx
