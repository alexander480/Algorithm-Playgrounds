import Foundation
func arrayOperation(array: [Int]) -> [Int] {
    let total = array.reduce(1, *)
    var bufferArray = [Int]()
    for i in array { bufferArray.append(total/i) }
    
    return bufferArray
}
var input = [2,3,2,3]
let result = arrayOperation(array: input)

