import Foundation

// MARK: Solution
// -------------------

func alternatingCharacters(s: String) -> Int {
	var delCount = 0
	var lastChar: Character = "C"
	
	for idx in s.indices {
		let char = s[idx]
		
		if char == lastChar {
			delCount += 1
		}
		
		lastChar = char
	}

	return delCount
}

// MARK: Tests
// -------------------
let testStrs: [String] = ["AAAA", "BBBBB", "ABABABAB", "BABABA", "AAABBB"]
let testAnswers: [Int] = [3, 4, 0, 0, 4]

for i in 0..<testStrs.count {
	let str = testStrs[i]
	let answer = testAnswers[i]
	
	let solution = alternatingCharacters(s: str)
	
	if (solution == answer) {
		print("---- [#\(i) PASSED] ----")
	}
	else {
		print("---- [#\(i) FAILED] ----")
	}
}
