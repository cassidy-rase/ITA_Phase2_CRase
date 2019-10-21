package kata

import (
	"sort"
	"strings"
)

func TwoToOne(s1 string, s2 string) string {
	result := ""

	for _, value := range s1 + s2 { // range returns index & copy of element at that index
		if !strings.Contains(result, string(value)) { // if the string DOESN'T contain value,
			result += string(value) //  ... then add it to result
		}
	}
	resultArr := strings.Split(result, "") // splits result
	sort.Strings(resultArr)                // sorts alphabetically
	return strings.Join(resultArr, "")     // turns slice back into string
}
