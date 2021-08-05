
// Apple and Orange Problem
// https://www.hackerrank.com/challenges/apple-and-orange/problem?isFullScreen=false

import Foundation

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    let houseRange = s...t
    let aTree = a
    let oTree = b

    var applesOnHouse = 0
    var orangesOnHouse = 0

    for apple in apples {
        let endPoint = aTree + apple
        if houseRange.contains(endPoint) { applesOnHouse += 1 }
    }

    for orange in oranges {
        let endPoint = oTree + orange
        if houseRange.contains(endPoint) { orangesOnHouse += 1 }
    }

    print(applesOnHouse)
    print(orangesOnHouse)
}

countApplesAndOranges(s: 2, t: 3, a: 1, b: 5, apples: [2], oranges: [-2])
