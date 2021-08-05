
// Kangroo Problem
// https://www.hackerrank.com/challenges/kangaroo/problem?isFullScreen=false

import Foundation

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

kangaroo(x1: 0, v1: 3, x2: 4, v2: 2)
kangaroo(x1: 0, v1: 2, x2: 5, v2: 3)
