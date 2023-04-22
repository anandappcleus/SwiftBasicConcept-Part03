import UIKit

//MARK: - Higher Order Function

//MARK: - Map And Numbers

/*
 This function performs an operation on all the elements of a collection and returns a new collection with the results of the operation on the original elements.
 */


let numbers = [2, 5, 3, 9, 15, 12, 8, 17, 20, 11]

var doubled = [Int]()

for num in numbers {
    doubled.append(num * 2)
}

print(doubled)

//let res1 = numbers.map { val in
//    return val * 2
//}

print(numbers.map({$0 * 2 }))

//print(res1)

let res2 = numbers.map({$0 * 2})

//print(res2)





//MARK: - Map And Dictionaries

var info = [String: String]()
info["name"] = "avi"
info["city"] = "bengaluru"
info["job"] = "developer"
info["hobby"] = "computer games"

for (key,val) in info {
    print(key,val)
}

let dic1 = info.map { (key,val) in
   // print(key,val)
}

let dicres2 = info.map({$0.0})
print(dicres2)

let dicres3 = info.map({$0.1})

print(dicres3)

let dicres4 = info.map({$0.0})
//print(dicres4)

let dicres5 = info.map({$0.1})
//print(dicres5)


//MARK: - Map And Custom Types

struct Person {
    let fname: String
    let lname: String
    let age: Int
    let sub: String?
}


func getPersonDetail() -> [Person] {
    return [Person(fname: "anand", lname: "avishek", age: 30, sub: nil),Person(fname: "anand1", lname: "avishek1", age: 31, sub: nil)]
}

let ages = getPersonDetail().map({$0.age})
print(ages)




//MARK: - CompactMap

/*
 compactMap function is pretty much similar to map, with a great difference though; the resulting array does not contain any nil values.
 */

let numbersWithNil = [5, 15, nil, 3, 9, 12, nil, nil, 17, nil]

//let result1 = numbersWithNil.compactMap({$0 != nil ? $0! * 2 : nil})

print(numbersWithNil.map({$0}))
print(numbersWithNil.compactMap({$0}))


let result2 = numbersWithNil.compactMap { val in
    return val != nil ? val! * 2 : nil
}
//print(result2)






//MARK: - FlatMap

/*
 flatMap is useful when there are collections inside collections, and we want to merge them into one single collection.
 */

let marks = [[3, 4, 5], [2, 5, 3], [1, 2, 2], [5, 5, 4], [3, 5, 3]]

//let singleArr =  Set(marks.flatMap({$0}).filter({$0 > 3}).sorted())
let singleArr =  marks.flatMap({$0})
print(singleArr)



//MARK: - Filter

/*
 filter higher order function is one of the most useful among all and it can be proved a great tool when used. As its name suggests, its purpose is to filter the elements of a collection based on a condition and produce a new one containing only those elements that satisfy the condition.
 */

let numbersToFilter = [2, 5, 3, 9, 15, 12, 8, 17, 20, 11]

let numbertofilter = numbersToFilter.filter({$0 > 3})

print(numbertofilter)



//MARK: - Reduce

/*
 The purpose of the reduce higher order function is to produce one value from the values of all elements in a collection.
 */

let numbersForReduce: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

var result: Int = 0

for number in numbersForReduce {
    result += number
}

let sum1 = numbersForReduce.reduce(0, {a,b in
    return a + b
})

let sum2 = numbersForReduce.reduce(0, +)

let sum3 = numbersForReduce.reduce(0, {$0 + $1})



//MARK: - sorted or SortedBy
let numbersToSort = [5, 3, 8, 4, 2]

let odr1 = numbersToSort.sorted()


let odr2 = numbersToSort.sorted { a, b in
    return a < b
}

let odr3 = numbersToSort.sorted(by: <)


print(odr3)



//MARK: - ForEach

/*
 Calls the given closure on each element in the sequence in the same order as a for-inloop.
 
 Using the forEach method is distinct from a for-in loop in two important ways:

 You cannot use a break or continue statement to exit the current call of the body closure or skip subsequent calls.

 Using the return statement in the body closure will exit only from the current call to body, not from any outer scope, and won’t skip subsequent calls.


 */

let numbersToTraverse = [5, 3, 8, 4, 2]

numbersToTraverse.forEach { num in
    print(num)
}



//MARK: - Contains

/*
 Returns a Boolean value indicating whether the sequence contains an element that satisfies the given predicate.
 */

let numbersForConatins = [5, 3, 8, 4, 2]

let result1 = numbersForConatins.contains(where: {$0 == 1})
print(result1)



//MARK: - RemoveAll

/*
 The higher-order function removeAll(where:) allows us to remove elements from a sequence that meet certain conditions:
 */

var numbersToRemove: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

 numbersToRemove.removeAll(where: { $0 % 2 == 0 })
print(numbersToRemove)

var phrase = "The rain in Spain stays mainly in the plain."

let vowels: Set<Character> = ["a", "e", "i", "o", "u"]

phrase.removeAll(where: {vowels.contains($0)})

print(phrase)

//MARK: - HOF Chaining

let numbersForChaining: [[Int?]] = [[1, 3, 6, 2,nil], [2, 5, 7,nil], [1, 3,nil]]

let res = numbersForChaining
    .flatMap({$0})
    .compactMap({$0})
    .filter({$0 > 2})
    .reduce(0, {$0 + $1})

print(res)

