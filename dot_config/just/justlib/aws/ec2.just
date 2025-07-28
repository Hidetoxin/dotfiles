[group('aws')]
[group('ec2')]
[doc('List all security groups')]
ls-sec-groups NAME:
  aws ec2 describe-security-groups \
    --query "SecurityGroups[].[VpcId, GroupId, GroupName]" \
    --output 'text' \
  | rg '{{ NAME }}'
