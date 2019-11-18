// 1) Find the last element of a list.
//     Example:
//     scala> last(List(1, 1, 2, 3, 5, 8))
//     res0: Int = 8

def lastElement(list: List[Int]): Int = {
    return list.last
}
val mylist = List(1,2,3,4,5)
println(lastElement(mylist))

// 2) Find the last but one element of a list.
//     Example:
//     scala> penultimate(List(1, 1, 2, 3, 5, 8))
//     res0: Int = 5

def lastButOneElement(anotherlist: List[Int]): Int = {
    return anotherlist.last - 1
}
val mylist = List(1,2,3,4,5)
println(lastButOneElement(mylist))

// 3) Find the Kth element of a list.
//     By convention, the first element in the list is element 0.
//
//     Example:
//     scala> nth(2, List(1, 1, 2, 3, 5, 8))
//     res0: Int = 2

def kthElement(k: Int, alist: List[Int]): Int = {
    if(k >= 0){
        alist(k) 
    }else{
        throw new NoSuchElementException
    }
}

val mylist = List(1,2,3,4,5)
println(kthElement(2, mylist))

// 4) Find the number of elements of a list.
//     Example:
//     scala> length(List(1, 1, 2, 3, 5, 8))
//     res0: Int = 6

def listLength(n: List[Int]): Int = {
    return n.length
}

val  mylist = List(1,2,3,4,5)
println(listLength(mylist))

// 5) Reverse a list.
//     Example:
//     scala> reverse(List(1, 1, 2, 3, 5, 8))
//     res0: List[Int] = List(8, 5, 3, 2, 1, 1)

def reverse(n: List[Int]): List[Int] = {
    return n.reverse
}

val  mylist = List(1,2,3,4,5)
println(reverse(mylist))

// 6) Find out whether a list is a palindrome.
//     Example:
//     scala> isPalindrome(List(1, 2, 3, 2, 1))
//     res0: Boolean = true

def palindrome(n: List[Int]): Boolean = n == n.reverse

val mylist = List(1,2,3,4,5)
val palindromelist = List(1,2,3,3,2,1)
println(palindrome(mylist))
println(palindrome(palindromelist))

