
// Counting Valleys
// ---------------------

import Foundation

// MARK: Solution
// ----------------

func countingValleys(steps: Int, path: String) -> Int {
    var currentElevation = 0
    var valleyCount = 0
    
    let incrementArr: [Int] = path.map {
        let increment = ($0 == "U") ? 1 : -1
        return increment
    }
    
    for i in incrementArr {
        if (currentElevation == 0) {
            currentElevation += i
            if (currentElevation < 0) {
                valleyCount += 1
            }
        }
        else {
            currentElevation += i
        }
    }
    
    return valleyCount
}

// MARK: Test
// ----------------

let testPaths = ["DDUUUUDD", "UDDDUDUU", "DDUUDDUDUUUD"]
let testAnswers = [1, 1, 2]

for i in (0...testPaths.count - 1) {
    let path = testPaths[i]
    let answer = testAnswers[i]

    let solution = countingValleys(steps: path.count, path: path)
    if (solution == answer) { print("[PASS]") } else { print("[FAIL]") }
}
