package kata

func Solution(str string) []string {
  res := []string{}
  
  for len(str) != 0 {
    if len(str) > 1 {
      res = append(res, str[0:2])
      str = str[2:]
    } else if len(str) ==1 {
      res = append(res, str[0:1] + "_")
      str = str[1:1]
    }
  }
  return res
}