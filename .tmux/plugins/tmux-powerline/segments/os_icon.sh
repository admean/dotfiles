run_segment() {
  case $(uname) in
    Darwin)
      OS='OSX'
      OS_ICON=$'\UF179'
      ;;
    FreeBSD)
      OS='BSD'
      OS_ICON=$'\U1F608 '
      ;;
    OpenBSD)
      OS='BSD'
      OS_ICON=$'\U1F608 '
      ;;
    DragonFly)
      OS='BSD'
      OS_ICON=$'\U1F608 '
      ;;
    Linux)
      OS='Linux'
      OS_ICON=$'\UF17C'
      ;;
    SunOS)
      OS='Solaris'
      OS_ICON=$'\UF185 '
      ;;
    *)
      OS=''
      OS_ICON=''
      ;;
  esac

  echo "$OS_ICON"
  return 0
}
