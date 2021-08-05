
// -------------------
// Caesar Cipher
// Hacker Rank
// -------------------

// MARK: Solution

func caesarCipher(s: String, k: Int) -> String {
    // Write your code here
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

// MARK: Tests

let testStrings = ["middle-Outz", "Always-Look-on-the-Bright-Side-of-Life"]
let testRotations = [2, 5]

let testSolutions = ["okffng-Qwvb", "Fqbfdx-Qttp-ts-ymj-Gwnlmy-Xnij-tk-Qnkj"]

for i in 0..<testStrings.count {
    let testStr = testStrings[i]
    let testRotation = testRotations[i]
    let testSolution = testSolutions[i]
    
    let result = caesarCipher(s: testStr, k: testRotation)
    if (result == testSolution) { print("[PASS]") }
    else { print("[FAIL]") }
}
