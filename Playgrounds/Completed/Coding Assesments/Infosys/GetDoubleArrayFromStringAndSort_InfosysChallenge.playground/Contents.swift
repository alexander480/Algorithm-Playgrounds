
import Foundation
/*
func convertAndSort(input: String) -> String {
    let stringArray = input.split(separator: " ")
    //let stringArray = input.components(separatedBy: " ")
    var doubleArray = [Double]()
    
    for i in stringArray {
        if let double = Double(i) {
            doubleArray.append(double)
        }
    }

    let sortedDoubleArray = doubleArray.sorted()
    let sortedStringArray = sortedDoubleArray.map { String($0) }
    
    let finalAnswer = sortedStringArray.joined(separator: " ")

    return finalAnswer
}

convertAndSort(input: "70.920 -38.797 14.354 99.323 90.374 7.581")
*/

func formatedConvertAndSort(input: String) -> String {
    // I would normally use 'let stringArray = input.components(separatedBy: " ")' but the website's compiler was not accepting it
    
    // Creating an array from the string
    let stringArray = input.split(separator: " ")
    
    var buffer = [Double]()
    
    // Coverting the array of Strings into an array of Doubles
    for i in stringArray {
        if let double = Double(i) {
            buffer.append(double)
        }
    }
    
    // Sorting the values
    let doubleArray = buffer.sorted()
    var doubleArrayAsString = String(describing: doubleArray)
    
    // NumberFormatter used to keep the trailing 0 in 70.920
    let formatter = NumberFormatter()
    formatter.minimumFractionDigits = 3
    
    
    var stringBuffer = [String]()
    
    for d in doubleArray {
        // Converting the array of Doubles back into an array of Strings, while retaining the trailing 0s
        if let stringValue = formatter.string(for: d) {
            stringBuffer.append(stringValue)
        }
    }
    
    // Converting the array of Strings back into one single String
    let mappedStringArray = stringArray.map { String($0) }
    let finalAnswer = mappedStringArray.joined(separator: " ")
    
    return finalAnswer
}

formatedConvertAndSort(input: "70.920 -38.797 14.354 99.323 90.374 7.581")
