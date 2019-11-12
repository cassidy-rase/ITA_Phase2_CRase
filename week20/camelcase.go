package kata

import "strings"

func CamelCase(s string) string {
	// your code here
	var g []string
	p := strings.Fields(s)

	for _, value := range p {
		g = append(g, strings.Title(value))
	}
	y := strings.Join(g, "")
	return y
}
