import Foundation

func solution(_ s:String) -> [Int] {
    var result: [Int] = [0, 0]
    var str = s
    
    while str != "1" {
        var strList = str.map {String($0)}
        var nonZeroList = strList.filter {$0 == "1"}
        let zeroCount = strList.count - nonZeroList.count
        str = String(nonZeroList.count, radix: 2)
        result[0] += 1
        result[1] += zeroCount
    }
    
    return result
}
