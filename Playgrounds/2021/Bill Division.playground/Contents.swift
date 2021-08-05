
// Bill Division
// Hackerrank
// -------------------

import Foundation

// MARK: Solution
// -------------------

func bonAppetit(bill: [Int], k: Int, b: Int) -> String {
    // Parameter Definitions
    // -------------------------
    // bill: An array of integers, each representing the price of an item on the bill.
    // k: An integer representing the index of an item not to be charged to Anna.
    // b: An integer representing the amount of money charged to Anna.
    // -------------------------
    
    let billTotal = bill.reduce(0, +)
    let annaShare = ((billTotal - bill[k]) / 2)
    
    if (b == annaShare) { return "Bon Appetit" }
    else { return "\(b - annaShare)" }
}

// MARK: Tests
// -------------------

let testBills = [[3, 10, 2, 9], [3, 10, 2, 9]]
let testExclusions = [1, 1]
let testCharges = [12, 7]

let testAnswers = ["5", "Bon Appetit"]

for i in 0...(testAnswers.count - 1) {
    let answer = testAnswers[i]
    
    let bill = testBills[i]
    let k = testExclusions[i]
    let b = testCharges[i]
    
    let solution = bonAppetit(bill: bill, k: k, b: b)
    
    if (solution == answer) { print("[PASS]") }
    else { print("[FAIL]") }
}
