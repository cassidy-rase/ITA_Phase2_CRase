package kata

import "strings"

// did this in javascript first, realized Go has strings.Repeat built in. might love Go
func RepeatStr(repetitions int, value string) string {
	newStr := strings.Repeat(value, repetitions)
	return newStr
	return ""
}
