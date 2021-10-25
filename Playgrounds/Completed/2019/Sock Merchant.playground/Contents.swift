
// https://www.hackerrank.com/challenges/sock-merchant/problem

import Foundation

// Complete the sockMerchant function below.
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
