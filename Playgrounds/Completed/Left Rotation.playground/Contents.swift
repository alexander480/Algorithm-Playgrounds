
import Foundation

// ---------------------------
// MARK: First Solution
// ---------------------------
// O(n)
// ---------------------------

func rotateArray(array: [Int], rotations: Int) -> [Int] {
	var buffer = array
	
	for _ in 1...rotations {
		buffer.append(buffer.removeFirst())
	}
	
	return buffer
}

// ---------------------------
// MARK: Final Solution
// ---------------------------
// O(1)
// ---------------------------

extension Array {
	func rotateLeft(rotations: Int) -> [Element] {
		// handle index offset > length
		let offset = rotations % self.count
		
		// values after index offset
		let result = self[offset...] + self[..<offset]
		
		return Array(result)
	}
}

// ---------------------------
// MARK: Tests
// ---------------------------

let testArrays = [[1, 2, 3, 4, 5], [6, 7, 8, 9, 10], [2, 4, 6, 8, 10]]
let testRotations = [1, 3, 10]

let testAnswers = [[2, 3, 4, 5, 1], [9, 10, 6, 7, 8], [2, 4, 6, 8, 10]]

for i in 0..<testArrays.count {
	let result = testArrays[i].rotateLeft(rotations: testRotations[i])
	
	if result == testAnswers[i] { print("[PASS]") }
	else { print("[FAIL]") }
}



