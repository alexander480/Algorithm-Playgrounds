
// https://www.hackerrank.com/challenges/staircase/problem

import Foundation

// Complete the staircase function below.
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
