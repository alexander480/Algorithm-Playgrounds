import Foundation

func designerPdfViewer(h: [Int], word: String) -> Int {
    let alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    var valueDict = [Character: Int]()
    for i in 0...25 { valueDict[alphabet[i]] = h[i] }
    
    let letterHeights = word.map { return valueDict[$0]! }
    
    let boxHeight = letterHeights.max()!
    let boxWidth = word.count * 1
    
    let boxArea = boxWidth * boxHeight
    
    return boxArea
}

let testArray = [1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5]
let testWord = "abc"

let testAnswer = 9

let solution = designerPdfViewer(h: testArray, word: testWord)

if (solution == testAnswer) { print("[PASS]") }
else { print("[FAIL]") }
