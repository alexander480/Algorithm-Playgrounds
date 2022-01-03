import Foundation

// MARK: Solution
// -----------------

func countSwaps(a: [Int]) -> Int {
	var arr = a
	var swapCount = 0
	
	// ----
	for x in 0..<arr.count {
		if (x < arr[x]) {
			
			// ----
			for y in 0..<arr.count - 1 {
				if (arr[y] > arr[y + 1]) {
					
					arr.swapAt(y, y + 1)
					swapCount += 1
				}
			}
			
		}
	}

	return swapCount
}

// MARK: Tests
// -----------------

let testArrays = [ [1, 2, 3], [3, 2, 1], [4, 2, 3, 1]]
let testAnswers = [ 0, 3, 5 ]

for i in 0..<testArrays.count {
	let input = testArrays[i]
	let answer = testAnswers[i]
	
	let swapCount = countSwaps(a: input)
	
	if (swapCount == answer) { print("---- [#\(i) PASSED] ----") }
	else { print("---- [#\(i) FAILED] ----") }
}

