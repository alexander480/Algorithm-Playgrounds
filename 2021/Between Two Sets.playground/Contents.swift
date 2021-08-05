// ---------------------------------
// Hackerrank
// ---------------------------------
// Between Two Sets
// ---------------------------------

// ---------------------------------
// MARK: Solution
// ---------------------------------
// a - Input Array
// b - Input Array
// ---------------------------------

func getTotalX(a: [Int], b: [Int]) -> Int {
    var matchCount = 0
    
    let aSorted = a.sorted()
    let bSorted = b.sorted()

    let aFirst = aSorted.first!, aLast = aSorted.last!
    let bFirst = bSorted.first!, bLast = bSorted.last!
    
    let minRange = (aLast < bFirst) ? aLast : bLast
    let maxRange = (aLast < bFirst) ? bFirst : aFirst
    
    let joinedArr = (aLast < bFirst) ? aSorted + bSorted : bSorted + aSorted
    for i in minRange...maxRange {
        let iMatches = joinedArr.filter { return (i % $0) == 0 || ($0 % i) == 0}
        if iMatches.count == joinedArr.count {
            matchCount = matchCount + 1
        }
    }
    
    return matchCount
}

// ---------------------------------
// MARK: Test
// ---------------------------------

let a = [100, 99, 98, 97, 96, 95, 94, 93, 92, 91]
let b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let result = getTotalX(a: a, b: b)
print(result)
