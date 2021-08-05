
import Foundation

func formatedConvertAndSort(input: String) -> String {
    let stringArray = input.split(separator: " ")
    var doubleBuffer = [Double]()
    
    for s in stringArray {
        if let double = Double(s) {
            doubleBuffer.append(double)
        }
    }
    
    let doubleArray = buffer.sorted()
    var stringBuffer = [String]()
    
    for d in doubleArray {
        let string = String(describing: d)
        stringBuffer.append(string)
    }
    
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
    let mappedStringArray = stringArray.map { stringArray in String(stringArray) }
    let finalAnswer = mappedStringArray.joined(separator: " ")
    
    return finalAnswer
}

formatedConvertAndSort(input: "70.920 -38.797 14.354 99.323 90.374 7.581")
