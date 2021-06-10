# vim: syntax=zsh

# DISPLAYS STATIC ON THE TERMINAL
static() {
  P=( " " █ ░ ▒ ▓ )
  while :; do
    printf "\e[$[RANDOM%LINES+1];$[RANDOM%COLUMNS+1]f${P[$RANDOM%5]}"
  done | lolcat
}

# USE AWS-VAULT TO FETCH AWS KEYS VIA SSO
sso () {
  PROFILE="$(                             \
    rg "\[" "$XDG_CONFIG_HOME/aws/config" \
    | awk '{print $2 }'                   \
    | sed 's/]//g'                        \
    | sort -u                             \
    | fzf                                 \
  )"
  if [ -n "$PROFILE" ]; then
    eval "$(env | rg AWS_ | sed '/AWS_VAULT_BACKEND/d; s/=.*//g; s/^/unset /g')" && \
      eval "$(aws-vault exec $PROFILE --no-session -- env | rg AWS_ | sed 's/^/export /g')"
  fi
}

# USE AWSUME TO FETCH KEYS FROM AWS CREDENTIALS FILE
key () {
  PROFILE="$(                                  \
    rg "\[" "$XDG_CONFIG_HOME/aws/credentials" \
    | sed 's/\[//g; s/\]//g'                   \
    | sort -u                                  \
    | fzf                                      \
  )"
  if [ -n "$PROFILE" ]; then
    . awsume -s "$PROFILE"
  fi
}

# USE SSM TO LOGIN INTO AN AWS EC2 INSTNANCE
ssm () {
  F="Name=instance-state-name,Values=running"
  Q="Reservations[*].Instances[*].{Id:InstanceId,Name:Tags[?Key=='Name']|[0].Value,Status:State.Name}"
  I="$(aws ec2 describe-instances --query "$Q" --filters "$F" --output table)"
  ID="$(sed '1,5d; $d; s/\|/ /g; s/^ *//g' <<< "$I" | fzf | awk '{print $1}')"
  if [ -n "$PROFILE" ]; then
    aws ssm start-session --target "$ID"
  fi
}
