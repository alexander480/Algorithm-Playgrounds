// ---------------------------------
// Hackerrank
// ---------------------------------
// Subarray Division
// Birthday Chocolate
// ---------------------------------

// ---------------------------------
// MARK: Solution
// ---------------------------------
// s - Input Array
// d - Required Chunk Sum
// m - Required Chunk Length
// ---------------------------------

func birthday(s: [Int], d: Int, m: Int) -> Int {
    var matchCount = 0
    
    for i in 0..<s.count {
        let endRange = (i+m)-1
        if endRange <= s.count - 1 {
            let chunkSum = s[i...endRange].reduce(0, +)
            
            if (chunkSum == d) {
                matchCount = matchCount + 1
            }
        }
    }

    return matchCount
}

// ---------------------------------
// MARK: Test
// ---------------------------------

let testArrays = [[2,2,1,3,2], [1,2,1,3,2], [1,1,1,1,1], [4]]
let testSums = [4, 3, 3, 4]
let testLengths = [2, 2, 2, 1]

let testResults = [2, 2, 0, 1]

for i in 0...(testArrays.count - 1) {
    let result = birthday(s: testArrays[i], d: testSums[i], m: testLengths[i])
    if (result == testResults[i]) { print("[PASS]") } else { print("[FAIL]") }
}
