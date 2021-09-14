// Coding Challenge: I before E

import UIKit

func checkIBeforeE(_ word: String) -> Bool {
    if word.contains("cie") {
        return false
    } else if word.contains("cei") {
        return true
    } else if word.contains("ei") {
        return false
    }
    
    return true
}

checkIBeforeE("a") // => true
checkIBeforeE("zombie") // => true
checkIBeforeE("transceiver") // => true
checkIBeforeE("veil") // => false
checkIBeforeE("icier") // => false
