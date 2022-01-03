# Algorithm-Playgrounds
---

### Bubble Sort
	func countSwaps(a: [Int]) -> Int {
	    var arr = a
	    var swapCount = 0

	    for x in 0..<arr.count {
	        if (x < arr[x]) {
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

### Ransom Note
	func checkMagazine(magazine: [String], note: [String]) -> Bool {
	    var matchingWords = magazine.filter { return note.contains($0) }
	        matchingWords = Array(Set(matchingWords)) // Remove Duplicates

	    return matchingWords.count == note.count
	}

### Caesar Cipher
	func createDictionary(rotations: Int) -> [Character: Character] {
	    let alphabet: [Character] = Array("abcdefghijklmnopqrstuvwxyz")
	    
	    let keys: [Character] = alphabet
	    var values: [Character] = alphabet
	
	    for _ in 0..<rotations {
	        let charToAppend = values.removeFirst()
	        values.append(charToAppend)
	    }
	    
	    var dict = [Character: Character]()
	    for i in 0..<keys.count { dict[keys[i]] = values[i] }
	    
	    return dict
	}
	
	func caesarCipher(s: String, k: Int) -> String {
	    let dict = createDictionary(rotations: k)
	    
	    var result = String()
	    for char in Array(s) {
	        let charKey = Character(char.lowercased())
	        
	        if let newChar = dict[charKey] {
	            if (char.isUppercase) {
	                result.append(Character(newChar.uppercased()))
	            }
	            else {
	                result.append(newChar)
	            }
	        } else {
	            result.append(char)
	        }
	    }
	    
	    return result
	}

### Subarray Division
	func birthday(s: [Int], d: Int, m: Int) -> Int {
	    var matchCount = 0
	    
	    for i in 0..<s.count {
	        let endRange = (i+m)-1
	        if endRange <= s.count - 1 {
	            let chunkSum = s[i...endRange].reduce(0, +)
	            
	            if (chunkSum == d) {
	                matchCount = matchCount + 1
	            }
	        }
	    }
	
	    return matchCount
	}

### Counting Valleys
	func countingValleys(steps: Int, path: String) -> Int {
	    var currentElevation = 0
	    var valleyCount = 0
	    
	    let incrementArr: [Int] = path.map {
	        let increment = ($0 == "U") ? 1 : -1
	        return increment
	    }
	    
	    for i in incrementArr {
	        if (currentElevation == 0) {
	            currentElevation += i
	            if (currentElevation < 0) {
	                valleyCount += 1
	            }
	        }
	        else {
	            currentElevation += i
	        }
	    }
	    
	    return valleyCount
	}

### Between Two Sets
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

### Bill Division
	func bonAppetit(bill: [Int], k: Int, b: Int) -> String {
	    let billTotal = bill.reduce(0, +)
	    let annaShare = ((billTotal - bill[k]) / 2)
	    
	    if (b == annaShare) { return "Bon Appetit" }
	    else { return "\(b - annaShare)" }
	}

### Designer PDF Viewer
	func designerPdfViewer(h: [Int], word: String) -> Int {
	    let alphabet: [Character] = Array("abcdefghijklmnopqrstuvwxyz")
	    
	    var valueDict = [Character: Int]()
	    for i in 0...25 { valueDict[alphabet[i]] = h[i] }
	    
	    let letterHeights = word.map { return valueDict[$0]! }
	    
	    let boxHeight = letterHeights.max()!
	    let boxWidth = word.count * 1
	    
	    let boxArea = boxWidth * boxHeight
	    
	    return boxArea
	}

### ApplesAndOranges
	func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
	    let houseRange = s...t
	    let aTree = a
	    let oTree = b
	
	    var applesOnHouse = 0
	    var orangesOnHouse = 0
	
	    for apple in apples {
	        let endPoint = aTree + apple
	        if houseRange.contains(endPoint) { applesOnHouse += 1 }
	    }
	
	    for orange in oranges {
	        let endPoint = oTree + orange
	        if houseRange.contains(endPoint) { orangesOnHouse += 1 }
	    }
	
	    print(applesOnHouse)
	    print(orangesOnHouse)
	}

### Diagonal Difference
	func diagonalDifference(arr: [[Int]]) -> Int {
	    let arrLength = arr[0].count - 1
	    
	    let leftSum = getDiagonalSum(matrix: arr, arrLength: arrLength, isLeftToRight: true)
	    let rightSum = getDiagonalSum(matrix: arr, arrLength: arrLength, isLeftToRight: false)
	    
	    let result = abs(leftSum - rightSum)
	    print(result)
	    
	    return result
	}

	func getDiagonalSum(matrix: [[Int]], arrLength: Int, isLeftToRight: Bool) -> Int {
	    var result = 0
	    
	    if isLeftToRight {
	        var row = 0
	        for arr in matrix {
	            result += arr[row]
	            row += 1
	        }
	    }
	    else {
	        var rowsLeft = arrLength
	        for arr in matrix {
	            result += arr[rowsLeft]
	            rowsLeft -= 1
	        }
	    }
	    
	    return result
	}

### Grading Students
	func gradingStudents(grades: [Int]) -> [Int] {
	    var rounded = [Int]()
	    
	    for grade in grades {
	        if grade < 38 { rounded.append(grade) }
	        else {
	            let distanceFromFive = 5 - (grade % 5)
	            if distanceFromFive > 2 { rounded.append(grade) }
	            else { rounded.append(grade + distanceFromFive) }
	        }
	    }
	    print(rounded)
	    
	    return rounded
	}

### Kangaroo
	func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
	    var oneStart = x1
	    let oneSpeed = v1
	    
	    var twoStart = x2
	    let twoSpeed = v2
	
	    var i = 0
	
	    while i < 10000 {
	        if (oneStart + oneSpeed) == (twoStart + twoSpeed) {
	            return "YES"
	        }
	        else {
	            i += 1
	            oneStart += oneSpeed
	            twoStart += twoSpeed
	        }
	    }
	
	    return "NO"
	}

### Mini-Max Sum
	func miniMaxSum(arr: [Int]) -> Void {
	    let noFirst = arr[1] + arr[2] + arr[3] + arr[4]
	    let noSecond = arr[0] + arr[2] + arr[3] + arr[4]
	    let noThird = arr[0] + arr[1] + arr[3] + arr[4]
	    let noFourth = arr[0] + arr[1] + arr[2] + arr[4]
	    let noFifth = arr[0] + arr[1] + arr[2] + arr[3]
	    
	    let droppedArray = [noFirst, noSecond, noThird, noFourth, noFifth]
	    if let max = droppedArray.max(), let min = droppedArray.min() {
	        print("\(min) \(max)")
	    }
	}


### Plus Minus
	func plusMinus(arr: [Int]) -> Void {
	    let length = arr.count
	    
	    var numPos = 0
	    var numNeg = 0
	    var numZer = 0
	    
	    for x in arr {
	        if x > 0 { numPos += 1 }
	        else if x < 0 { numNeg += 1 }
	        else if x == 0 { numZer += 1 }
	    }
	    
	    let fracPos: Float = (Float(numPos)/Float(length))
	    let fracNeg: Float = (Float(numNeg)/Float(length))
	    let fracZer: Float = (Float(numZer)/Float(length))
	    
	    print(fracPos)
	    print(fracNeg)
	    print(fracZer)
	}

### Sock Merchant
	func sockMerchant(n: Int, ar: [Int]) -> Int {
	    let mapped = ar.map { ($0, 1) }
	    let dictionary = Dictionary(mapped, uniquingKeysWith: +).values
	    let filtered = dictionary.filter { $0 > 1 }
	    
	    var pairs = 0
	    for count in filtered {
	        pairs += count/2
	    }
	    
	    print(pairs)
	    
	    return pairs
	}

### Staircase
	func staircase(n: Int) -> Void {
	    var stairs = [String]()
	    
	    while stairs.count + 1 <= n {
	        let toBuild = stairs.count + 1
	        let toSpace = n - toBuild
	        
	        var stepStr = String(repeating: " ", count: toSpace)
	        stepStr.append(String(repeating: "#", count: toBuild))
	        
	        stairs.append(stepStr)
	    }
	    
	    var stepsPrinted = 0
	    
	    for step in stairs {
	        if stepsPrinted == n - 1 {
	            print(step, terminator: "")
	        }
	        else {
	            print(step)
	            stepsPrinted += 1
	        }
	    }
	}


### Time Conversion
	func convertTimeToIntArray(String: String) -> [Int] {
	    var intArray = [Int]()
	    
	    var withoutClockPeriod = String
	    withoutClockPeriod.removeLast(2)
	    
	    let strArray = withoutClockPeriod.split(separator: ":")
	    
	    for subStr in strArray { if let num = Int(subStr) { intArray.append(num) } }
	    
	    return intArray
	}
	
	func timeConversion(s: String) -> String {
	    let clockPeriod = s.suffix(2)
	    
	    if clockPeriod == "PM" {
	        var armyTime = convertTimeToIntArray(String: s)
	        
	        if s.prefix(2) != "12" { armyTime[0] += 12 }
	        
	        var strArray = [String]()
	        
	        for i in armyTime {
	            if i < 10 { strArray.append("0\(i)") }
	            else { strArray.append(String(describing: i)) }
	        }
	        
	        let finalStr = strArray.joined(separator: ":")
	        print(finalStr)
	        
	        return finalStr
	    }
	    else {
	        if s.prefix(2) == "12" {
	            var strBuffer = s
	            strBuffer.removeFirst(2)
	            strBuffer.removeLast(2)
	            
	            let finalStr = "00" + strBuffer
	            print(finalStr)
	            
	            return finalStr
	        }
	        else {
	            var strBuffer = s
	            strBuffer.removeLast(2)
	            print(strBuffer)
	            
	            return strBuffer
	        }
	    }
	}



