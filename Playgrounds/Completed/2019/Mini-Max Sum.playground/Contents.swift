
// https://www.hackerrank.com/challenges/mini-max-sum/problem

import Foundation

// Complete the miniMaxSum function below.
func miniMaxSum(arr: [Int]) -> Void {
    let noFirst = arr[1] + arr[2] + arr[3] + arr[4]
    let noSecond = arr[0] + arr[2] + arr[3] + arr[4]
    let noThird = arr[0] + arr[1] + arr[3] + arr[4]
    let noFourth = arr[0] + arr[1] + arr[2] + arr[4]
    let noFifth = arr[0] + arr[1] + arr[2] + arr[3]
    
    let droppedArray = [noFirst, noSecond, noThird, noFourth, noFifth]
    if let max = droppedArray.max(), let min = droppedArray.min() {
        print("\(min) \(max)")
    }
}
