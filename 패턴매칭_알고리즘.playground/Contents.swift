import UIKit
import Foundation

/*
 P : Pattern
 S : Text
 n : length of S
 m : length of P
 l : pattern matching point
 r : length of pattern matched
 */
func patternMatch(_ P: [Character], _ S: [Character],_ n:Int,_ m:Int) -> Int {
    var l = 0
    var matched = false // Pattern match status
    var cnt = 0         // Number of pattern match successful
    
    while(l <= n-m) && (!matched) {
        l = l + 1
        var r = 0
        matched = true
        
        while(r < m) && (matched) {
            matched = matched && (P[r] == S[(l+r)-1])
            if matched {
                print("Pattern Matched! : ", S[(l+r)-1])
            }
            r += 1
        }
        if matched {
            cnt += 1
        }
    }
    if cnt == 0 {
        print("Match pattern does not exist")
        l = 0
    }
    return l
}

let pattern = "poa"        // Input pattern
let pArray = Array(pattern) // Converting a string to an array
let text = "Prove the correctness of algorithm algorithm" // Input String
let sArray = Array(text)    // Converting a string to an array

print(patternMatch(pArray, sArray, sArray.count, pArray.count))
