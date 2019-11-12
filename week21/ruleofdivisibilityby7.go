package kata

func Seven(n int64) []int {
    // your code
  count := 0
	for n > 99 {
		n = n/10 - n%10*2
		count++
	}
	return []int{int(n), count}
}