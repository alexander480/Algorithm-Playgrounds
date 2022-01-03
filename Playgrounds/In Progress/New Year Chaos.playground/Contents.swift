
import Foundation


func minimumBribes(array: [Int]) -> String {
	var isTooChaotic = false
	var bribeCount = 0
	
	for idx in 0..<array.count {
		if idx < array[idx] - 1 {
			let distance = abs(idx.distance(to: array[idx] - 1))
			if (distance > 2) { isTooChaotic = true }
			bribeCount += distance
		}
	}
	
	let result = (isTooChaotic) ? "Too chaotic." : bribeCount.description
	return result
}
	
//	for idx in 0..<array.count {
//		let properIdx = array[idx] - 1
//
//		if (idx < properIdx) {
//			let distance = idx.distance(to: properIdx)
//			if (distance > 2) { return "Too chaotic" }
//			else { bribeCount += distance }
//		}
//	}
//
//	return bribeCount.description
// }

// minimumBribes(array: array)

// MARK: Tests

let testArrays: [[Int]] = [[1, 2, 3, 5, 4, 6, 7, 8], [4, 1, 2, 3], [2, 1, 5, 3, 4]]
let testAnswers: [String] = ["1", "Too chaotic", "Too chaotic"]

for i in 0..<testArrays.count {
	let result = minimumBribes(array: testArrays[i])
	if result == testAnswers[i] { print("[PASS]") }
	else { print("[FAIL]") }
}

