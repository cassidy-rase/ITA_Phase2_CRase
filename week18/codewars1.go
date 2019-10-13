package kata

func MakeNegative(x int) int {

	if x > 0 {
		return -x
	}

	if x < 0 {
		return x
	}

	return 0
}

func Check() {
	MakeNegative(5)
}
