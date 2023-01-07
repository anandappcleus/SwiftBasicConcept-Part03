
import Foundation

let strArr = ["Apple","Bed","Cat"]

var itr = strArr.makeIterator()

while let val = itr.next() {
    print(val)
}



