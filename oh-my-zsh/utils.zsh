alias open="xdg-open"
findstr () {
  find $1 | xargs grep -n -s $2
}
