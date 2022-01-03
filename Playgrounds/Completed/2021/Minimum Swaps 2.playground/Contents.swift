
import Foundation

// MARK: Solution

func minimumSwaps(arr: [Int]) -> Int {
	var tempArr = arr
	var swapCount = 0
	
	for idx in 0..<tempArr.count {
		while idx != tempArr[idx] - 1 {
			tempArr.swapAt(idx, tempArr[idx] - 1)
			swapCount += 1
		}
	}
	
	return swapCount
}

// MARK: Tests

let testInputs = [[7, 1, 3, 2, 4, 5, 6], [4, 3, 1, 2], [2, 3, 4, 1, 5]]
let testAnswers = [5, 3, 3]

for i in 0..<testInputs.count {
	let result = minimumSwaps(arr: testInputs[i])
	if (result == testAnswers[i]) { print("[PASS]") }
	else { print("[FAIL]") }
}
