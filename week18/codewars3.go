package kata

func century(year int) int {
	//if the remainder of the year / 100 is 0, return that. otherwise, return year / 100 + 1 (i.e.) 1500/100=15. 15+1=16
	if year%100 == 0 {
		return year / 100
	} else {
		return year/100 + 1
	}
	//  return
}
