import Foundation

// MARK: Solution
// ---------------------

func checkMagazine(magazine: [String], note: [String]) -> Bool {
	var matchingWords = magazine.filter { return note.contains($0) }
		matchingWords = Array(Set(matchingWords)) // Remove Duplicates

	return matchingWords.count == note.count
}

// MARK: Tests
// ---------------------

let testMagazines = [
	["attack", "at", "dawn"],
	["give", "me", "one", "grand", "today", "night"],
	["two", "times", "three", "is", "not", "four"],
	["ive", "got", "a", "lovely", "bunch", "of", "coconuts"]
]

let testNotes = [
	["Attack", "at", "dawn"],
	["give", "one", "grand", "today"],
	["two", "times", "two", "is", "four"],
	["ive", "got", "some", "coconuts"]
]

let testAnswers = [
	false,
	true,
	false,
	false
]

for i in 0..<testMagazines.count {
	let magazine = testMagazines[i]
	let note = testNotes[i]
	let answer = testAnswers[i]

	let solution = checkMagazine(magazine: magazine, note: note)

	if (solution == answer) {
		print("---- [#\(i) PASSED] ----")
	}
	else {
		print("---- [#\(i) FAILED] ----")
	}
}
