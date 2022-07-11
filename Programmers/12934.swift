import Foundation

func solution(_ n:Int64) -> Int64 {
    var doubleNum = sqrt(Double(n))
    var intPartNum = Int64(doubleNum)

    if doubleNum - Double(intPartNum) > 0 {
        return -1
    } else {
        var result = pow(Double(intPartNum + 1), 2)
        return(Int64(result))
    }
}
