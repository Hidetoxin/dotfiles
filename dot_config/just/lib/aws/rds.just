[doc('List `rds` clusters for the app')]
[group('aws')]
[group('rds')]
ls-rds-cluster NAME:
    aws rds describe-db-clusters \
        --query "DBClusters[?starts_with(Engine, 'aurora') && contains(DBClusterIdentifier, '{{ NAME }}')].DBClusterIdentifier" \
        --output 'json' | \
    jq \
        --raw-output '.[]'

[doc('Describe `rds` clusters for the app')]
[group('aws')]
[group('rds')]
desc-rds-cluster NAME:
    RDS="$( \
        aws rds describe-db-clusters \
            --query "DBClusters[?starts_with(Engine, 'aurora') && contains(DBClusterIdentifier, '{{ NAME }}')].DBClusterIdentifier" \
            --output 'json' | \
        jq \
            --raw-output '.[]' \
    )" && \
    aws rds describe-db-clusters \
        --output 'json' \
        --db-cluster-identifier "${RDS}" | \
    fx

[doc('List `rds` instances for the app')]
[group('aws')]
[group('rds')]
ls-rds-insts NAME:
    aws rds describe-db-instances \
        --query "DBInstances[?starts_with(Engine, 'aurora') && contains(DBInstanceIdentifier, '{{ NAME }}')].DBInstanceIdentifier" \
        --output 'json' | \
    jq \
        --raw-output '.[]'

[doc('Describe `rds` clusters instances for the app')]
[group('aws')]
[group('rds')]
desc-rds-insts NAME:
    RDS="$( \
        aws rds describe-db-instances \
            --query "DBInstances[?starts_with(Engine, 'aurora') && contains(DBInstanceIdentifier, '{{ NAME }}')].DBInstanceIdentifier" \
            --output 'json' | \
        jq \
            --raw-output '.[]' | \
        fzf \
            --header 'Choose a db instance' \
            --prompt 'db inst  ' \
    )" && \
    aws rds describe-db-instances \
        --output 'json' \
        --db-instance-identifier "${RDS}" | \
    fx

# vim: et ts=4 sts=4 sw=4 syntax=just
