import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    // write your code in Swift 4.2.1 (Linux)
    var result = Array(repeating: 0, count: A.count)

    for i in 0..<A.count {
        let newIndex = (i + K) % (A.count)
        result[newIndex] = A[i]
    }

    return result
}
