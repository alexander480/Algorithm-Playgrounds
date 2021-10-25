
import Foundation

// --------------------------------------------
// MARK: Notes
// --------------------------------------------

// Input: 6x6 2D Array
// --------------------------------------------
//
// let arr = [
//     [ -9, -9, -9,  1,  1,  1 ],
//     [  0, -9,  0,  4,  3,  2 ],
//     [ -9, -9, -9,  1,  2,  3 ],
//     [  0,  0,  8,  6,  6,  0 ],
//     [  0,  0,  0, -2,  0,  0 ],
//     [  0,  0,  1,  2,  4,  0 ]
// ]
//
// Figure Out Possible Origin Points
// --------------------------------------------
//
// Since the hourglass is 3x3,
// the maximum starting index for rows & columns is 3
//
// (0, 0), (0, 1), (0, 2), (0, 3)
// (1, 0), (1, 1), (1, 2), (1, 3)
// (2, 0), (2, 1), (2, 2), (2, 3)
// (3, 0), (3, 1), (3, 2), (3, 3)
//
// Create Hourglass Shape From Origin
// --------------------------------------------
//     arr[origin.row][origin.column], arr[origin.row][origin.column + 1], arr[origin.row][origin.column + 2],
//                                     arr[origin.row + 1][origin.column + 1],
//	   arr[origin.row + 2][origin.column], arr[origin.row + 2][origin.column + 1], arr[origin.row + 2][origin.column + 2]
//
//
//     -9  -9  -9
//         -9
//     -9  -9  -9
//
// Calculate sum of each hour glass shape
// --------------------------------------------
// -63

// --------------------------------------------
// MARK: Solution
// --------------------------------------------

struct Origin {
	let row: Int
	let column: Int
}

struct Hourglass {
	let origin: Origin
	let array: [Int]
	let value: Int
	
	init(startingFrom origin: Origin, in matrix: [[Int]]) {
		self.origin = origin
		
		let row = origin.row
		let column = origin.column
		
		self.array = [
			matrix[origin.row][column], matrix[row][column + 1], matrix[row][column + 2],
			matrix[row + 1][column + 1],
			matrix[row + 2][column], matrix[row + 2][column + 1], matrix[row + 2][column + 2]
		]
		
		self.value = self.array.reduce(0, +)
	}
}

func hourglassSum(arr: [[Int]]) -> Int {
	var values = [Int]()
	
	for rowStart in 0...3 {
		for columnStart in 0...3 {
			let origin = Origin(row: rowStart, column: columnStart)
			let hourglass = Hourglass(startingFrom: origin, in: arr)
			values.append(hourglass.value)
		}
	}
	
	return values.max() ?? 0
}

// --------------------------------------------
// MARK: Test
// --------------------------------------------

let testInputs = [
	[
		[ -9, -9, -9,  1,  1,  1 ],
		[  0, -9,  0,  4,  3,  2 ],
		[ -9, -9, -9,  1,  2,  3 ],
		[  0,  0,  8,  6,  6,  0 ],
		[  0,  0,  0, -2,  0,  0 ],
		[  0,  0,  1,  2,  4,  0 ]
	],
	
	[
		[ 0,  0,  0,  0,  0,  0 ],
		[ 0,  0,  0,  0,  0,  0 ],
		[ 0,  0,  0,  0,  0,  0 ],
		
		[ 0,  0,  0,  0,  0,  0 ],
		[ 0,  0,  0,  0,  0,  0 ],
		[ 0,  0,  0,  0,  0,  0 ]
	]
]

let testAnswers = [28, 0]

for i in 0..<testInputs.count {
	let result = hourglassSum(arr: testInputs[i])
	if (result == testAnswers[i]) { print("[PASS]") }
	else { print("[FAIL]") }
}


