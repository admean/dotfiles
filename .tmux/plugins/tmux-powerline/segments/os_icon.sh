run_segment() {
  case $(uname) in
    Darwin)
      OS='OSX'
      OS_ICON=""
      ;;
    Linux)
      OS='Linux'
      OS_ICON=""
      ;;
    *)
      OS=''
      OS_ICON=''
      ;;
  esac

  echo "$OS_ICON"
  return 0
}
