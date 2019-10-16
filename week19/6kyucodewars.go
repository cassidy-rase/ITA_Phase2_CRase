package kata

import (
  "strconv"
  "strings"
)

func DigitalRoot(n int) int {
  // ...
    loop := true
    total := 0
    numberInLoop := n
    for loop {
        toString := strconv.Itoa(numberInLoop)
        toArray := strings.Split(toString, "")
        for i := 0; i < len(toArray); i++ {
            num, _ := strconv.Atoi(toArray[i])
            total = total + num
        }
        if total < 10 {
            loop = false
        }
        numberInLoop = total
        total = 0
    }
    return numberInLoop
}