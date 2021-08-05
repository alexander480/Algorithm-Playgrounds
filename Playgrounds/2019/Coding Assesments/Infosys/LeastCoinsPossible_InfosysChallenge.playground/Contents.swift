
import Foundation


func findCoins(value: Int) -> Int {
    var valueLeft = value
    var coinsUsed = 0

    while valueLeft >= 5 {
        coinsUsed += 1
        valueLeft -= 5
    }
    
    while valueLeft >= 3 {
        coinsUsed += 1
        valueLeft -= 3
    }
    
    while valueLeft > 0 {
        coinsUsed += 1
        valueLeft -= 1
    }

    return coinsUsed
}

findCoins(value: 11)

