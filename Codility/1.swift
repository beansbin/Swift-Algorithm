import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ N : Int) -> Int {
    let binaryString = String(N, radix: 2)
    let binaryList = binaryString.map {String($0)}

    var isStart = false
    var count = 0
    var result = 0
    for i in 0..<binaryList.count {
        if isStart && binaryList[i] == "0" {
            count += 1
        } else if isStart && binaryList[i] == "1" {
            if count > result {
                result = count
            }
            count = 0
        } else if binaryList[i] == "1" {
            isStart = true
        }
    }

    return result
}
