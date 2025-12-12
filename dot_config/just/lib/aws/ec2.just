[doc('List all security groups')]
[group('aws')]
[group('ec2')]
ls-sec-groups NAME:
    aws ec2 describe-security-groups \
        --query "SecurityGroups[].[VpcId, GroupId, GroupName]" \
        --output 'text' | \
    rg '{{ NAME }}'

# vim: et ts=4 sts=4 sw=4 syntax=just
