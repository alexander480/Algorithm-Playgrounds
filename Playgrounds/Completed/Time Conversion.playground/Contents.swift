
// https://www.hackerrank.com/challenges/time-conversion/problem

import Foundation

/*
 * Complete the timeConversion function below.
 */

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
