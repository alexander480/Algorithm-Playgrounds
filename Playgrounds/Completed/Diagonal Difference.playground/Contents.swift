
// https://www.hackerrank.com/challenges/diagonal-difference/problem

import Foundation

/*
 * Complete the 'diagonalDifference' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts 2D_INTEGER_ARRAY arr as parameter.
 */

func diagonalDifference(arr: [[Int]]) -> Int {
    let arrLength = arr[0].count - 1
    
    let leftSum = getDiagonalSum(matrix: arr, arrLength: arrLength, isLeftToRight: true)
    let rightSum = getDiagonalSum(matrix: arr, arrLength: arrLength, isLeftToRight: false)
    
    let result = abs(leftSum - rightSum)
    print(result)
    
    return result
}

func getDiagonalSum(matrix: [[Int]], arrLength: Int, isLeftToRight: Bool) -> Int {
    var result = 0
    
    if isLeftToRight {
        var row = 0
        for arr in matrix {
            result += arr[row]
            row += 1
        }
    }
    else {
        var rowsLeft = arrLength
        for arr in matrix {
            result += arr[rowsLeft]
            rowsLeft -= 1
        }
    }
    
    return result
}
