
// https://www.hackerrank.com/challenges/plus-minus/problem

import Foundation

// Complete the plusMinus function below.
func plusMinus(arr: [Int]) -> Void {
    let length = arr.count
    
    var numPos = 0
    var numNeg = 0
    var numZer = 0
    
    for x in arr {
        if x > 0 { numPos += 1 }
        else if x < 0 { numNeg += 1 }
        else if x == 0 { numZer += 1 }
    }
    
    let fracPos: Float = (Float(numPos)/Float(length))
    let fracNeg: Float = (Float(numNeg)/Float(length))
    let fracZer: Float = (Float(numZer)/Float(length))
    
    print(fracPos)
    print(fracNeg)
    print(fracZer)
}
