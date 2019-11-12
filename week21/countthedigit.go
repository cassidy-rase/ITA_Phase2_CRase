package kata

import "strings"
import "strconv"

func NbDig(n int, d int) int {
	c := 0
	for i := 0; i <= n; i++ {
		c += strings.Count(strconv.Itoa(i*i), strconv.Itoa(d))
	}

	return c

}
