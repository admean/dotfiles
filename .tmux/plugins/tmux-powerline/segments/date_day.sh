# Prints the name of the current day.

DATE_DAY_ICON=$'\UF185'

run_segment() {
	date +"$DATE_DAY_ICON %a"
	return 0
}
