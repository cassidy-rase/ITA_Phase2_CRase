// Scala Assessment Test

// Create Functions to solve the following questions!

// 1) Check for Single Even:
// Write a function that takes in an integer and returns a Boolean indicating whether or not it is even. 

def isEven(n: Int): Boolean = {
    return n%2 == 0
}
println(isEven(4))
println(isEven(3))

// 2) Check for Evens in a List:
// Write a function that returns True if there is an even number inside of a List, otherwise, return False.

def evensInAList(number: List[Int]): Boolean = {
    for(num <- number){
        if(num%2 == 0){
            return true
        } 
    }
    return false
}
val evenlist = List(1,2,3)
val oddlist = List(1,3,5)
println(evensInAList(evenlist))
println(evensInAList(oddlist))

// 3) Lucky Number Seven:
// Take in a list of integers and calculate their sum. However, sevens are lucky and they should be counted twice, meaning their value is 14 for the sum. Assume the list isn't empty.

def isLucky(morenumbers: List[Int]): Int = {
    var output = 0
    for(numb <- morenumbers){
        if(numb==7){
            output = output + 14
        }else{
            output = output + numb
        }
    }
    return output
}
val anotherlist = List(3,5,7)
println(isLucky(anotherlist))

// 4) Can you balance?
// Given a non-empty list of integers, return true if there is a place to split the list so that the sum of the numbers on one side so that the sum of the numbers on onse side is equal to the sum of the numbers on the other side. For example, given the list (1,5,3,3) would return true, you can split it in the middle. Another example (7,3,4) would return true 3+4=7. Remember you just need to return the boolean, not the split index point.

def balanceCheck(mylist: List[Int]): Boolean = {
    var firsthalf = 0
    var secondhalf = 0

    secondhalf = mylist.sum
    for(i <- Range(0, mylist.length)){
        firsthalf = firsthalf + mylist(i)
        secondhalf = secondhalf - mylist(i)

        if(firsthalf == secondhalf){
            return true
        }
    }
    return false
}
val ballist = List(1,2,3,4,10)
val ballist2 = List(2,3,3,2)
val unballist = List(10,20,70)

println(balanceCheck(ballist))
println(balanceCheck(ballist2))
println(balanceCheck(unballist))

// 5) Palindrome Check
// Given a String, return a boolean indicating whether or not it is a palindrome. Try exploring methods to help you.

def palindrome(s: String): Boolean = s == s.reverse

val word = "cat"
val anotherword = "tacocat"
println(palindrome(word))
println(palindrome(anotherword))
