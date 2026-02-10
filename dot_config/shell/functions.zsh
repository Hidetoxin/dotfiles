# Displays static on the terminal
static() {
  P=( " " █ ░ ▒ ▓ )
  while :; do
    printf "\e[$[RANDOM%LINES+1];$[RANDOM%COLUMNS+1]f${P[$RANDOM%5]}"
  done | lolcat
}

# Change `hostname` on `mac` depending on the computer model
myhost() {
  MAC_MODEL="$(ioreg -l | rg 'unique-model' | tr '[A-Z]' '[a-z]' | awk -F'"' '{print $4}')"

  # Set host name depending on the `mac` model
  case "${MAC_MODEL}" in

    j616cap) # MacBookPro M4 Pro Max
      MAC_NAME='mbpm4m'
      ;;

    *)
      MAC_NAME='mb'
      ;;

  esac

  sudo scutil --set HostName "${MAC_NAME}" && echo "HostName: $(scutil --get HostName)"
  sudo scutil --set ComputerName "${MAC_NAME}" && echo "ComputerName: $(scutil --get ComputerName)"
  sudo scutil --set LocalHostName "${MAC_NAME}" && echo "LocalHostName $(scutil --get LocalHostName)"

}

# vim: et ts=4 sts=4 sw=4 syntax=sh
