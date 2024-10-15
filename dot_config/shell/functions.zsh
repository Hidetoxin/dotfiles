# vim: syntax=zsh

# Displays static on the terminal
static() {
  P=( " " █ ░ ▒ ▓ )
  while :; do
    printf "\e[$[RANDOM%LINES+1];$[RANDOM%COLUMNS+1]f${P[$RANDOM%5]}"
  done | lolcat
}
